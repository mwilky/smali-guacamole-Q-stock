.class Lcom/android/server/sis/bvj;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sis/vdb;->registerSettingsCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sis/vdb;


# direct methods
.method constructor <init>(Lcom/android/server/sis/vdb;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/sis/bvj;->this$0:Lcom/android/server/sis/vdb;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/sis/bvj;->this$0:Lcom/android/server/sis/vdb;

    invoke-virtual {p0}, Lcom/android/server/sis/vdb;->Zd()V

    return-void
.end method
