.class public final synthetic Lcom/android/settings/wifi/-$$Lambda$WifiConnectionPreferenceController$k0PQHjeTeRkU3O6EXzOzW4u2s_g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/wifi/WifiConnectionPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/wifi/WifiConnectionPreferenceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/-$$Lambda$WifiConnectionPreferenceController$k0PQHjeTeRkU3O6EXzOzW4u2s_g;->f$0:Lcom/android/settings/wifi/WifiConnectionPreferenceController;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/-$$Lambda$WifiConnectionPreferenceController$k0PQHjeTeRkU3O6EXzOzW4u2s_g;->f$0:Lcom/android/settings/wifi/WifiConnectionPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/WifiConnectionPreferenceController;->lambda$updatePreference$0$WifiConnectionPreferenceController(Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method
