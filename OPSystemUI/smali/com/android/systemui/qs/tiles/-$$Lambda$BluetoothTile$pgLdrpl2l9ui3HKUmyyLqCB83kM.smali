.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$BluetoothTile$pgLdrpl2l9ui3HKUmyyLqCB83kM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

.field private final synthetic f$1:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/BluetoothTile;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$BluetoothTile$pgLdrpl2l9ui3HKUmyyLqCB83kM;->f$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$BluetoothTile$pgLdrpl2l9ui3HKUmyyLqCB83kM;->f$1:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$BluetoothTile$pgLdrpl2l9ui3HKUmyyLqCB83kM;->f$0:Lcom/android/systemui/qs/tiles/BluetoothTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/-$$Lambda$BluetoothTile$pgLdrpl2l9ui3HKUmyyLqCB83kM;->f$1:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/tiles/BluetoothTile;->lambda$getSecondaryLabel$2$BluetoothTile(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    return-void
.end method
