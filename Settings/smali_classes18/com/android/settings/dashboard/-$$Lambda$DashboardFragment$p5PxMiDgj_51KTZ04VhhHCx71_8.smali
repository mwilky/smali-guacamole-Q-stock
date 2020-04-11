.class public final synthetic Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$p5PxMiDgj_51KTZ04VhhHCx71_8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/dashboard/DashboardFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dashboard/DashboardFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$p5PxMiDgj_51KTZ04VhhHCx71_8;->f$0:Lcom/android/settings/dashboard/DashboardFragment;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dashboard/-$$Lambda$DashboardFragment$p5PxMiDgj_51KTZ04VhhHCx71_8;->f$0:Lcom/android/settings/dashboard/DashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/DashboardFragment;->lambda$checkUiBlocker$4$DashboardFragment()V

    return-void
.end method
