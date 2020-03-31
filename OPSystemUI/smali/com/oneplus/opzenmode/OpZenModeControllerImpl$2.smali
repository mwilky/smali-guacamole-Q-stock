.class Lcom/oneplus/opzenmode/OpZenModeControllerImpl$2;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "OpZenModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/opzenmode/OpZenModeControllerImpl;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/opzenmode/OpZenModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/opzenmode/OpZenModeControllerImpl;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/opzenmode/OpZenModeControllerImpl$2;->this$0:Lcom/oneplus/opzenmode/OpZenModeControllerImpl;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/opzenmode/OpZenModeControllerImpl$2;->this$0:Lcom/oneplus/opzenmode/OpZenModeControllerImpl;

    invoke-static {p0, p1}, Lcom/oneplus/opzenmode/OpZenModeControllerImpl;->access$200(Lcom/oneplus/opzenmode/OpZenModeControllerImpl;I)V

    return-void
.end method
