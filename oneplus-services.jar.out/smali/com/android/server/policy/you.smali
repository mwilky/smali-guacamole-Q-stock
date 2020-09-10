.class Lcom/android/server/policy/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/kth;->Sc()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/kth;


# direct methods
.method constructor <init>(Lcom/android/server/policy/kth;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/you;->this$0:Lcom/android/server/policy/kth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string p0, "/proc/touchpanel/gesture_switch"

    const/16 v0, 0x31

    invoke-static {p0, v0}, Lcom/android/server/policy/bio;->cno(Ljava/lang/String;I)Z

    const-string p0, "DeviceKeyHandler"

    const-string v0, "in AOD mode enable gesture"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
