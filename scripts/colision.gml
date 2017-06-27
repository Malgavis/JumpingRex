if (place_meeting(x,y,object_abajo))
{
    var valor=irandom(2);

      with (object_abajo)
   {
    instance_destroy();
   }
   switch (valor)
    {
        case 0: instance_create(955, 262, object_abajo);
         break;
        case 1: instance_create(955, 262, object_medio); 
        break;
        case 2:instance_create(992, 128, object_arriba);
        break;
 
    }
}

if (place_meeting(x,y,object_medio))
{
 
    var valor1=irandom(2);

   with (object_medio)
   {
    instance_destroy();
   }
   switch (valor1)
    {
        case 1: instance_create(955, 262, object_abajo);
         break;
        case 2: instance_create(955, 262, object_medio); 
        break;
        case 0:instance_create(992, 128, object_arriba);
        break;
 
    }


}
if (place_meeting(x,y,object_arriba))
{

  var valor2=irandom(2);

   with (object_arriba)
   {
    instance_destroy();
   }
   switch (valor2)
    {
        case 2: instance_create(955, 262, object_abajo);
         break;
        case 0: instance_create(955, 262, object_medio); 
        break;
        case 1:instance_create(992, 128, object_arriba);
        break;
 
    }


}
