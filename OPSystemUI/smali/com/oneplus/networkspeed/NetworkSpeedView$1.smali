.class Lcom/oneplus/networkspeed/NetworkSpeedView$1;
.super Ljava/lang/Object;
.source "NetworkSpeedView.java"

# interfaces
.implements Lcom/android/systemui/keyguard/ScreenLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/networkspeed/NetworkSpeedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/networkspeed/NetworkSpeedView;


# direct methods
.method constructor <init>(Lcom/oneplus/networkspeed/NetworkSpeedView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/networkspeed/NetworkSpeedView$1;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 0

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/networkspeed/NetworkSpeedView$1;->this$0:Lcom/oneplus/networkspeed/NetworkSpeedView;

    invoke-static {p0}, Lcom/oneplus/networkspeed/NetworkSpeedView;->access$000(Lcom/oneplus/networkspeed/NetworkSpeedView;)V

    return-void
.end method
