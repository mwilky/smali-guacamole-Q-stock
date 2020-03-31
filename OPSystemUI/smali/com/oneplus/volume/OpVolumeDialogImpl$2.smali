.class Lcom/oneplus/volume/OpVolumeDialogImpl$2;
.super Lcom/oneplus/volume/OpOutputChooserDialog;
.source "OpVolumeDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/volume/OpVolumeDialogImpl;->generateOutputChooserH()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/volume/OpVolumeDialogImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/volume/OpVolumeDialogImpl;Landroid/content/Context;Lcom/android/systemui/volume/MediaRouterWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$2;->this$0:Lcom/oneplus/volume/OpVolumeDialogImpl;

    invoke-direct {p0, p2, p3}, Lcom/oneplus/volume/OpOutputChooserDialog;-><init>(Landroid/content/Context;Lcom/android/systemui/volume/MediaRouterWrapper;)V

    return-void
.end method


# virtual methods
.method protected cleanUp()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$2;->this$0:Lcom/oneplus/volume/OpVolumeDialogImpl;

    invoke-static {v0}, Lcom/oneplus/volume/OpVolumeDialogImpl;->access$100(Lcom/oneplus/volume/OpVolumeDialogImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/volume/OpVolumeDialogImpl$2;->this$0:Lcom/oneplus/volume/OpVolumeDialogImpl;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/volume/OpVolumeDialogImpl;->mOutputChooserDialog:Lcom/oneplus/volume/OpOutputChooserDialog;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
