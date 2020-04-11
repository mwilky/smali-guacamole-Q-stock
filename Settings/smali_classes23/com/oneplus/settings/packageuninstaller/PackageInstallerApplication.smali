.class public Lcom/oneplus/settings/packageuninstaller/PackageInstallerApplication;
.super Landroid/app/Application;
.source "PackageInstallerApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {}, Landroid/content/pm/PackageItemInfo;->forceSafeLabels()V

    return-void
.end method
