.class public interface abstract Lcom/oneplus/networkspeed/NetworkSpeedController;
.super Ljava/lang/Object;
.source "NetworkSpeedController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/oneplus/networkspeed/NetworkSpeedController$INetworkSpeedStateCallBack;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract updateConnectivity(Ljava/util/BitSet;Ljava/util/BitSet;)V
.end method
