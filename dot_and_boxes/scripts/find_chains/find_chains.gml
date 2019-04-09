var i = 0;
var boxForNow;
var checkList = global.uncapturedBox;
var chainList = ds_list_create();
for(i=0; i < ds_list_size(checkList);i++){
	boxForNow = ds_list_find_value(checkList,i);
	 var chain = create_chain(boxForNow)
	 for(var n = 0; n < chain.chainSize;n++){
		 var itemToRemove = ds_list_find_value(chain.boxesInChain,n)
		var itemToRemoveIndex = ds_list_find_index(checkList,itemToRemove)
		ds_list_delete(checkList,itemToRemoveIndex)
	 }
	 ds_list_add(chainList,chain)
}
return chainList;