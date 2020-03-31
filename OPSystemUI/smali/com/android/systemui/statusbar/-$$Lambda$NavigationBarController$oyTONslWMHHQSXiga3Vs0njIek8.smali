.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$oyTONslWMHHQSXiga3Vs0njIek8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NavigationBarController;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Landroid/content/Context;

.field private final synthetic f$3:I

.field private final synthetic f$4:Lcom/android/internal/statusbar/RegisterStatusBarResult;

.field private final synthetic f$5:Landroid/view/Display;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NavigationBarController;ZLandroid/content/Context;ILcom/android/internal/statusbar/RegisterStatusBarResult;Landroid/view/Display;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$oyTONslWMHHQSXiga3Vs0njIek8;->f$0:Lcom/android/systemui/statusbar/NavigationBarController;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$oyTONslWMHHQSXiga3Vs0njIek8;->f$1:Z

    iput-object p3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$oyTONslWMHHQSXiga3Vs0njIek8;->f$2:Landroid/content/Context;

    iput p4, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$oyTONslWMHHQSXiga3Vs0njIek8;->f$3:I

    iput-object p5, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$oyTONslWMHHQSXiga3Vs0njIek8;->f$4:Lcom/android/internal/statusbar/RegisterStatusBarResult;

    iput-object p6, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$oyTONslWMHHQSXiga3Vs0njIek8;->f$5:Landroid/view/Display;

    return-void
.end method


# virtual methods
.method public final onFragmentViewCreated(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$oyTONslWMHHQSXiga3Vs0njIek8;->f$0:Lcom/android/systemui/statusbar/NavigationBarController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$oyTONslWMHHQSXiga3Vs0njIek8;->f$1:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$oyTONslWMHHQSXiga3Vs0njIek8;->f$2:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$oyTONslWMHHQSXiga3Vs0njIek8;->f$3:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$oyTONslWMHHQSXiga3Vs0njIek8;->f$4:Lcom/android/internal/statusbar/RegisterStatusBarResult;

    iget-object v5, p0, Lcom/android/systemui/statusbar/-$$Lambda$NavigationBarController$oyTONslWMHHQSXiga3Vs0njIek8;->f$5:Landroid/view/Display;

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/NavigationBarController;->lambda$createNavigationBar$0$NavigationBarController(ZLandroid/content/Context;ILcom/android/internal/statusbar/RegisterStatusBarResult;Landroid/view/Display;Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method
