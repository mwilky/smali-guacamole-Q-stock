.class final Lcom/android/server/am/irq$rtg;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/irq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "rtg"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/irq;


# direct methods
.method public constructor <init>(Lcom/android/server/am/irq;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/irq$rtg;->this$0:Lcom/android/server/am/irq;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    invoke-static {}, Lcom/android/server/am/irq;->access$600()Lcom/android/server/am/irq;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "event SettingsObserver onChange uri:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " |userId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x4

    invoke-static {p3, p1}, Lcom/android/server/am/irq;->tsu(ILjava/lang/String;)V

    if-eqz p2, :cond_1

    const-string p1, "oneplus_opbf_switch"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "event SettingsObserver SETTING_SWITCH onChange to:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/irq$rtg;->this$0:Lcom/android/server/am/irq;

    invoke-static {p0}, Lcom/android/server/am/irq;->gck(Lcom/android/server/am/irq;)Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/android/server/am/irq;->tsu(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/irq;->access$600()Lcom/android/server/am/irq;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/irq;->dma(Lcom/android/server/am/irq;)V

    :cond_1
    return-void
.end method
