.class Lcom/android/server/connectivity/DataConnectionStats$2;
.super Landroid/telephony/PhoneStateListener;
.source "DataConnectionStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/DataConnectionStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/DataConnectionStats;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/DataConnectionStats;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats$2;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataActivity(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$2;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0}, Lcom/android/server/connectivity/DataConnectionStats;->access$200(Lcom/android/server/connectivity/DataConnectionStats;)V

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$2;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/DataConnectionStats;->access$502(Lcom/android/server/connectivity/DataConnectionStats;I)I

    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$2;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0}, Lcom/android/server/connectivity/DataConnectionStats;->access$200(Lcom/android/server/connectivity/DataConnectionStats;)V

    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$2;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/DataConnectionStats;->access$402(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$2;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0}, Lcom/android/server/connectivity/DataConnectionStats;->access$200(Lcom/android/server/connectivity/DataConnectionStats;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$2;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/DataConnectionStats;->access$302(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    return-void
.end method
