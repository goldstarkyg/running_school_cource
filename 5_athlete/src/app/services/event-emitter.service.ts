import { Injectable, EventEmitter } from '@angular/core';
import { Subscription } from 'rxjs/internal/Subscription';

@Injectable({
  providedIn: 'root'
})
export class EventEmitterService {
  invokeNavigateUpdateFunction = new EventEmitter();
  subsVar : Subscription;

  constructor() { }
  onUpdateNavigation()
  {
    this.invokeNavigateUpdateFunction.emit();
  }
}
