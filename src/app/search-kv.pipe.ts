import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'searchKVPipe'
})
export class SearchKVPipe implements PipeTransform {

  transform (value, [queryString]) {
		if (value == null) {
			return null;
		}
		console.log('transform');
		return value.filter(item=>item.broj_kvadrata.indexOf(queryString) !== -1);


	}

}
