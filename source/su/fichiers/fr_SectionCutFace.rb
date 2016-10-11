### ####################################################################
#
#	 Name : SectionCutFace.rb
#
# Description : Adds Faces to Selected Section Cut
#
#      Author : TIG (c) 12/2005
#
#       Usage : "Add Section-Cut Face" - available on Context-Menu only - 
#		if a section-cut is the first selected entity.
#  
#		Dialog asks for face & edge colours and cut-width.
#		To scroll through the long list of possible SU colours use 
#		the up/down-arrow keys or type in first letter(s) of colour 
#		to jump to it - e.g. R --> Red or < --> <Default>), 
#		the face and edge are usually best the same colour & the edge 
#		width at about 4, 'medium-thin' line weight - 
#		(range is 1 to 20 if you enter < 1 = 1 and > 20 = 20).
#
#		It also asks for the cut's layer - default is first
#		'CUT-nnnnnnn' - where nnnnnnn = 'time'.  Best to leave 
#		each cut on its own layer so you can switch it off if the 
#		section-cut is not wanted 'on' in some page views...
#		The layers and colours etc are set page by page.
#		The cut's faces & edges are on Layer0 and are in a group 
#		called 'CUT-nnnnnnn', it's always on it's own own unique layer. 
#		These layers are 'on' by default: switch on/off to suit pages.
#		The cut group is added about ~0.1mm inside the cut plane 
#		so it's usually visible in the cut.  If it isn't visible 
#		then move the section plane out a tiny amount (~1mm) and 
#		the cut face should appear - alternatively you can move 
#		the cut-group itself into the view ~1mm...
#
#		The edges of the cut-group are now set to be 'hidden' - 
#		to see/edit them switch on View > Hidden Geometry.  Like all
#		faces with hidden edges, they can sometimes still be seen on 
#		adjoining faces if their colours are different.
#
#		The cut group is readily editable - if edge editing then must
#		have 'view hidden geometry' switched 'on' - double-click group 
#		to start editting and when done select away from it to close it;
#		you can adjust anything - unexpected stray edges or faces etc 
#		- occasionally 'faced' and 'open' areas will not be made as 
#		expected or required, especially in complex volumes.  
#		Also if you have several crossing section-cuts that are not 
#		'hidden' then they will intersect with each other and their 
#		'un-hidden geometry' edges will be 'visible' in non-black 
#		coloured cut faces - again you can edit the group and erase the 
#		few edges that might have resulted.  
#		You can of course also 'colour' faces individually as desired...
#
#		If the section plane moves then erase that cut group and its 
#		layer and simply remake a new cut-face to suit...
#
#		Complex models might take a few seconds to complete the cut.
#
#		The cut-face/layer is also easily undo-able in one step.
#
#		Please save your model before using this tool - rare BugSplats 
#		have happened in beta testing (v1.0) - especially with 'curved' 
#		holes ... 
#		The v1.5 methods have now eliminated all (?) stray faces, v1.2
#		seems to have eliminated all BugSplats and scrap edges are also 
#		avoided, so far... BUT...
#	
#        Type : Context Menu Tool
#
#     Version : 1.0  11/12/05	First issue - beta tester.
#		1.1  12/12/05am	Methods changed to avoid BugSplats with complex 
#						holes.  Now occasionally a few some stray edges/
#						faces appear...
#		1.2  12/12/05pm	Stray edges now removed, still occasional stray 
#						faces... Selection limited to one section-plane.
#		1.3  13/12/05am	<Default> colour added to face colour list.
#		1.4  13/12/05pm Cut-group edges are now made 'hidden' by default.
#		1.5  20/12/05	Stray face incidence stopped, new xgroup method.
#		1.6  20/12/05pm	v5+ only program error added.
#		1.7  21/12/05	Undo text corrected.
#		1.8  05/05/06	Only active entities now used, so cut-face keeps
#						inside its group.
#		1.9  09/05/06	CUT-x's layer remains 'on' in new page creation.
#   2.0  15/06/07 Cut face's visibility location glitch fixed. 
#           Layers list sorted.
#
### ####################################################################
require 'sketchup.rb'
### ####################################################################
class SectionCut
###
def SectionCut::face
### version error
if (Sketchup.version.split(".")[0].to_i<5)
     UI.beep
     UI.messagebox("Ce script ne fonctionne qu'avec SketchUp 5 et ulterieur !")
     return nil
