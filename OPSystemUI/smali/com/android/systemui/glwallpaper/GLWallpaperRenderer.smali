.class public interface abstract Lcom/android/systemui/glwallpaper/GLWallpaperRenderer;
.super Ljava/lang/Object;
.source "GLWallpaperRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/glwallpaper/GLWallpaperRenderer$SurfaceProxy;
    }
.end annotation


# virtual methods
.method public abstract dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract finish()V
.end method

.method public abstract onDrawFrame()V
.end method

.method public abstract onSurfaceChanged(II)V
.end method

.method public abstract onSurfaceCreated()V
.end method

.method public abstract reportSurfaceSize()Landroid/util/Size;
.end method

.method public abstract updateAmbientMode(ZJ)V
.end method

.method public abstract updateOffsets(FF)V
.end method
