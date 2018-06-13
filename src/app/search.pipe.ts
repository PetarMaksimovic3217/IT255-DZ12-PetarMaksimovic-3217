import { Pipe, PipeTransform } from '@angular/core';

@Pipe({
  name: 'SearchPipe'
})
export class SearchPipe implements PipeTransform {

  transform(value: any, args?: any): any {
    if(!args)
     return value;
    return value.filter(item=>item.beds.indexOf(args) !== -1);
  }
}