end#if
###
   model = Sketchup.active_model
### start undo
   model.start_operation "Faces pour section" ###v1.7
   bounds = model.bounds
   entities = model.active_entities ### v1.8 ###
   ss = model.selection
   view = model.active_view
### show VCB and status info
   Sketchup::set_status_text(("Faces pour section - Parametres..." ), SB_PROMPT)
   Sketchup::set_status_text(" ", SB_VCB_LABEL)
   Sketchup::set_status_text(" ", SB_VCB_VALUE)
### dialog
   sfix = Time::now.to_i.to_s[3..-1]
   ### also used later for group name suffix
   return nil if not SectionCut.dialog sfix
### show VCB and status info
   Sketchup::set_status_text(("Faces pour section..." ), SB_PROMPT)
   Sketchup::set_status_text(" ", SB_VCB_LABEL)
   Sketchup::set_status_text(" ", SB_VCB_VALUE)
###
### get list of all extg faces NOW at start ###v1.2
extgfaces = []
for e in entities
   if e.typename == "Face"
      extgfaces.push(e)
   end #if
end #for e
### v1.2 ###
### get data
   section = ss[0]
   plane = section.get_plane
   bmin  = bounds.min
   bminx = bmin.x
   bminy = bmin.y
   bminz = bmin.z
   bmax  = bounds.max
   bmaxx = bmax.x
   bmaxy = bmax.y
   bmaxz = bmax.z
### make group
   newgroup=entities.add_group
   newgroupentities=newgroup.entities
   c1 = [bminx, bminy, bminz]
   c2 = [bmaxx, bminy, bminz]
   c3 = [bminx, bminy, bmaxz]
   c4 = [bmaxx, bminy, bmaxz]
   c5 = [bminx, bmaxy, bmaxz]
   c6 = [bmaxx, bmaxy, bmaxz]
   c7 = [bminx, bmaxy, bminz]
   c8 = [bmaxx, bmaxy, bminz]
   e1 = newgroupentities.add_edges [ c1, c2 ]
   e2 = newgroupentities.add_edges [ c3, c4 ]
   e3 = newgroupentities.add_edges [ c5, c6 ]
   e4 = newgroupentities.add_edges [ c7, c8 ]
   e5 = newgroupentities.add_edges [ c1, c3 ]
   e6 = newgroupentities.add_edges [ c2, c4 ]
   e7 = newgroupentities.add_edges [ c7, c5 ]
   e8 = newgroupentities.add_edges [ c8, c6 ]
   e9 = newgroupentities.add_edges [ c1, c7 ]
   e10 = newgroupentities.add_edges [ c3, c5 ]
   e11 = newgroupentities.add_edges [ c4, c6 ]
   e12 = newgroupentities.add_edges [ c2, c8 ]
   line1 = e1[0].line
   line2 = e2[0].line
   line3 = e3[0].line
   line4 = e4[0].line
   line5 = e5[0].line
   line6 = e6[0].line
   line7 = e7[0].line
   line8 = e8[0].line
   line9 = e9[0].line
   line10 = e10[0].line
   line11 = e11[0].line
   line12 = e12[0].line
   e1[0].erase!
   e2[0].erase!
   e3[0].erase!
   e4[0].erase!
   e5[0].erase!
   e6[0].erase!
   e7[0].erase!
   e8[0].erase!
   e9[0].erase!
   e10[0].erase!
   e11[0].erase!
   e12[0].erase!
### find intersects with plane
   p1 = Geom.intersect_line_plane line1, plane
   p2 = Geom.intersect_line_plane line2, plane
   p3 = Geom.intersect_line_plane line3, plane
   p4 = Geom.intersect_line_plane line4, plane
   p5 = Geom.intersect_line_plane line5, plane
   p6 = Geom.intersect_line_plane line6, plane
   p7 = Geom.intersect_line_plane line7, plane
   p8 = Geom.intersect_line_plane line8, plane
   p9 = Geom.intersect_line_plane line9, plane
   p10 = Geom.intersect_line_plane line10, plane
   p11 = Geom.intersect_line_plane line11, plane
   p12 = Geom.intersect_line_plane line12, plane
