.class public final synthetic Lcom/android/keyguard/clock/-$$Lambda$ClockOptionsProvider$VCF-r6VBqrtOSuPKYuOzo6kUuyg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/keyguard/clock/-$$Lambda$ClockOptionsProvider$VCF-r6VBqrtOSuPKYuOzo6kUuyg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/keyguard/clock/-$$Lambda$ClockOptionsProvider$VCF-r6VBqrtOSuPKYuOzo6kUuyg;

    invoke-direct {v0}, Lcom/android/keyguard/clock/-$$Lambda$ClockOptionsProvider$VCF-r6VBqrtOSuPKYuOzo6kUuyg;-><init>()V

    sput-object v0, Lcom/android/keyguard/clock/-$$Lambda$ClockOptionsProvider$VCF-r6VBqrtOSuPKYuOzo6kUuyg;->INSTANCE:Lcom/android/keyguard/clock/-$$Lambda$ClockOptionsProvider$VCF-r6VBqrtOSuPKYuOzo6kUuyg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/android/keyguard/clock/ClockOptionsProvider;->lambda$new$0()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
