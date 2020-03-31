.class Lcom/android/systemui/glwallpaper/ImageProcessHelper$1;
.super Ljava/lang/Object;
.source "ImageProcessHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/glwallpaper/ImageProcessHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/glwallpaper/ImageProcessHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/glwallpaper/ImageProcessHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/glwallpaper/ImageProcessHelper$1;->this$0:Lcom/android/systemui/glwallpaper/ImageProcessHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/glwallpaper/ImageProcessHelper$1;->this$0:Lcom/android/systemui/glwallpaper/ImageProcessHelper;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/glwallpaper/ImageProcessHelper;->access$002(Lcom/android/systemui/glwallpaper/ImageProcessHelper;F)F

    return v1
.end method
