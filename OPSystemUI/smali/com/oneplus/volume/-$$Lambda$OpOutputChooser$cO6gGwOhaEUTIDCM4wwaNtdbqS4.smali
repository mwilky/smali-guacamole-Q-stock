.class public final synthetic Lcom/oneplus/volume/-$$Lambda$OpOutputChooser$cO6gGwOhaEUTIDCM4wwaNtdbqS4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/volume/OpOutputChooser;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/volume/OpOutputChooser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/volume/-$$Lambda$OpOutputChooser$cO6gGwOhaEUTIDCM4wwaNtdbqS4;->f$0:Lcom/oneplus/volume/OpOutputChooser;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/-$$Lambda$OpOutputChooser$cO6gGwOhaEUTIDCM4wwaNtdbqS4;->f$0:Lcom/oneplus/volume/OpOutputChooser;

    invoke-virtual {p0}, Lcom/oneplus/volume/OpOutputChooser;->lambda$new$0$OpOutputChooser()Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method
