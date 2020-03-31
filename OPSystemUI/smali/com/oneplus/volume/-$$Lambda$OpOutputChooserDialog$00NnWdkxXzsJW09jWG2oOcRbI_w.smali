.class public final synthetic Lcom/oneplus/volume/-$$Lambda$OpOutputChooserDialog$00NnWdkxXzsJW09jWG2oOcRbI_w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final synthetic f$0:Lcom/oneplus/volume/OpOutputChooserDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/volume/OpOutputChooserDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/volume/-$$Lambda$OpOutputChooserDialog$00NnWdkxXzsJW09jWG2oOcRbI_w;->f$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/-$$Lambda$OpOutputChooserDialog$00NnWdkxXzsJW09jWG2oOcRbI_w;->f$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    invoke-virtual {p0}, Lcom/oneplus/volume/OpOutputChooserDialog;->lambda$onCreate$0$OpOutputChooserDialog()Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method
