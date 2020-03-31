.class Lcom/oneplus/battery/OpWarpChargingView$10;
.super Ljava/lang/Object;
.source "OpWarpChargingView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/battery/OpWarpChargingView;->relaseAnimationList()V
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

    iput-object p1, p0, Lcom/oneplus/battery/OpWarpChargingView$10;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/battery/OpWarpChargingView$10;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/battery/OpWarpChargingView;->access$702(Lcom/oneplus/battery/OpWarpChargingView;Z)Z

    iget-object p0, p0, Lcom/oneplus/battery/OpWarpChargingView$10;->this$0:Lcom/oneplus/battery/OpWarpChargingView;

    invoke-static {p0, v1}, Lcom/oneplus/battery/OpWarpChargingView;->access$902(Lcom/oneplus/battery/OpWarpChargingView;Z)Z

    return-void
.end method
