.class Lcom/oneplus/volume/OpOutputChooserDialog$3;
.super Ljava/lang/Object;
.source "OpOutputChooserDialog.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BluetoothController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/volume/OpOutputChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/volume/OpOutputChooserDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/volume/OpOutputChooserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog$3;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothDevicesChanged()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog$3;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/volume/OpOutputChooserDialog;->access$300(Lcom/oneplus/volume/OpOutputChooserDialog;Z)V

    return-void
.end method

.method public onBluetoothStateChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog$3;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/volume/OpOutputChooserDialog;->access$300(Lcom/oneplus/volume/OpOutputChooserDialog;Z)V

    return-void
.end method
