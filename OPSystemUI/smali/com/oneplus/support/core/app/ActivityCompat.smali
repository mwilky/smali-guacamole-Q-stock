.class public Lcom/oneplus/support/core/app/ActivityCompat;
.super Lcom/oneplus/support/core/content/ContextCompat;
.source "ActivityCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/app/ActivityCompat$RequestPermissionsRequestCodeValidator;,
        Lcom/oneplus/support/core/app/ActivityCompat$PermissionCompatDelegate;,
        Lcom/oneplus/support/core/app/ActivityCompat$OnRequestPermissionsResultCallback;
    }
.end annotation


# static fields
.field private static sDelegate:Lcom/oneplus/support/core/app/ActivityCompat$PermissionCompatDelegate;


# direct methods
.method public static getPermissionCompatDelegate()Lcom/oneplus/support/core/app/ActivityCompat$PermissionCompatDelegate;
    .locals 1

    sget-object v0, Lcom/oneplus/support/core/app/ActivityCompat;->sDelegate:Lcom/oneplus/support/core/app/ActivityCompat$PermissionCompatDelegate;

    return-object v0
.end method
