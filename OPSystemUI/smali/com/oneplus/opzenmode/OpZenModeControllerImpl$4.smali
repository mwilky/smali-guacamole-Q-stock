.class Lcom/oneplus/opzenmode/OpZenModeControllerImpl$4;
.super Lcom/android/systemui/qs/GlobalSetting;
.source "OpZenModeControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/opzenmode/OpZenModeControllerImpl;->registerListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/opzenmode/OpZenModeControllerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/opzenmode/OpZenModeControllerImpl;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/opzenmode/OpZenModeControllerImpl$4;->this$0:Lcom/oneplus/opzenmode/OpZenModeControllerImpl;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/opzenmode/OpZenModeControllerImpl$4;->this$0:Lcom/oneplus/opzenmode/OpZenModeControllerImpl;

    invoke-static {p0, p1}, Lcom/oneplus/opzenmode/OpZenModeControllerImpl;->access$400(Lcom/oneplus/opzenmode/OpZenModeControllerImpl;I)V

    return-void
.end method
