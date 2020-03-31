.class Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "DataSwitchTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/DataSwitchTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyCallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/DataSwitchTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/DataSwitchTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;->this$0:Lcom/android/systemui/qs/tiles/DataSwitchTile;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;->this$0:Lcom/android/systemui/qs/tiles/DataSwitchTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->access$300(Lcom/android/systemui/qs/tiles/DataSwitchTile;)Landroid/telephony/TelephonyManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/android/systemui/qs/tiles/DataSwitchTile;->access$202(Lcom/android/systemui/qs/tiles/DataSwitchTile;Z)Z

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DataSwitchTile$MyCallStateListener;->this$0:Lcom/android/systemui/qs/tiles/DataSwitchTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    return-void
.end method