if p1 ### NOT z 
   e1 = newgroupentities.add_line p1,p2
   e2 = newgroupentities.add_line p2,p3
   e3 = newgroupentities.add_line p3,p4
   e4 = newgroupentities.add_line p4,p1
elsif  p5 ### in z
   e1 = newgroupentities.add_line p5,p6
   e2 = newgroupentities.add_line p6,p8
   e3 = newgroupentities.add_line p8,p7
   e4 = newgroupentities.add_line p7,p5
else
   e1 = newgroupentities.add_line p9,p10
   e2 = newgroupentities.add_line p10,p11
   e3 = newgroupentities.add_line p11,p12
   e4 = newgroupentities.add_line p12,p9
end #if p1 etc
###
   face = newgroupentities.add_face [e1,e2,e3,e4]
### we now have a suitable face at the plane...
###
### make new group for cut
cutgroup = entities.add_group
cutgroup.name= "CUT."+sfix ###so all different names
cutgroupentities = cutgroup.entities
###
### temp xgroup from all entity faces ### v1.5
### ###################################################
xgroup = entities.add_group
xgroupentities = xgroup.entities
xgroup.name= "XSgroup"
faces=[]
for entity in ss
   faces.push(entity) if entity.typename == "Face"
end#end entity
loops=[]
for face in faces
   loops.push(face.loops)
end#face
for floop in loops
 for loop in floop
   edges=loop.edges
   startends=[]
   for edge in edges
      startends.push([edge.start,edge.end])
   end#for edge
   lines=[]
   for verts in startends
      lines.push(xgroupentities.add_line(verts))
   end#for verts
   ###xgroupentities.add_face(lines)
   for line in lines
      line.find_faces
   end#for line
 end#for loop
end#for floop
faces=[]
for entity in xgroupentities
   faces.push(entity) if entity.typename == "Face"
end#end entity
### ###########################################
### now work out which is which to keep...
keptfaces = []
(faces.length-1).times do |this|
   for face in faces
    if face.valid?
      for edgeuse in face.outer_loop.edgeuses
         if not edgeuse.partners[0] ### outermost face
            keptfaces.push(face)
            faces = faces - [face]
            loops = face.loops
            for loop in loops
               for fac in faces
                  if fac.valid? and (fac.outer_loop.edges - loop.edges) == []
                     faces = faces - [fac]
                     fac.erase!### fac abutts kept face so it must be erased...
                  end #if fac
               end #for fac
            end #for loop
         end #if outermost
      end #for edgeuse
    end #if valid
   end #for face
end#times
###
### ############################################
###
### v1.1
###
### The intersect_with method is used to intersect entities, a component instance, or group
### with an entities object.
###
### entities.intersect_with recurse, transformation1, entities1, transformation2, hidden, entities2
###
### recurse - true if you want this entities object to be recursed 
###   (intersection lines will be put inside of groups and components within this entities object)
### transformation1 - the transformation for this entities object (entities2)
### entities1 - the entities (group etc) where you want the intersection lines to appear
### transformation2 - the transformation for entities1
### hidden - true if you want hidden geometry in this entities object to be used in the intersection
###   (it's false in section cuts)
### entities2 - an entities object (or an array of entities ?)
###
entities.intersect_with true, newgroup.transformation, cutgroup, cutgroup.transformation, false, newgroup
###
###xgroup.erase! ### set it back as was... ###v1.1
newgroup.erase!
###
### we now have cross section edges in 'newcutgroup'
## now - make faces...
for e in cutgroupentities
   if e.typename == "Edge"
      e.find_faces
   end
end #for e
###
### now we process the faces and loops...
###
faces = []
for f in cutgroupentities
   if f.typename == "Face"
      faces.push(f)
   end
end #for f
faces = faces.uniq
###
for face in faces
   face.reverse! if face.normal == [ plane[0], plane[1], plane[2] ] ### now all face out of cut
end #for face
###
### now work out which is which...
keptfaces = []
(faces.length-1).times do |this|
   for face in faces
    if face.valid?
      for edgeuse in face.outer_loop.edgeuses
         if not edgeuse.partners[0] ### outermost face
            keptfaces.push(face)###v2.0
            faces = faces - [face]
            loops = face.loops
            for loop in loops
               for fac in faces
                  if fac.valid? and (fac.outer_loop.edges - loop.edges) == []
                     faces = faces - [fac]
                     fac.erase!### fac abutts kept face so it must be erased...
                  end #if fac
               end #for fac
            end #for loop
         end #if outermost
      end #for edgeuse
    end #if valid
   end #for face
