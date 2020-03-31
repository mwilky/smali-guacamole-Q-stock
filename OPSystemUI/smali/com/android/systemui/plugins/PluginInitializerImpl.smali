.class public Lcom/android/systemui/plugins/PluginInitializerImpl;
.super Ljava/lang/Object;
.source "PluginInitializerImpl.java"

# interfaces
.implements Lcom/android/systemui/shared/plugins/PluginInitializer;


# static fields
.field private static final WTFS_SHOULD_CRASH:Z = false


# instance fields
.field private mWtfsSet:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBgLooper()Landroid/os/Looper;
    .locals 0

    sget-object p0, Lcom/android/systemui/Dependency;->BG_LOOPER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Looper;

    return-object p0
.end method

.method public getPluginEnabler(Landroid/content/Context;)Lcom/android/systemui/shared/plugins/PluginEnabler;
    .locals 0

    new-instance p0, Lcom/android/systemui/plugins/PluginEnablerImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/plugins/PluginEnablerImpl;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public getWhitelistedPlugins(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/systemui/R$array;->config_pluginWhitelist:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public handleWtfs()V
    .locals 0

    return-void
.end method

.method public onPluginManagerInit()V
    .locals 1

    const-class p0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/PluginDependencyProvider;

    const-class v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/PluginDependencyProvider;->allowPluginDependency(Ljava/lang/Class;)V

    return-void
.end method
