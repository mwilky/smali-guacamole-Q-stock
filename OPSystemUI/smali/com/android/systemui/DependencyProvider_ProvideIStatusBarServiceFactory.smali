.class public final Lcom/android/systemui/DependencyProvider_ProvideIStatusBarServiceFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideIStatusBarServiceFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/internal/statusbar/IStatusBarService;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/android/systemui/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DependencyProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/DependencyProvider_ProvideIStatusBarServiceFactory;->module:Lcom/android/systemui/DependencyProvider;

    return-void
.end method

.method public static create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideIStatusBarServiceFactory;
    .locals 1

    new-instance v0, Lcom/android/systemui/DependencyProvider_ProvideIStatusBarServiceFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/DependencyProvider_ProvideIStatusBarServiceFactory;-><init>(Lcom/android/systemui/DependencyProvider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/DependencyProvider;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/DependencyProvider_ProvideIStatusBarServiceFactory;->proxyProvideIStatusBarService(Lcom/android/systemui/DependencyProvider;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideIStatusBarService(Lcom/android/systemui/DependencyProvider;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider;->provideIStatusBarService()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/internal/statusbar/IStatusBarService;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/DependencyProvider_ProvideIStatusBarServiceFactory;->module:Lcom/android/systemui/DependencyProvider;

    invoke-static {p0}, Lcom/android/systemui/DependencyProvider_ProvideIStatusBarServiceFactory;->provideInstance(Lcom/android/systemui/DependencyProvider;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider_ProvideIStatusBarServiceFactory;->get()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    return-object p0
.end method