end # times
###
### erase any stray edges... v1.2 ### doing it x2 works best ???
(cutgroupentities.length - 1).times do |something|
 for e in cutgroupentities
   if e.typename == "Edge"
      e.erase! if not e.faces[0]
   end #if
 end #for e
end #times ###v1.2
###
### move cut into view ~0.1mm ### v2.0
vector=Geom::Vector3d.new(plane[0],plane[1],plane[2])###faces[0].normal.normalize!
tpoint=[0,0,0].offset(vector,0.1.mm)
transf = Geom::Transformation.new tpoint
cutgroup.move! transf
### v2.0
### do colours / layer
for f in cutgroupentities
   if f.typename == "Face"
      if @colour == "<Default>" ###v1.3
         f.material= nil        ###v1.3
      else                       ###v1.3
         f.material= @colour
      end #if                    ###v1.3
   end #if
   if f.typename == "Edge"      ###v1.4
         f.hidden= true         ###v1.4
   end #if                       ###v1.4
   f.layer= "Layer0"
end #for f
model.rendering_options["SectionDefaultCutColor"] = @edge
model.rendering_options["SectionCutWidth"] = @width
###
mlayers = model.layers
layers = []
mlayers.each{|layr|layers.push(layr.name)}
flag = 0
for layer in layers
   flag = 1 if layer == @layer
end #for layer
if flag == 0 ### make layer ###v2.0
   newlayer = model.layers.add @layer
   newlayer.page_behavior=(LAYER_USES_DEFAULT_VISIBILITY_ON_NEW_PAGES )###v1.9###
   newlayer.visible=true
end #if flag
###
cutgroup.layer= @layer
###
### commit undo
   model.commit_operation
### update view
   view.invalidate
end #def add
### ##############################
def SectionCut::dialog (sfix)
### get colours and layer
   model = Sketchup.active_model
   mlayers = model.layers
   alayer=model.active_layer
   model.active_layer=nil
   deflayer=model.active_layer.name
   model.active_layer=alayer
   dlayer = "CUT-"+sfix
    layers = []
     mlayers.each{|layer|layers.push(layer.name)if layer.name!=deflayer}
      layers=[dlayer,deflayer]+layers.sort!
      layers = layers.join('|')
   colours = Sketchup::Color.names.join('|')
   edges = colours ###v1.3
   colours = "<Default>|"+colours ###v1.3
###
   prompts = ["Couleur de face: ", "Couleur de ligne: ", "Epaisseur de ligne: ", "Calque: " ]
   types = [colours, edges, 1, layers]
   title = "Parametres de section"
   @colour = Sketchup::Color.names[7] if not @colour ### Black
   @edge = Sketchup::Color.names[7] if not @edge     ### Black
   @width = 4 if not @width
   @layer = dlayer ### default
   values = [@colour, @edge, @width, @layer]
   popups = [colours, edges, "", layers]
   results = inputbox( prompts, values, popups, title )
   return nil if not results
### do processing of results
   @colour = results[0]
   @edge = results[1]
   @width = results[2]
   @width = 1 if @width < 1
   @width = 20 if @width > 20
   @layer = results[3]
end #def dialog
### ##############################
def SectionCut::ok
   model = Sketchup.active_model
   ss = model.selection
   if ss[0].typename == "SectionPlane" and ss.length == 1 ###v1.2
      return true
   else
      return nil
   end
end #def ok
### ##############################
end #class SectionCut
###
### Sketchup.send_action "showRubyPanel:" ### v1.4
### context menu bits  #################################################
if( not file_loaded?("fr_SectionCutFace.rb") ) ###
   UI.add_context_menu_handler do | menu |
      if SectionCut.ok
         menu.add_separator ### this adds a seperator line
         menu.add_item("Creer des faces de section") { SectionCut.face }
      end #if ok
   end #do menu
end #if loaded
###
file_loaded("fr_SectionCutFace.rb") ###
### ####################################################################
