.class public Landroidx/preference/AndroidXApplication;
.super Landroid/app/Application;
.source "AndroidXApplication.java"


# static fields
.field public static mApplication:Landroid/app/Application;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sput-object p0, Landroidx/preference/AndroidXApplication;->mApplication:Landroid/app/Application;

    return-void
.end method
