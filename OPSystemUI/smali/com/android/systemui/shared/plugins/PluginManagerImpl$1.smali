.class Lcom/android/systemui/shared/plugins/PluginManagerImpl$1;
.super Ljava/lang/Object;
.source "PluginManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/shared/plugins/PluginManagerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginManagerImpl$PluginInstanceManagerFactory;ZLjava/lang/Thread$UncaughtExceptionHandler;Lcom/android/systemui/shared/plugins/PluginInitializer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shared/plugins/PluginManagerImpl;

.field final synthetic val$initializer:Lcom/android/systemui/shared/plugins/PluginInitializer;


# direct methods
.method constructor <init>(Lcom/android/systemui/shared/plugins/PluginManagerImpl;Lcom/android/systemui/shared/plugins/PluginInitializer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl$1;->this$0:Lcom/android/systemui/shared/plugins/PluginManagerImpl;

    iput-object p2, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl$1;->val$initializer:Lcom/android/systemui/shared/plugins/PluginInitializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/PluginManagerImpl$1;->val$initializer:Lcom/android/systemui/shared/plugins/PluginInitializer;

    invoke-interface {p0}, Lcom/android/systemui/shared/plugins/PluginInitializer;->onPluginManagerInit()V

    return-void
.end method
