.class Lcom/oneplus/android/server/scene/OemSceneModeController$1;
.super Landroid/app/UserSwitchObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/ivd;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/ivd;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/ivd;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneModeController$1;->this$0:Lcom/oneplus/android/server/scene/ivd;

    invoke-direct {p0}, Landroid/app/UserSwitchObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitchComplete(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/wm/wtn;->Ud()V

    return-void
.end method
