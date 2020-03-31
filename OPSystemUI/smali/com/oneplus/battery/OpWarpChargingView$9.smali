.class Lcom/oneplus/battery/OpWarpChargingView$9;
.super Ljava/lang/Object;
.source "OpWarpChargingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpWarpChargingView;->preloadAnimationList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/battery/OpWarpChargingView;


# direct methods
.method constructor <init>(Lcom/oneplus/battery/OpWarpChargingView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/battery/OpWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/battery/OpWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/battery/OpWarpChargingView;->access$602(Lcom/oneplus/battery/OpWarpChargingView;Z)Z

    iget-object v0, p0, Lcom/oneplus/battery/OpWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/battery/OpWarpChargingView;->access$702(Lcom/oneplus/battery/OpWarpChargingView;Z)Z

    iget-object v0, p0, Lcom/oneplus/battery/OpWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-static {v0}, Lcom/oneplus/battery/OpWarpChargingView;->access$800(Lcom/oneplus/battery/OpWarpChargingView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/battery/OpWarpChargingView$9;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-virtual {p0}, Lcom/oneplus/battery/OpWarpChargingView;->startAnimation()V

    :cond_0
    return-void
.end method
