.class public interface abstract Lcom/oneplus/settings/permission/PermissionManager$Callback;
.super Ljava/lang/Object;
.source "PermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/permission/PermissionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onPermissionDataObtained(Landroid/util/GlobalPermissionState$PackagePermissionState;)V
.end method

.method public abstract onPermissionDataUpdated(I)V
.end method

.method public abstract onServiceConnected()V
.end method
