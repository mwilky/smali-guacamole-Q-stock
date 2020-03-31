.class Lcom/oneplus/opzenmode/OpZenModeControllerImpl$3;
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

    iput-object p1, p0, Lcom/oneplus/opzenmode/OpZenModeControllerImpl$3;->this$0:Lcom/oneplus/opzenmode/OpZenModeControllerImpl;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/qs/GlobalSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Lcom/oneplus/opzenmode/OpZenModeControllerImpl$3;->this$0:Lcom/oneplus/opzenmode/OpZenModeControllerImpl;

    invoke-static {p0, v0}, Lcom/oneplus/opzenmode/OpZenModeControllerImpl;->access$300(Lcom/oneplus/opzenmode/OpZenModeControllerImpl;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " zenMode Chnage:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpZenModeControllerImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
