.class Lcom/android/server/backlight/OpBacklightManager$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backlight/OpBacklightManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# static fields
.field public static final MSG_GET_ONLINECONFIG:I


# instance fields
.field final synthetic this$0:Lcom/android/server/backlight/OpBacklightManager;


# direct methods
.method constructor <init>(Lcom/android/server/backlight/OpBacklightManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backlight/OpBacklightManager$you;->this$0:Lcom/android/server/backlight/OpBacklightManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    iget p0, p1, Landroid/os/Message;->what:I

    return-void
.end method
