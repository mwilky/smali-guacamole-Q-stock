.class public final Lcom/android/systemui/DependencyProvider_ProvideMainHandlerFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideMainHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Landroid/os/Handler;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/android/systemui/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DependencyProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DependencyProvider_ProvideMainHandlerFactory;->module:Lcom/android/systemui/DependencyProvider;

    return-void
.end method

.method public static create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideMainHandlerFactory;
    .locals 1

    new-instance v0, Lcom/android/systemui/DependencyProvider_ProvideMainHandlerFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/DependencyProvider_ProvideMainHandlerFactory;-><init>(Lcom/android/systemui/DependencyProvider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/DependencyProvider;)Landroid/os/Handler;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/DependencyProvider_ProvideMainHandlerFactory;->proxyProvideMainHandler(Lcom/android/systemui/DependencyProvider;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideMainHandler(Lcom/android/systemui/DependencyProvider;)Landroid/os/Handler;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider;->provideMainHandler()Landroid/os/Handler;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public get()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/DependencyProvider_ProvideMainHandlerFactory;->module:Lcom/android/systemui/DependencyProvider;

    invoke-static {p0}, Lcom/android/systemui/DependencyProvider_ProvideMainHandlerFactory;->provideInstance(Lcom/android/systemui/DependencyProvider;)Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider_ProvideMainHandlerFactory;->get()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method
