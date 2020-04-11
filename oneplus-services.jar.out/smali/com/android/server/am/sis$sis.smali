.class Lcom/android/server/am/sis$sis;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/sis;


# direct methods
.method public constructor <init>(Lcom/android/server/am/sis;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/sis$sis;->this$0:Lcom/android/server/am/sis;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    sget-boolean p1, Lcom/android/server/am/ire;->Ol:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/sis$sis;->this$0:Lcom/android/server/am/sis;

    invoke-static {p0}, Lcom/android/server/am/sis;->sis(Lcom/android/server/am/sis;)V

    return-void
.end method
