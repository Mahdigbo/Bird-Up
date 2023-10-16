/// @description 
#region Delta Time Handle
normal_DT = (delta_time/1000000)*global.FPS;
normal_DT = clamp(normal_DT,0.5,2);
global.DT  +=(normal_DT-global.DT)/5;
#endregion







