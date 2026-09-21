[Diagram||BPER Syncer Get Attribute Definitions|Retrieves attribute definitions|System Queries]
SELECT obj.Object_Id,
	   def.Value_Sequence_Number "-Value_Sequence_Number",
	   def.String_Value "+String_Value"
   from erw_Object obj,
        erw_Column col,
		erw_Object_Physical_Property def
   where 
		Class_Id = 7 
		and Container_Id = %Diagram_Id
		and col.Column_Id = obj.Twin_Id
		and def.Object_Id = col.Domain_Id
		and def.Physical_Property_Id = %AttDefId
   order by 1,2

[Diagram||BPER Syncer Get Parent Attribute Definitions|Retrieves parent attribute definitions|System Queries]
SELECT obj.Object_Id,
	   pdef.Value_Sequence_Number "-Value_Sequence_Number",
	   pdef.String_Value "+String_Value"
   from erw_Object obj,
        erw_Column col,
		erw_Domain dom,
		erw_Object_Physical_Property pdef
   where 
		Class_Id = 7 
		and Container_Id = %Diagram_Id
		and col.Column_Id = obj.Twin_Id
		and dom.Domain_Id = col.Domain_Id
		and pdef.Object_Id = dom.Parent_Domain_Id
		and pdef.Physical_Property_Id = %AttDefId 
   order by 1,2
