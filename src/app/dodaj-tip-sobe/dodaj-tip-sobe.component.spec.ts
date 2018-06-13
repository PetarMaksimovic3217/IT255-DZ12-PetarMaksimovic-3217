import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { DodajTipSobeComponent } from './dodaj-tip-sobe.component';

describe('DodajTipSobeComponent', () => {
  let component: DodajTipSobeComponent;
  let fixture: ComponentFixture<DodajTipSobeComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ DodajTipSobeComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(DodajTipSobeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
