.class public Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;
.super Ljava/lang/Object;
.source "InjectionInflationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/InjectionInflationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewAttributeProvider"
.end annotation


# instance fields
.field private final mAttrs:Landroid/util/AttributeSet;

.field private final mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/util/InjectionInflationController;


# direct methods
.method private constructor <init>(Lcom/android/systemui/util/InjectionInflationController;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;->this$0:Lcom/android/systemui/util/InjectionInflationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;->mAttrs:Landroid/util/AttributeSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/util/InjectionInflationController;Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/util/InjectionInflationController$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;-><init>(Lcom/android/systemui/util/InjectionInflationController;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public provideAttributeSet()Landroid/util/AttributeSet;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;->mAttrs:Landroid/util/AttributeSet;

    return-object p0
.end method

.method public provideContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;->mContext:Landroid/content/Context;

    return-object p0
.end method
