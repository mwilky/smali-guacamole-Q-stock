.class Lcom/oneplus/volume/OpOutputChooserDialog$8;
.super Ljava/lang/Object;
.source "OpOutputChooserDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/oneplus/volume/OpOutputChooserDialog$8;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "OpOutputChooserDialog"

    const-string v1, " CheckActiveDevice again"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/volume/OpOutputChooserDialog$8;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/volume/OpOutputChooserDialog;->access$902(Lcom/oneplus/volume/OpOutputChooserDialog;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p0, p0, Lcom/oneplus/volume/OpOutputChooserDialog$8;->this$0:Lcom/oneplus/volume/OpOutputChooserDialog;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/volume/OpOutputChooserDialog;->access$300(Lcom/oneplus/volume/OpOutputChooserDialog;Z)V

    return-void
.end method
