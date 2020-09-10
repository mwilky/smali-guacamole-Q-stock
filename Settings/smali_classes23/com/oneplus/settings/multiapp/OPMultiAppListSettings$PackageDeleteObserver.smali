.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "OPMultiAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$packageDeleted$0$OPMultiAppListSettings$PackageDeleteObserver(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$200(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$500(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120ae3

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v2}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$500(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v5

    const v6, 0x5f45a60

    add-int/2addr v5, v6

    invoke-static {v2, v1, v4, v5, v3}, Lcom/oneplus/settings/multiapp/ShortcutUtil;->removeShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    :cond_2
    return-void
.end method

.method public packageDeleted(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackageDeleteObserver ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPMultiAppListSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oneplus/settings/multiapp/-$$Lambda$OPMultiAppListSettings$PackageDeleteObserver$q6s5mafV66dmN20pl1Ds96zV5Io;

    invoke-direct {v0, p0, p1}, Lcom/oneplus/settings/multiapp/-$$Lambda$OPMultiAppListSettings$PackageDeleteObserver$q6s5mafV66dmN20pl1Ds96zV5Io;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$PackageDeleteObserver;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
