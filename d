[1mdiff --git a/Orders/Orders.Backend/Program.cs b/Orders/Orders.Backend/Program.cs[m
[1mindex 8329e22..a2caeef 100644[m
[1m--- a/Orders/Orders.Backend/Program.cs[m
[1m+++ b/Orders/Orders.Backend/Program.cs[m
[36m@@ -13,6 +13,12 @@[m [mbuilder.Services.AddDbContext<DataContext>(x => x.UseSqlServer("name=LocalConnec[m
 [m
 var app = builder.Build();[m
 [m
[32m+[m[32mapp.UseCors(x => x[m
[32m+[m[32m    .AllowAnyMethod()[m
[32m+[m[32m    .AllowAnyHeader()[m
[32m+[m[32m    .SetIsOriginAllowed(origin => true)[m
[32m+[m[32m    .AllowCredentials());[m
[32m+[m
 // Configure the HTTP request pipeline.[m
 if (app.Environment.IsDevelopment())[m
 {[m
[1mdiff --git a/Orders/Orders.Frontend/Program.cs b/Orders/Orders.Frontend/Program.cs[m
[1mindex b87b9d7..64333f6 100644[m
[1m--- a/Orders/Orders.Frontend/Program.cs[m
[1m+++ b/Orders/Orders.Frontend/Program.cs[m
[36m@@ -8,4 +8,4 @@[m [mbuilder.RootComponents.Add<HeadOutlet>("head::after");[m
 [m
 builder.Services.AddScoped(sp => new HttpClient { BaseAddress = new Uri(builder.HostEnvironment.BaseAddress) });[m
 [m
[31m-await builder.Build().RunAsync();[m
[32m+[m[32mawait builder.Build().RunAsync();[m
\ No newline at end of file[m
