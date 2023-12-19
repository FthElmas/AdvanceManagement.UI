using AdvanceManagement.UI.Service.Services;
using Microsoft.AspNetCore.Authentication.Cookies;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.DataProtection;
using Microsoft.AspNetCore.Mvc.Authorization;
using Microsoft.IdentityModel.Tokens;
using System.Text;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.
builder.Services.AddControllersWithViews();
builder.Services.AddScoped<LoginConnectionService>();
builder.Services.AddHttpClient<LoginConnectionService>(conf =>
{
    conf.BaseAddress = new Uri("http://localhost:64672/api/");
});
builder.Services.AddScoped<AdvanceConnectionService>();
builder.Services.AddHttpClient<AdvanceConnectionService>(conf =>
{
    conf.BaseAddress = new Uri("http://localhost:64672/api/");
});

builder.Services.AddScoped<AdvanceRequestStatusConnectionService>();
builder.Services.AddHttpClient<AdvanceRequestStatusConnectionService>(conf =>
{
    conf.BaseAddress = new Uri("http://localhost:64672/api/");
});

builder.Services.AddScoped<FinanceManagerConnectionService>();
builder.Services.AddHttpClient<FinanceManagerConnectionService>(conf =>
{
    conf.BaseAddress = new Uri("http://localhost:64672/api/");
});

builder.Services.AddDistributedMemoryCache();

builder.Services.AddScoped<ProjectConnectionService>();
builder.Services.AddHttpClient<ProjectConnectionService>(conf =>
{
    conf.BaseAddress = new Uri("http://localhost:64672/api/");
});

builder.Services.AddScoped<PaymentReceiptControllerService>();
builder.Services.AddHttpClient<PaymentReceiptControllerService>(conf =>
{
    conf.BaseAddress = new Uri("http://localhost:64672/api/");
});


builder.Services.AddCors(opt =>
{
    opt.AddDefaultPolicy(a => a.WithOrigins().AllowAnyHeader().AllowAnyMethod());
});
builder.Services.AddAuthentication(a =>
{
    a.DefaultAuthenticateScheme = CookieAuthenticationDefaults.AuthenticationScheme;
    a.DefaultSignInScheme = CookieAuthenticationDefaults.AuthenticationScheme;
}).AddCookie(a =>
{
    a.LoginPath = "/Login/Login";
    a.Cookie.Name = CookieAuthenticationDefaults.AuthenticationScheme;
    a.Cookie.HttpOnly = true;
});
builder.Services.AddAuthorization();
builder.Services.AddSession(opt =>
{
    opt.IdleTimeout = TimeSpan.FromMinutes(15);
    opt.Cookie.IsEssential = true;
});

builder.Services.AddScoped<AuthorizeAttribute>();
builder.Services.AddScoped<AuthorizeFilter>();

var app = builder.Build();

// Configure the HTTP request pipeline.
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Home/Error");
}
app.UseStaticFiles();

app.UseRouting();

app.UseSession();

app.UseAuthentication();
app.UseAuthorization();

app.MapControllerRoute(
    name: "default",
    pattern: "{controller=Login}/{action=Index}/{id?}");

app.Run();
