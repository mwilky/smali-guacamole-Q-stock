.class final Lcom/android/keyguard/clock/ClockManager$AvailableClocks;
.super Ljava/lang/Object;
.source "ClockManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/clock/ClockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AvailableClocks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/ClockPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field private final mClockInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/keyguard/clock/ClockInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mClocks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/plugins/ClockPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

.field final synthetic this$0:Lcom/android/keyguard/clock/ClockManager;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/clock/ClockManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClocks:Ljava/util/Map;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClockInfo:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/clock/ClockManager;Lcom/android/keyguard/clock/ClockManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;-><init>(Lcom/android/keyguard/clock/ClockManager;)V

    return-void
.end method

.method private getClockPlugin()Lcom/android/systemui/plugins/ClockPlugin;
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    invoke-virtual {v0}, Lcom/android/keyguard/clock/ClockManager;->isDocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    invoke-static {v0}, Lcom/android/keyguard/clock/ClockManager;->access$400(Lcom/android/keyguard/clock/ClockManager;)Lcom/android/keyguard/clock/SettingsWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    invoke-static {v1}, Lcom/android/keyguard/clock/ClockManager;->access$000(Lcom/android/keyguard/clock/ClockManager;)Lcom/android/systemui/settings/CurrentUserObservable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/settings/CurrentUserObservable;->getCurrentUser()Landroidx/lifecycle/LiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/SettingsWrapper;->getDockedClockFace(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClocks:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ClockPlugin;

    if-eqz v0, :cond_1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    invoke-static {v1}, Lcom/android/keyguard/clock/ClockManager;->access$400(Lcom/android/keyguard/clock/ClockManager;)Lcom/android/keyguard/clock/SettingsWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    invoke-static {v2}, Lcom/android/keyguard/clock/ClockManager;->access$000(Lcom/android/keyguard/clock/ClockManager;)Lcom/android/systemui/settings/CurrentUserObservable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/settings/CurrentUserObservable;->getCurrentUser()Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/clock/SettingsWrapper;->getLockScreenCustomClockFace(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClocks:Ljava/util/Map;

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/plugins/ClockPlugin;

    :cond_2
    return-object v0
.end method

.method private removeClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClocks:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClockInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClockInfo:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/clock/ClockInfo;

    invoke-virtual {v1}, Lcom/android/keyguard/clock/ClockInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClockInfo:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method addClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClocks:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClockInfo:Ljava/util/List;

    invoke-static {}, Lcom/android/keyguard/clock/ClockInfo;->builder()Lcom/android/keyguard/clock/ClockInfo$Builder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockPlugin;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/clock/ClockInfo$Builder;->setName(Ljava/lang/String;)Lcom/android/keyguard/clock/ClockInfo$Builder;

    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockPlugin;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/clock/ClockInfo$Builder;->setTitle(Ljava/lang/String;)Lcom/android/keyguard/clock/ClockInfo$Builder;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/clock/ClockInfo$Builder;->setId(Ljava/lang/String;)Lcom/android/keyguard/clock/ClockInfo$Builder;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/keyguard/clock/-$$Lambda$d3U4w-CuqsezzeLGogc1fLHnUj0;

    invoke-direct {v0, p1}, Lcom/android/keyguard/clock/-$$Lambda$d3U4w-CuqsezzeLGogc1fLHnUj0;-><init>(Lcom/android/systemui/plugins/ClockPlugin;)V

    invoke-virtual {v2, v0}, Lcom/android/keyguard/clock/ClockInfo$Builder;->setThumbnail(Ljava/util/function/Supplier;)Lcom/android/keyguard/clock/ClockInfo$Builder;

    new-instance v0, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$AvailableClocks$3xFQeynnnUMh38fqZ7v9xTaqzmA;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/clock/-$$Lambda$ClockManager$AvailableClocks$3xFQeynnnUMh38fqZ7v9xTaqzmA;-><init>(Lcom/android/keyguard/clock/ClockManager$AvailableClocks;Lcom/android/systemui/plugins/ClockPlugin;)V

    invoke-virtual {v2, v0}, Lcom/android/keyguard/clock/ClockInfo$Builder;->setPreview(Ljava/util/function/Supplier;)Lcom/android/keyguard/clock/ClockInfo$Builder;

    invoke-virtual {v2}, Lcom/android/keyguard/clock/ClockInfo$Builder;->build()Lcom/android/keyguard/clock/ClockInfo;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getCurrentClock()Lcom/android/systemui/plugins/ClockPlugin;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

    return-object p0
.end method

.method getInfo()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/keyguard/clock/ClockInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mClockInfo:Ljava/util/List;

    return-object p0
.end method

.method public synthetic lambda$addClockPlugin$0$ClockManager$AvailableClocks(Lcom/android/systemui/plugins/ClockPlugin;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    invoke-static {v0}, Lcom/android/keyguard/clock/ClockManager;->access$500(Lcom/android/keyguard/clock/ClockManager;)I

    move-result v0

    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    invoke-static {p0}, Lcom/android/keyguard/clock/ClockManager;->access$600(Lcom/android/keyguard/clock/ClockManager;)I

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/android/systemui/plugins/ClockPlugin;->getPreview(II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public onPluginConnected(Lcom/android/systemui/plugins/ClockPlugin;Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->addClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V

    invoke-virtual {p0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->reload()V

    iget-object p2, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    invoke-static {p0}, Lcom/android/keyguard/clock/ClockManager;->access$100(Lcom/android/keyguard/clock/ClockManager;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/ClockPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->onPluginConnected(Lcom/android/systemui/plugins/ClockPlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/ClockPlugin;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->removeClockPlugin(Lcom/android/systemui/plugins/ClockPlugin;)V

    invoke-virtual {p0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->reload()V

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->this$0:Lcom/android/keyguard/clock/ClockManager;

    invoke-static {p0}, Lcom/android/keyguard/clock/ClockManager;->access$100(Lcom/android/keyguard/clock/ClockManager;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/ClockPlugin;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->onPluginDisconnected(Lcom/android/systemui/plugins/ClockPlugin;)V

    return-void
.end method

.method reload()V
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->getClockPlugin()Lcom/android/systemui/plugins/ClockPlugin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/clock/ClockManager$AvailableClocks;->mCurrentClock:Lcom/android/systemui/plugins/ClockPlugin;

    return-void
.end method
