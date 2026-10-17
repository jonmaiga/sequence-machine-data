import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A273900: Number of columns of length 1 in all bargraphs of semiperimeter n (n>=2).

The programs for A273900, there is no canonical definition to state claims against.
-/

/-! ## A273900.P8295347692892530028

`Δ[Δ[A086581(n)]]`
-/

namespace A273900.P8295347692892530028
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086581 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273900.P8295347692892530028

/-! ## A273900.P2266563059663786247

`Δ[Δ[A082582(n+1)]]`
-/

namespace A273900.P2266563059663786247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082582 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273900.P2266563059663786247

/-! ## A273900.P15580196264034107646

`Δ[Δ[A025242(n+2)]]`
-/

namespace A273900.P15580196264034107646
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025242 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273900.P15580196264034107646

/-! ## A273900.P6246156482438324404

`A188464(n)-Δ[A098978(A087811(n+1))]`
-/

namespace A273900.P6246156482438324404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (A087811 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188464 n - (f1 (n + 1) - f1 n)

end

end A273900.P6246156482438324404

/-! ## A273900.P9948364582417703115

`Δ[Δ[A098978(A087811(n+1))]]`
-/

namespace A273900.P9948364582417703115
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (A087811 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273900.P9948364582417703115

/-! ## A273900.P17470038765008826158

`Δ[Δ[A098978(A076921(n+2))]]`
-/

namespace A273900.P17470038765008826158
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (A076921 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273900.P17470038765008826158

/-! ## A273900.P18195508093774422899

`Δ[Δ[A098978(A182531(n+2))]]`
-/

namespace A273900.P18195508093774422899
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098978 (A182531 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273900.P18195508093774422899

/-! ## A273900.P8286356602464279130

`Δ[Δ[A273342(∑[n]+2)]]`
-/

namespace A273900.P8286356602464279130
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273342 (∑ j ∈ Finset.range (n + 1), f3 j + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273900.P8286356602464279130

/-!
# A273901: Triangle read by rows: T(n,k) is the number of bargraphs of semiperimeter n having k odd-length columns (n>=2, k>=0).

The programs for A273901, there is no canonical definition to state claims against.
-/

/-! ## A273901.P17563135383476855413

`A001876(A203993(n+1)*A203999(n+1))`
-/

namespace A273901.P17563135383476855413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001876 (A203993 (n + 1) * A203999 (n + 1)).toNat

end

end A273901.P17563135383476855413

/-! ## A273901.P15047160468433086450

`A007318(A187829(n+1))*A108947(n+3)`
-/

namespace A273901.P15047160468433086450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A187829 (n + 1)).toNat * A108947 (n + 3)

end

end A273901.P15047160468433086450

/-! ## A273901.P16423103112100664047

`A328610(n+1)%∑[A019448(n)]`
-/

namespace A273901.P16423103112100664047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019448 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A328610 (n + 1)) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273901.P16423103112100664047

/-! ## A273901.P341680557457916416

`abs(A328610(n+1))%A035244(3*n+1)`
-/

namespace A273901.P341680557457916416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A328610 (n + 1)| (A035244 (3 * n + 1))

end

end A273901.P341680557457916416

/-! ## A273901.P8691449748758776851

`A031007(A240876(n)%A000079(n))`
-/

namespace A273901.P8691449748758776851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031007 (Int.tmod (A240876 n) (A000079 n)).toNat

end

end A273901.P8691449748758776851

/-!
# A273902: Number of odd-length columns in all bargraphs having semiperimeter n (n>=2).

The programs for A273902, there is no canonical definition to state claims against.
-/

/-! ## A273902.P1322372600933285638

`A271943(n+2)-A273904(n+2)`
-/

namespace A273902.P1322372600933285638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271943 (n + 2) - A273904 (n + 2)

end

end A273902.P1322372600933285638

/-! ## A273902.P18236241350827687300

`∑[A294159(n+1)+A273718(n+2)]-A273904(n+2)`
-/

namespace A273902.P18236241350827687300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294159 (n + 1) + A273718 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A273904 (n + 2)

end

end A273902.P18236241350827687300

/-! ## A273902.P596272562535916037

`A273905(A004273(n+2))-A025242(n+3)-A273904(n+2)`
-/

namespace A273902.P596272562535916037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (A004273 (n + 2)).toNat - A025242 (n + 3) - A273904 (n + 2)

end

end A273902.P596272562535916037

/-! ## A273902.P13548069352826654524

`A108626(n+1)+A108626(n)-A105633(n+1)-A273904(n+2)`
-/

namespace A273902.P13548069352826654524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108626 (n + 1) + (A108626 n - A105633 (n + 1)) - A273904 (n + 2)

end

end A273902.P13548069352826654524

/-! ## A273902.P5947173494795315203

`A047087(n+2)-(A047086(n)+A047085(n+1))-A273904(n+2)`
-/

namespace A273902.P5947173494795315203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047087 (n + 2) - (A047086 n + A047085 (n + 1)) - A273904 (n + 2)

end

end A273902.P5947173494795315203

/-!
# A273903: Triangle read by rows: T(n,k) is the number of bargraphs of semiperimeter n having k even-length columns (n>=2,k>=0).

The programs for A273903, there is no canonical definition to state claims against.
-/

/-! ## A273903.P12511894791623646113

`A121484(n+1)+A030308(A324674(n))`
-/

namespace A273903.P12511894791623646113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121484 (n + 1) + A030308 (A324674 n).toNat

end

end A273903.P12511894791623646113

/-! ## A273903.P12430320726066002431

`A178602(A330964(n))+A121484(n+1)`
-/

namespace A273903.P12430320726066002431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178602 (A330964 n).toNat + A121484 (n + 1)

end

end A273903.P12430320726066002431

/-! ## A273903.P11775372588679970924

`A121484(n+1)+A112765(A000055(n))`
-/

namespace A273903.P11775372588679970924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121484 (n + 1) + A112765 (A000055 n).toNat

end

end A273903.P11775372588679970924

/-! ## A273903.P15948117003495461684

`A121484(n+1)+A112765(A001644(n))`
-/

namespace A273903.P15948117003495461684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121484 (n + 1) + A112765 (A001644 n).toNat

end

end A273903.P15948117003495461684

/-! ## A273903.P14128952748634148069

`A165655(A084938(n))+A121484(n+1)`
-/

namespace A273903.P14128952748634148069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165655 (A084938 n).toNat + A121484 (n + 1)

end

end A273903.P14128952748634148069

/-!
# A273904: Number of even-length columns in all bargraphs having semiperimeter n (n>=2).

The programs for A273904, there is no canonical definition to state claims against.
-/

/-! ## A273904.P7107701323196814334

`A271943(n+2)-A273902(n+2)`
-/

namespace A273904.P7107701323196814334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271943 (n + 2) - A273902 (n + 2)

end

end A273904.P7107701323196814334

/-! ## A273904.P942221013939195822

`A271943(A020725(n+1))%A273902(n+2)`
-/

namespace A273904.P942221013939195822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271943 (A020725 (n + 1)).toNat) (A273902 (n + 2))

end

end A273904.P942221013939195822

/-! ## A273904.P9245615030076419460

`A271943(A254667(n+2))%A273902(n+2)`
-/

namespace A273904.P9245615030076419460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A271943 (A254667 (n + 2)).toNat) (A273902 (n + 2))

end

end A273904.P9245615030076419460

/-! ## A273904.P16653985778910728796

`∑[A294159(n+1)+A273718(n+2)]-A273902(n+2)`
-/

namespace A273904.P16653985778910728796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294159 (n + 1) + A273718 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A273902 (n + 2)

end

end A273904.P16653985778910728796

/-! ## A273904.P9251088463764752838

`A273905(A004273(n+2))-A025242(n+3)-A273902(n+2)`
-/

namespace A273904.P9251088463764752838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273905 (A004273 (n + 2)).toNat - A025242 (n + 3) - A273902 (n + 2)

end

end A273904.P9251088463764752838

/-! ## A273904.P6294211663433310037

`A108626(n+1)+A108626(n)-A105633(n+1)-A273902(n+2)`
-/

namespace A273904.P6294211663433310037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108626 (n + 1) + (A108626 n - A105633 (n + 1)) - A273902 (n + 2)

end

end A273904.P6294211663433310037

/-! ## A273904.P11983197014557074173

`A273714(n+3)-(A273902(n+2)+A273714(n+2))`
-/

namespace A273904.P11983197014557074173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273714 (n + 3) - (A273902 (n + 2) + A273714 (n + 2))

end

end A273904.P11983197014557074173

/-!
# A273905: Number of symmetric bargraphs having semiperimeter n (n>=2).

The programs for A273905, there is no canonical definition to state claims against.
-/

/-! ## A273905.P16042382681628906986

`A191794(n+2)-A191794(n)`
-/

namespace A273905.P16042382681628906986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191794 (n + 2) - A191794 n

end

end A273905.P16042382681628906986

/-! ## A273905.P9270734253738688202

`Δ[A191794(n+1)+A191794(n)]`
-/

namespace A273905.P9270734253738688202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191794 (n + 1) + A191794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273905.P9270734253738688202

/-! ## A273905.P8215810332026835349

`A047080(∑[n+3]+1-floor(n/2))`
-/

namespace A273905.P8215810332026835349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047080 (((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℤ) - ⌊(n : ℚ) / 2⌋).toNat

end

end A273905.P8215810332026835349

/-! ## A273905.P15223334127416828902

`record[A047080(A001972(n))]`
-/

namespace A273905.P15223334127416828902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047080 (A001972 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273905.P15223334127416828902

/-! ## A273905.P3127376683856524601

`record[A047080(A130519(n))]`
-/

namespace A273905.P3127376683856524601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047080 (A130519 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273905.P3127376683856524601

/-! ## A273905.P8684701002890824712

`record[A047080(A166515(n))]`
-/

namespace A273905.P8684701002890824712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047080 (A166515 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273905.P8684701002890824712

/-! ## A273905.P11020974577515657267

`record[A047080(A245300(n))]`
-/

namespace A273905.P11020974577515657267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047080 (A245300 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273905.P11020974577515657267

/-! ## A273905.P13379766296903022684

`record[A047080(A008611(2*n+1)*A008611(n+1))]`
-/

namespace A273905.P13379766296903022684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047080 (A008611 (2 * n + 1) * A008611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273905.P13379766296903022684

/-!
# A273906: Primes equal to the concatenation of two nonzero palindromic numbers.

The programs for A273906, there is no canonical definition to state claims against.
-/

/-! ## A273906.P8946655911133735039

`p?[A073424(A000124(n))+A043638(n+1)]`
-/

namespace A273906.P8946655911133735039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A000124 n).toNat + A043638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A273906.P8946655911133735039

/-! ## A273906.P10247754361685110070

`p?[A073424(A167614(n+1))+A043638(n+1)]`
-/

namespace A273906.P10247754361685110070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073424 (A167614 (n + 1)).toNat + A043638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A273906.P10247754361685110070

/-! ## A273906.P11645305682347126488

`p?[A043638(n+1)+A000007(A000217(n))]`
-/

namespace A273906.P11645305682347126488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043638 (n + 1) + A000007 (A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A273906.P11645305682347126488

/-! ## A273906.P6921523363221972172

`eq[A044941(A139337(n)), A166974(n)]`
-/

namespace A273906.P6921523363221972172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044941 (A139337 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166974 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273906.P6921523363221972172

/-!
# A273908: Integers z such that x^2 + y^4 = z^6 where x, y, z > 0, is soluble.

The programs for A273908, there is no canonical definition to state claims against.
-/

/-! ## A273908.P5211211539048953275

`sqrt(∩[A266212(n+1), n²])`
-/

namespace A273908.P5211211539048953275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266212 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ)

end

end A273908.P5211211539048953275

/-! ## A273908.P12420418960037736942

`root(∩[A266212(n+4), n²], 2)`
-/

namespace A273908.P12420418960037736942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266212 (n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n : ℝ) ^ (1 / (2 : ℝ))

end

end A273908.P12420418960037736942

/-! ## A273908.P12352190806718116847

`sqrt(∩[A000290(n), A266212(n+1)])`
-/

namespace A273908.P12352190806718116847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266212 (n + 1)

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℝ)

end

end A273908.P12352190806718116847

/-! ## A273908.P14345538691491333110

`A071974(∩[A266212(n+1), n²])`
-/

namespace A273908.P14345538691491333110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266212 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n)

end

end A273908.P14345538691491333110

/-! ## A273908.P17713253556724493895

`A071974(∩[A000290(n), A266212(n+1)])`
-/

namespace A273908.P17713253556724493895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266212 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071974 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A273908.P17713253556724493895

/-!
# A273909: Let p = prime(n) and q = prime(n+1), then a(n) = p*q - p^2 - 2*q.

The programs for A273909, there is no canonical definition to state claims against.
-/

/-! ## A273909.P8490598628886733547

`(p?[round(8*n/7)]-2)*p?[2*n+1]-A001248(n+1)`
-/

namespace A273909.P8490598628886733547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 2) * (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℤ) - A001248 (n + 1)

end

end A273909.P8490598628886733547

/-! ## A273909.P7829664768934740847

`A037167(n+1)-A352851(n+1)`
-/

namespace A273909.P7829664768934740847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037167 (n + 1) - A352851 (n + 1)

end

end A273909.P7829664768934740847

/-! ## A273909.P7105730919325537957

`A291463(n+1)-A100484(n+2)`
-/

namespace A273909.P7105730919325537957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291463 (n + 1) - A100484 (n + 2)

end

end A273909.P7105730919325537957

/-! ## A273909.P7288624218634420907

`A291463(n+1)-A001747(n+3)`
-/

namespace A273909.P7288624218634420907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291463 (n + 1) - A001747 (n + 3)

end

end A273909.P7288624218634420907

/-! ## A273909.P14245811746632381818

`A291463(n+1)-2*p?[A022998(n)]`
-/

namespace A273909.P14245811746632381818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291463 (n + 1) - 2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A273909.P14245811746632381818

/-! ## A273909.P7665500455770289338

`A291463(n+1)-2*A065091(n+1)`
-/

namespace A273909.P7665500455770289338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291463 (n + 1) - 2 * A065091 (n + 1)

end

end A273909.P7665500455770289338

/-! ## A273909.P9321433889039823163

`A291463(n+1)-2*A000040(n+2)`
-/

namespace A273909.P9321433889039823163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291463 (n + 1) - 2 * A000040 (n + 2)

end

end A273909.P9321433889039823163

/-! ## A273909.P8396820338957734182

`A291463(n+1)-A005843(A000040(n+2))`
-/

namespace A273909.P8396820338957734182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291463 (n + 1) - A005843 (A000040 (n + 2)).toNat

end

end A273909.P8396820338957734182

/-! ## A273909.P9445958532611168207

`A001223(n+1)*A086801(n+1)-A098764(n+1)`
-/

namespace A273909.P9445958532611168207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) * A086801 (n + 1) - A098764 (n + 1)

end

end A273909.P9445958532611168207

/-! ## A273909.P6859768787528900972

`A000040(n+2)*A040976(n+1)-A001248(n+1)`
-/

namespace A273909.P6859768787528900972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A040976 (n + 1) - A001248 (n + 1)

end

end A273909.P6859768787528900972

/-!
# A273910: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 614", based on the 5-celled von Neumann neighborhood.

The programs for A273910, there is no canonical definition to state claims against.
-/

/-! ## A273910.P6724410536749106666

`A007088(A273911(n))`
-/

namespace A273910.P6724410536749106666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A273911 n).toNat

end

end A273910.P6724410536749106666

/-! ## A273910.P3521060438992946222

`A007088(A038184(n)%A198633(n))`
-/

namespace A273910.P3521060438992946222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.tmod (A038184 n) (A198633 n)).toNat

end

end A273910.P3521060438992946222

/-! ## A273910.P3335719282197421522

`A007088(and(A038184(n), A126646(n)))`
-/

namespace A273910.P3335719282197421522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A038184 n) (A126646 n)).toNat

end

end A273910.P3335719282197421522

/-! ## A273910.P667276073139854484

`A007088(and(A038184(n), A281482(n)))`
-/

namespace A273910.P667276073139854484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A038184 n) (A281482 n)).toNat

end

end A273910.P667276073139854484

/-! ## A273910.P2318189219804429135

`A007088(and(A038184(n), A284031(n)))`
-/

namespace A273910.P2318189219804429135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.land (A038184 n) (A284031 n)).toNat

end

end A273910.P2318189219804429135

/-!
# A273911: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 614", based on the 5-celled von Neumann neighborhood.

The programs for A273911, the canonical program `A273911.P714773081203146944` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273911 has offset 0).

The definition of A273911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 166 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273911.P14737246409350971975

`A288130(2*n)/A016116(2*n)`
-/

namespace A273911.P14737246409350971975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288130 (2 * n) : ℚ) / (A016116 (2 * n) : ℚ)

end

end A273911.P14737246409350971975

namespace A273911

/-- `A288130(2*n)/A016116(2*n)` -/
def P14737246409350971975.Spec : Prop :=
  ∀ n, P14737246409350971975.a n = (A273911 n : ℚ)

end A273911

/-! ## A273911.P5420208566912580679

`A288130(2*n)/A060546(2*n)`
-/

namespace A273911.P5420208566912580679
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A288130 (2 * n) : ℚ) / (A060546 (2 * n) : ℚ)

end

end A273911.P5420208566912580679

namespace A273911

/-- `A288130(2*n)/A060546(2*n)` -/
def P5420208566912580679.Spec : Prop :=
  ∀ n, P5420208566912580679.a n = (A273911 n : ℚ)

end A273911

/-! ## A273911.P714773081203146944

`A038184(n)%A198633(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A273911

/-- `A038184(n)%A198633(n)` -/
def P714773081203146944.Spec : Prop :=
  ∀ n, P714773081203146944.a n = A273911 n

theorem P714773081203146944.correct : P714773081203146944.Spec := by
  intro n
  simp only [A273911]

end A273911

/-! ## A273911.P6765259104611575440

`and(A038184(n), A126646(n))`
-/

namespace A273911.P6765259104611575440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038184 n) (A126646 n)

end

end A273911.P6765259104611575440

namespace A273911

/-- `and(A038184(n), A126646(n))` -/
def P6765259104611575440.Spec : Prop :=
  ∀ n, P6765259104611575440.a n = A273911 n

end A273911

/-! ## A273911.P8745470954582388781

`and(A038184(n), A281482(n))`
-/

namespace A273911.P8745470954582388781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038184 n) (A281482 n)

end

end A273911.P8745470954582388781

namespace A273911

/-- `and(A038184(n), A281482(n))` -/
def P8745470954582388781.Spec : Prop :=
  ∀ n, P8745470954582388781.a n = A273911 n

end A273911

/-! ## A273911.P9339037335873027408

`and(A038184(n), A284031(n))`
-/

namespace A273911.P9339037335873027408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038184 n) (A284031 n)

end

end A273911.P9339037335873027408

namespace A273911

/-- `and(A038184(n), A284031(n))` -/
def P9339037335873027408.Spec : Prop :=
  ∀ n, P9339037335873027408.a n = A273911 n

end A273911

/-! ## A273911.P18066034234599602424

`and(A038184(n), A284090(n))`
-/

namespace A273911.P18066034234599602424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038184 n) (A284090 n)

end

end A273911.P18066034234599602424

namespace A273911

/-- `and(A038184(n), A284090(n))` -/
def P18066034234599602424.Spec : Prop :=
  ∀ n, P18066034234599602424.a n = A273911 n

end A273911

/-! ## A273911.P6072690863000389823

`and(A038184(n), A286521(n))`
-/

namespace A273911.P6072690863000389823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038184 n) (A286521 n)

end

end A273911.P6072690863000389823

namespace A273911

/-- `and(A038184(n), A286521(n))` -/
def P6072690863000389823.Spec : Prop :=
  ∀ n, P6072690863000389823.a n = A273911 n

end A273911

/-! ## A273911.P7094314267614052899

`and(A038184(n), A290230(n))`
-/

namespace A273911.P7094314267614052899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038184 n) (A290230 n)

end

end A273911.P7094314267614052899

namespace A273911

/-- `and(A038184(n), A290230(n))` -/
def P7094314267614052899.Spec : Prop :=
  ∀ n, P7094314267614052899.a n = A273911 n

end A273911

/-! ## A273911.P10363974235825110718

`and(A038184(n), A290231(n))`
-/

namespace A273911.P10363974235825110718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038184 n) (A290231 n)

end

end A273911.P10363974235825110718

namespace A273911

/-- `and(A038184(n), A290231(n))` -/
def P10363974235825110718.Spec : Prop :=
  ∀ n, P10363974235825110718.a n = A273911 n

end A273911

/-! ## A273911.P7141343206173419324

`and(A038184(n), A290662(n))`
-/

namespace A273911.P7141343206173419324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038184 n) (A290662 n)

end

end A273911.P7141343206173419324

namespace A273911

/-- `and(A038184(n), A290662(n))` -/
def P7141343206173419324.Spec : Prop :=
  ∀ n, P7141343206173419324.a n = A273911 n

end A273911

/-! ## A273911.P11351142750117004754

`and(∑[∑[A011782(n)]], A038184(n))`
-/

namespace A273911.P11351142750117004754
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (∑ j ∈ Finset.range (n + 1), f1 j) (A038184 n)

end

end A273911.P11351142750117004754

namespace A273911

/-- `and(∑[∑[A011782(n)]], A038184(n))` -/
def P11351142750117004754.Spec : Prop :=
  ∀ n, P11351142750117004754.a n = A273911 n

end A273911

/-! ## A273911.P13983029048315603330

`A289769(2*n+1)/(A077896(2*n)+1)`
-/

namespace A273911.P13983029048315603330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289769 (2 * n + 1) : ℚ) / (A077896 (2 * n) + 1 : ℚ)

end

end A273911.P13983029048315603330

namespace A273911

/-- `A289769(2*n+1)/(A077896(2*n)+1)` -/
def P13983029048315603330.Spec : Prop :=
  ∀ n, P13983029048315603330.a n = (A273911 n : ℚ)

end A273911

/-! ## A273911.P18281587389828001696

`A289769(2*n+1)/and(A289769(2*n+1), A289769(n+1))`
-/

namespace A273911.P18281587389828001696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A289769 (2 * n + 1) : ℚ) / (Int.land (A289769 (2 * n + 1)) (A289769 (n + 1)) : ℚ)

end

end A273911.P18281587389828001696

namespace A273911

/-- `A289769(2*n+1)/and(A289769(2*n+1), A289769(n+1))` -/
def P18281587389828001696.Spec : Prop :=
  ∀ n, P18281587389828001696.a n = (A273911 n : ℚ)

end A273911

/-!
# A273912: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 614", based on the 5-celled von Neumann neighborhood.

The programs for A273912, there is no canonical definition to state claims against.
-/

/-! ## A273912.P11820122366236820123

`A289766(2*n)`
-/

namespace A273912.P11820122366236820123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289766 (2 * n)

end

end A273912.P11820122366236820123

/-! ## A273912.P10616558724125604328

`record[A289766(n)-n%2]`
-/

namespace A273912.P10616558724125604328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289766 n - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273912.P10616558724125604328

/-! ## A273912.P6174646676029401232

`record[A289766(A026741(n))]`
-/

namespace A273912.P6174646676029401232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289766 (A026741 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273912.P6174646676029401232

/-! ## A273912.P7321361797940785904

`record[A289766(A028898(n))]`
-/

namespace A273912.P7321361797940785904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289766 (A028898 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273912.P7321361797940785904

/-! ## A273912.P16862168959229540256

`record[A289766(A029579(n))]`
-/

namespace A273912.P16862168959229540256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289766 (A029579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273912.P16862168959229540256

/-! ## A273912.P218179496859461644

`record[A289766(A131508(n))]`
-/

namespace A273912.P218179496859461644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289766 (A131508 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273912.P218179496859461644

/-! ## A273912.P1535357572219124518

`record[A289766(A218254(n))]`
-/

namespace A273912.P1535357572219124518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289766 (A218254 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273912.P1535357572219124518

/-! ## A273912.P3714204059020949168

`record[A289766(A082404(n+1))]`
-/

namespace A273912.P3714204059020949168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289766 (A082404 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273912.P3714204059020949168

/-! ## A273912.P9868417960010057015

`record[or(A057078(n), A289766(n))]`
-/

namespace A273912.P9868417960010057015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A057078 n) (A289766 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273912.P9868417960010057015

/-! ## A273912.P12492362285221764044

`record[A289766(n-A057078(n+1))]`
-/

namespace A273912.P12492362285221764044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289766 ((n : ℤ) - A057078 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273912.P12492362285221764044

/-! ## A273912.P11572197941491866825

`record[gcd(A289766(n+1), A289766(n))]`
-/

namespace A273912.P11572197941491866825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A289766 (n + 1)) (A289766 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273912.P11572197941491866825

/-! ## A273912.P12151276952629606788

`A289766(Δ[n²])+A000161(A022544(n+1))`
-/

namespace A273912.P12151276952629606788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289766 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A000161 (A022544 (n + 1)).toNat

end

end A273912.P12151276952629606788

/-!
# A273914: Array A by antidiagonals going up: A(n, m) is the number of (0, 1)-strings with n 0's and m 1's that do not contain 10101101 or 1110101 as substrings.

The programs for A273914, there is no canonical definition to state claims against.
-/

/-! ## A273914.P1904112408883952901

`A007318(n)-A000045(C(a(n-2), n+2))` with `a(0)=1, a(1)=1`
-/

namespace A273914.P1904112408883952901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A007318 n - A000045 (Nat.choose (a (n - 2)).toNat (n + 2))

end

end A273914.P1904112408883952901

/-! ## A273914.P8595244131350158155

`A178780(A214015(n))+A007318(n)`
-/

namespace A273914.P8595244131350158155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178780 (A214015 n).toNat + A007318 n

end

end A273914.P8595244131350158155

/-! ## A273914.P9770854640833660240

`A007318(n)-A025465(A008633(n))`
-/

namespace A273914.P9770854640833660240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A025465 (A008633 n).toNat

end

end A273914.P9770854640833660240

/-! ## A273914.P11840760651205666536

`A007318(n)-A083928(A291895(n))`
-/

namespace A273914.P11840760651205666536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A083928 (A291895 n).toNat

end

end A273914.P11840760651205666536

/-! ## A273914.P349561192873133692

`A007318(n)-A065205(A334548(n))`
-/

namespace A273914.P349561192873133692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n - A065205 (A334548 n).toNat

end

end A273914.P349561192873133692

/-!
# A273915: Number of ordered ways to write n as w^5 + x^2 + y^2 + z^2, where w,x,y,z are nonnegative integers with x <= y <= z.

The programs for A273915, there is no canonical definition to state claims against.
-/

/-! ## A273915.P7102518143280615917

`A273429(n)+A057427(A034574(n+1))`
-/

namespace A273915.P7102518143280615917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273429 n + A057427 (A034574 (n + 1)).toNat

end

end A273915.P7102518143280615917

/-! ## A273915.P12835597292384605124

`A273429(n)+A185284(A172033(n))`
-/

namespace A273915.P12835597292384605124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273429 n + A185284 (A172033 n).toNat

end

end A273915.P12835597292384605124

/-! ## A273915.P17428713599197661247

`A340988(A117894(n))+A273429(n)`
-/

namespace A273915.P17428713599197661247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340988 ((A117894 n).toNat + 91) + A273429 n

end

end A273915.P17428713599197661247

/-! ## A273915.P11619457005190671923

`A273429(n)+and(A001727(n), A030190(n))`
-/

namespace A273915.P11619457005190671923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273429 n + Int.land (A001727 n) (A030190 n)

end

end A273915.P11619457005190671923

/-! ## A273915.P11942770530100394816

`A273429(n)+and(A001727(n), A069010(n))`
-/

namespace A273915.P11942770530100394816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273429 n + Int.land (A001727 n) (A069010 n)

end

end A273915.P11942770530100394816

/-!
# A273917: Number of ordered ways to write n as w^2 + 3*x^2 + y^4 + z^5, where w is a positive integer and x,y,z are nonnegative integers.

The programs for A273917, there is no canonical definition to state claims against.
-/

/-! ## A273917.P15394915943853544116

`A138151(A229823(n)+A001405(n))`
-/

namespace A273917.P15394915943853544116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138151 (A229823 n + A001405 n).toNat

end

end A273917.P15394915943853544116

/-! ## A273917.P10324098085890473100

`∑{e}[A121663(A227121(n+1))+1, #]`
-/

namespace A273917.P10324098085890473100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121663 (A227121 (n + 1)).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A273917.P10324098085890473100

/-! ## A273917.P11750211031652698229

`gcd(A101888(A301710(n)), A236697(n+1))`
-/

namespace A273917.P11750211031652698229
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A101888 (A301710 n).toNat) (A236697 (n + 1))

end

end A273917.P11750211031652698229

/-! ## A273917.P13680298186551464385

`A266313(A266477(n)+A063007(2*(n+2)))`
-/

namespace A273917.P13680298186551464385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266313 (A266477 n + A063007 (2 * (n + 2))).toNat

end

end A273917.P13680298186551464385

/-! ## A273917.P13080545881472271686

`or(A031346(n), A088570(A054355(n)))`
-/

namespace A273917.P13080545881472271686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A031346 n) (A088570 (A054355 n).toNat)

end

end A273917.P13080545881472271686

/-!
# A273918: Numerator of z(n), where z(n) = z(n - 1)^2 + 1/4 and z(0) = 1.

The programs for A273918, there is no canonical definition to state claims against.
-/

/-! ## A273918.P2450937365426853700

`A192476(A322399(n+1)+∑{d}[n+1, #])`
-/

namespace A273918.P2450937365426853700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192476 (A322399 (n + 1) + ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)).toNat

end

end A273918.P2450937365426853700

/-!
# A273919: Number of 9-tuples of primes in arithmetic progression less than 10^n.

The programs for A273919, there is no canonical definition to state claims against.
-/

/-! ## A273919.P824633861773998808

`A087401(or(1, A001142(n)))`
-/

namespace A273919.P824633861773998808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 (Int.lor 1 (A001142 n)).toNat

end

end A273919.P824633861773998808

/-! ## A273919.P821232022965773222

`A087401(xor(1, A001142(n)))`
-/

namespace A273919.P821232022965773222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087401 (Int.xor 1 (A001142 n)).toNat

end

end A273919.P821232022965773222

/-!
# A273920: Number of 10-tuples of primes in arithmetic progression less than 10^n.

The programs for A273920, there is no canonical definition to state claims against.
-/

/-! ## A273920.P17391408976165287748

`A033100(A209326(n)+A208510(n+1))`
-/

namespace A273920.P17391408976165287748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033100 (A209326 n + A208510 (n + 1)).toNat

end

end A273920.P17391408976165287748

/-! ## A273920.P14290398595767363730

`a(n-1)!+n²` with `a(0)=0, a(1)=0, a(2)=0, a(3)=1, a(4)=5`
-/

namespace A273920.P14290398595767363730
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 0, 1, 5] fun n a =>
  Nat.factorial (a (n - 1)) + n ^ 2

end

end A273920.P14290398595767363730

/-!
# A273921: Number of 11-tuples of primes in arithmetic progression less than 10^n.

The programs for A273921, there is no canonical definition to state claims against.
-/

/-! ## A273921.P9991794581409718460

`A220496(5*C(n, 5))`
-/

namespace A273921.P9991794581409718460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220496 (5 * Nat.choose n 5)

end

end A273921.P9991794581409718460

/-! ## A273921.P10821759517664068470

`C(A318584((1-comp[∑[n]])²), 2)`
-/

namespace A273921.P10821759517664068470
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A318584 ((1 - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)) ^ 2).toNat).toNat 2

end

end A273921.P10821759517664068470

/-! ## A273921.P13384536255437532769

`A090030(A110542(n))`
-/

namespace A273921.P13384536255437532769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090030 (A110542 n).toNat

end

end A273921.P13384536255437532769

/-!
# A273922: Number of 12-tuples of primes in arithmetic progression less than 10^n.

The programs for A273922, there is no canonical definition to state claims against.
-/

/-! ## A273922.P1703708572823791624

`A098356(A323936(n+1))`
-/

namespace A273922.P1703708572823791624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098356 (A323936 (n + 1)).toNat

end

end A273922.P1703708572823791624

/-! ## A273922.P9379666317622695166

`A393406(A360885(n+1))`
-/

namespace A273922.P9379666317622695166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393406 (A360885 (n + 1)).toNat

end

end A273922.P9379666317622695166

/-! ## A273922.P1639474471367082929

`Δ[A315697(∏[A174300(n)])]`
-/

namespace A273922.P1639474471367082929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174300 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315697 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A273922.P1639474471367082929

/-! ## A273922.P700063717726067247

`A033593(n)%(A053530(n)-2)`
-/

namespace A273922.P700063717726067247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033593 n) (A053530 n - 2)

end

end A273922.P700063717726067247

/-!
# A273925: G.f. satisfies: A( A(x)^2 - A(x)^3 ) = x^2, where A(x) = Sum_{n>=1} a(n)*x^n / 2^A273926(n).

The programs for A273925, there is no canonical definition to state claims against.
-/

/-! ## A273925.P4527388619860160392

`A000265(A271961(n+1)/A001316(n))`
-/

namespace A273925.P4527388619860160392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A271961 (n + 1) : ℚ) / (A001316 n : ℚ))).toNat

end

end A273925.P4527388619860160392

/-! ## A273925.P2311155700409634678

`A000265(A271961(n+1)/A053633(n))`
-/

namespace A273925.P2311155700409634678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A271961 (n + 1) : ℚ) / (A053633 n : ℚ))).toNat

end

end A273925.P2311155700409634678

/-! ## A273925.P6332625998583633092

`A000265(A271961(n+1)/A060632(n))`
-/

namespace A273925.P6332625998583633092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A271961 (n + 1) : ℚ) / (A060632 n : ℚ))).toNat

end

end A273925.P6332625998583633092

/-!
# A273926: Given G(x) such that G( G(x)^2 - G(x)^3 ) = x^2, then G(x) = Sum_{n>=1} A273925(n)*x^n / 2^a(n).

The programs for A273926, the canonical program `A273926.P11811595775230252217` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273926 has offset 1).

The definition of A273926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 261 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273926.P11811595775230252217

`A005187(n)-(n-1)*n%2`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A273926

/-- `A005187(n)-(n-1)*n%2` -/
def P11811595775230252217.Spec : Prop :=
  ∀ n, P11811595775230252217.a n = A273926 (n + 1)

theorem P11811595775230252217.correct : P11811595775230252217.Spec := by
  intro n
  simp only [A273926, Nat.add_sub_cancel]

end A273926

/-! ## A273926.P8818778010270495217

`n*gcd(2, n)-A000120(floor(n/2))`
-/

namespace A273926.P8818778010270495217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n * Nat.gcd 2 n : ℤ) - A000120 ⌊(n : ℚ) / 2⌋.toNat

end

end A273926.P8818778010270495217

namespace A273926

/-- `n*gcd(2, n)-A000120(floor(n/2))` -/
def P8818778010270495217.Spec : Prop :=
  ∀ n, P8818778010270495217.a n = A273926 (n + 1)

end A273926

/-! ## A273926.P12472277642252910223

`A101925(n)-A093178(n)`
-/

namespace A273926.P12472277642252910223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101925 n - A093178 n

end

end A273926.P12472277642252910223

namespace A273926

/-- `A101925(n)-A093178(n)` -/
def P12472277642252910223.Spec : Prop :=
  ∀ n, P12472277642252910223.a n = A273926 (n + 1)

end A273926

/-! ## A273926.P15922835201272068625

`A004134(n)-A227906(n)`
-/

namespace A273926.P15922835201272068625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004134 n - A227906 n

end

end A273926.P15922835201272068625

namespace A273926

/-- `A004134(n)-A227906(n)` -/
def P15922835201272068625.Spec : Prop :=
  ∀ n, P15922835201272068625.a n = A273926 (n + 1)

end A273926

/-! ## A273926.P10493627439961508698

`A131179(n)-A127944(n)`
-/

namespace A273926.P10493627439961508698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131179 n - A127944 n

end

end A273926.P10493627439961508698

namespace A273926

/-- `A131179(n)-A127944(n)` -/
def P10493627439961508698.Spec : Prop :=
  ∀ n, P10493627439961508698.a n = A273926 (n + 1)

end A273926

/-! ## A273926.P6135181446002069950

`A005187(n)+1-A093178(n)`
-/

namespace A273926.P6135181446002069950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005187 n + (1 - A093178 n)

end

end A273926.P6135181446002069950

namespace A273926

/-- `A005187(n)+1-A093178(n)` -/
def P6135181446002069950.Spec : Prop :=
  ∀ n, P6135181446002069950.a n = A273926 (n + 1)

end A273926

/-! ## A273926.P4110877413775720400

`A133090(n+1)-A274009(n)`
-/

namespace A273926.P4110877413775720400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133090 (n + 1) - A274009 n

end

end A273926.P4110877413775720400

namespace A273926

/-- `A133090(n+1)-A274009(n)` -/
def P4110877413775720400.Spec : Prop :=
  ∀ n, P4110877413775720400.a n = A273926 (n + 1)

end A273926

/-! ## A273926.P12814574142960093275

`A288933(n+1)-A321220(n)`
-/

namespace A273926.P12814574142960093275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288933 (n + 1) - A321220 n

end

end A273926.P12814574142960093275

namespace A273926

/-- `A288933(n+1)-A321220(n)` -/
def P12814574142960093275.Spec : Prop :=
  ∀ n, P12814574142960093275.a n = A273926 (n + 1)

end A273926

/-! ## A273926.P15905117453832133605

`A011371(n)+n/A093178(n)`
-/

namespace A273926.P15905117453832133605
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A011371 n : ℚ) + (n : ℚ) / (A093178 n : ℚ)

end

end A273926.P15905117453832133605

namespace A273926

/-- `A011371(n)+n/A093178(n)` -/
def P15905117453832133605.Spec : Prop :=
  ∀ n, P15905117453832133605.a n = (A273926 (n + 1) : ℚ)

end A273926

/-! ## A273926.P10244739679444359823

`A011371(n)+gcd(n, A009531(n))`
-/

namespace A273926.P10244739679444359823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + (Int.gcd (n : ℤ) (A009531 n) : ℤ)

end

end A273926.P10244739679444359823

namespace A273926

/-- `A011371(n)+gcd(n, A009531(n))` -/
def P10244739679444359823.Spec : Prop :=
  ∀ n, P10244739679444359823.a n = A273926 (n + 1)

end A273926

/-! ## A273926.P7437585743110067123

`abs(A009531(n))+n-A000120(n)`
-/

namespace A273926.P7437585743110067123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A009531 n| + ((n : ℤ) - A000120 n)

end

end A273926.P7437585743110067123

namespace A273926

/-- `abs(A009531(n))+n-A000120(n)` -/
def P7437585743110067123.Spec : Prop :=
  ∀ n, P7437585743110067123.a n = A273926 (n + 1)

end A273926

/-! ## A273926.P1951650190022584007

`2*A029578(n+1)-A000120(n)`
-/

namespace A273926.P1951650190022584007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029578 (n + 1) - A000120 n

end

end A273926.P1951650190022584007

namespace A273926

/-- `2*A029578(n+1)-A000120(n)` -/
def P1951650190022584007.Spec : Prop :=
  ∀ n, P1951650190022584007.a n = A273926 (n + 1)

end A273926

/-! ## A273926.P8733747477659098399

`A124625(n+1)-A000120(n)+n`
-/

namespace A273926.P8733747477659098399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 (n + 1) - A000120 n + (n : ℤ)

end

end A273926.P8733747477659098399

namespace A273926

/-- `A124625(n+1)-A000120(n)+n` -/
def P8733747477659098399.Spec : Prop :=
  ∀ n, P8733747477659098399.a n = A273926 (n + 1)

end A273926

/-! ## A273926.P16104172842346590600

`A005843(A029578(n+1))-A000120(n)`
-/

namespace A273926.P16104172842346590600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A029578 (n + 1)).toNat - A000120 n

end

end A273926.P16104172842346590600

namespace A273926

/-- `A005843(A029578(n+1))-A000120(n)` -/
def P16104172842346590600.Spec : Prop :=
  ∀ n, P16104172842346590600.a n = A273926 (n + 1)

end A273926

/-! ## A273926.P9377372830269693336

`A022998(n)-A000120(A002265(2*n))`
-/

namespace A273926.P9377372830269693336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n - A000120 (A002265 (2 * n)).toNat

end

end A273926.P9377372830269693336

namespace A273926

/-- `A022998(n)-A000120(A002265(2*n))` -/
def P9377372830269693336.Spec : Prop :=
  ∀ n, P9377372830269693336.a n = A273926 (n + 1)

end A273926

/-! ## A273926.P2207602447592637108

`A000035(n)+A022998(n)-A000120(n)`
-/

namespace A273926.P2207602447592637108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (A022998 n - A000120 n)

end

end A273926.P2207602447592637108

namespace A273926

/-- `A000035(n)+A022998(n)-A000120(n)` -/
def P2207602447592637108.Spec : Prop :=
  ∀ n, P2207602447592637108.a n = A273926 (n + 1)

end A273926

/-! ## A273926.P14381613835621462005

`A022998(n)-A000120(n-A000035(n))`
-/

namespace A273926.P14381613835621462005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n - A000120 ((n : ℤ) - A000035 n).toNat

end

end A273926.P14381613835621462005

namespace A273926

/-- `A022998(n)-A000120(n-A000035(n))` -/
def P14381613835621462005.Spec : Prop :=
  ∀ n, P14381613835621462005.a n = A273926 (n + 1)

end A273926

/-!
# A273928: Amicable 5-tuples: (x1,...,x5) such that sigma(x1)=...=sigma(x5)=x1+...+x5, x1

The programs for A273928, there is no canonical definition to state claims against.
-/

/-! ## A273928.P9392215003329149035

`A233553(5*n+1)`
-/

namespace A273928.P9392215003329149035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233553 (5 * n + 1)

end

end A273928.P9392215003329149035

/-! ## A273928.P15294729926174170963

`lcm(2, A233553(A016861(n)))`
-/

namespace A273928.P15294729926174170963
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233553 (A016861 n).toNat)

end

end A273928.P15294729926174170963

/-! ## A273928.P3312565574422272624

`A259195(n)+A233553(A016861(n))`
-/

namespace A273928.P3312565574422272624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259195 n + A233553 (A016861 n).toNat

end

end A273928.P3312565574422272624

/-! ## A273928.P4144115016193508509

`A358910(n)+A233553(A016861(n))`
-/

namespace A273928.P4144115016193508509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358910 n + A233553 (A016861 n).toNat

end

end A273928.P4144115016193508509

/-! ## A273928.P10763836682349673478

`A233553(A016861(n))+A000007(n+2)`
-/

namespace A273928.P10763836682349673478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233553 (A016861 n).toNat + A000007 (n + 2)

end

end A273928.P10763836682349673478

/-!
# A273929: Numbers that are congruent to {5, 6, 7} mod 8 and are squarefree.

The programs for A273929, the canonical program `A273929.P9327079910848474256` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273929 has offset 1).

The definition of A273929 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273929.P9327079910848474256

`eq[n, A007913(or(4, n))]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A273929

/-- `eq[n, A007913(or(4, n))]` -/
def P9327079910848474256.Spec : Prop :=
  ∀ n, (P9327079910848474256.a n : ℤ) = A273929 (n + 1)

theorem P9327079910848474256.correct : P9327079910848474256.Spec := by
  intro n
  simp only [A273929, Nat.add_sub_cancel]

end A273929

/-! ## A273929.P3844724134316002312

`record[A007913(or(4, n+1))]`
-/

namespace A273929.P3844724134316002312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (Nat.lor 4 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273929.P3844724134316002312

namespace A273929

/-- `record[A007913(or(4, n+1))]` -/
def P3844724134316002312.Spec : Prop :=
  ∀ n, P3844724134316002312.a n = A273929 (n + 1)

end A273929

/-! ## A273929.P10949236764377438704

`record[A007947(or(4, n)+1)]`
-/

namespace A273929.P10949236764377438704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Nat.lor 4 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273929.P10949236764377438704

namespace A273929

/-- `record[A007947(or(4, n)+1)]` -/
def P10949236764377438704.Spec : Prop :=
  ∀ n, P10949236764377438704.a n = A273929 (n + 1)

end A273929

/-! ## A273929.P2348919997530726456

`filter[A047574(n+1), A008966(#)]`
-/

namespace A273929.P2348919997530726456
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A273929.P2348919997530726456

namespace A273929

/-- `filter[A047574(n+1), A008966(#)]` -/
def P2348919997530726456.Spec : Prop :=
  ∀ n, P2348919997530726456.a n = A273929 (n + 1)

end A273929

/-! ## A273929.P6003294398164072315

`filter[A047574(n+1), A323154(#)]`
-/

namespace A273929.P6003294398164072315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A273929.P6003294398164072315

namespace A273929

/-- `filter[A047574(n+1), A323154(#)]` -/
def P6003294398164072315.Spec : Prop :=
  ∀ n, P6003294398164072315.a n = A273929 (n + 1)

end A273929

/-! ## A273929.P14520465718373195123

`filter[A047574(n+1), A353559(#)]`
-/

namespace A273929.P14520465718373195123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A273929.P14520465718373195123

namespace A273929

/-- `filter[A047574(n+1), A353559(#)]` -/
def P14520465718373195123.Spec : Prop :=
  ∀ n, P14520465718373195123.a n = A273929 (n + 1)

end A273929

/-! ## A273929.P9134834952585686760

`filter[A047574(n+1), A353627(#)]`
-/

namespace A273929.P9134834952585686760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A273929.P9134834952585686760

namespace A273929

/-- `filter[A047574(n+1), A353627(#)]` -/
def P9134834952585686760.Spec : Prop :=
  ∀ n, P9134834952585686760.a n = A273929 (n + 1)

end A273929

/-! ## A273929.P16466266958759180493

`filter[A047574(n+1), A359834(#)]`
-/

namespace A273929.P16466266958759180493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047574 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A273929.P16466266958759180493

namespace A273929

/-- `filter[A047574(n+1), A359834(#)]` -/
def P16466266958759180493.Spec : Prop :=
  ∀ n, P16466266958759180493.a n = A273929 (n + 1)

end A273929

/-! ## A273929.P11461123072492286821

`∩[A006991(n+1), A047574(n+1)]`
-/

namespace A273929.P11461123072492286821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273929.P11461123072492286821

namespace A273929

/-- `∩[A006991(n+1), A047574(n+1)]` -/
def P11461123072492286821.Spec : Prop :=
  ∀ n, (P11461123072492286821.a n : ℤ) = A273929 (n + 1)

end A273929

/-! ## A273929.P17031756102132160194

`filter[A047566(n+1), A008966(#)]`
-/

namespace A273929.P17031756102132160194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A273929.P17031756102132160194

namespace A273929

/-- `filter[A047566(n+1), A008966(#)]` -/
def P17031756102132160194.Spec : Prop :=
  ∀ n, P17031756102132160194.a n = A273929 (n + 1)

end A273929

/-! ## A273929.P10408197766732328344

`filter[A047566(n+1), A323154(#)]`
-/

namespace A273929.P10408197766732328344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047566 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A273929.P10408197766732328344

namespace A273929

/-- `filter[A047566(n+1), A323154(#)]` -/
def P10408197766732328344.Spec : Prop :=
  ∀ n, P10408197766732328344.a n = A273929 (n + 1)

end A273929

/-! ## A273929.P348409913733294649

`filter[A047575(n+2), A008966(#)]`
-/

namespace A273929.P348409913733294649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047575 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A273929.P348409913733294649

namespace A273929

/-- `filter[A047575(n+2), A008966(#)]` -/
def P348409913733294649.Spec : Prop :=
  ∀ n, P348409913733294649.a n = A273929 (n + 1)

end A273929

/-! ## A273929.P6834610662987032044

`∩[A006991(n+1), A047566(n+1)]`
-/

namespace A273929.P6834610662987032044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273929.P6834610662987032044

namespace A273929

/-- `∩[A006991(n+1), A047566(n+1)]` -/
def P6834610662987032044.Spec : Prop :=
  ∀ n, (P6834610662987032044.a n : ℤ) = A273929 (n + 1)

end A273929

/-! ## A273929.P16722989177706305525

`∩[A006991(n+1), A047575(n+1)]`
-/

namespace A273929.P16722989177706305525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273929.P16722989177706305525

namespace A273929

/-- `∩[A006991(n+1), A047575(n+1)]` -/
def P16722989177706305525.Spec : Prop :=
  ∀ n, (P16722989177706305525.a n : ℤ) = A273929 (n + 1)

end A273929

/-! ## A273929.P2542911114190918818

`∩[A005117(n+1), A047566(n+1)]`
-/

namespace A273929.P2542911114190918818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047566 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273929.P2542911114190918818

namespace A273929

/-- `∩[A005117(n+1), A047566(n+1)]` -/
def P2542911114190918818.Spec : Prop :=
  ∀ n, (P2542911114190918818.a n : ℤ) = A273929 (n + 1)

end A273929

/-! ## A273929.P10913682250608412050

`∩[A005117(n+1), A047574(n+1)]`
-/

namespace A273929.P10913682250608412050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047574 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273929.P10913682250608412050

namespace A273929

/-- `∩[A005117(n+1), A047574(n+1)]` -/
def P10913682250608412050.Spec : Prop :=
  ∀ n, (P10913682250608412050.a n : ℤ) = A273929 (n + 1)

end A273929

/-! ## A273929.P2681412568065512071

`∩[A005117(n+1), A047575(n+1)]`
-/

namespace A273929.P2681412568065512071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047575 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273929.P2681412568065512071

namespace A273929

/-- `∩[A005117(n+1), A047575(n+1)]` -/
def P2681412568065512071.Spec : Prop :=
  ∀ n, (P2681412568065512071.a n : ℤ) = A273929 (n + 1)

end A273929

/-! ## A273929.P8612333237404016569

`∩[A047566(n+1), A064594(n+1)]`
-/

namespace A273929.P8612333237404016569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047566 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273929.P8612333237404016569

namespace A273929

/-- `∩[A047566(n+1), A064594(n+1)]` -/
def P8612333237404016569.Spec : Prop :=
  ∀ n, (P8612333237404016569.a n : ℤ) = A273929 (n + 1)

end A273929

/-! ## A273929.P3895038430853544170

`∩[A047574(n+1), A064594(n+1)]`
-/

namespace A273929.P3895038430853544170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273929.P3895038430853544170

namespace A273929

/-- `∩[A047574(n+1), A064594(n+1)]` -/
def P3895038430853544170.Spec : Prop :=
  ∀ n, (P3895038430853544170.a n : ℤ) = A273929 (n + 1)

end A273929

/-! ## A273929.P13563593779169487055

`∩[A047574(n+1), A210490(n+1)]`
-/

namespace A273929.P13563593779169487055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210490 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A273929.P13563593779169487055

namespace A273929

/-- `∩[A047574(n+1), A210490(n+1)]` -/
def P13563593779169487055.Spec : Prop :=
  ∀ n, (P13563593779169487055.a n : ℤ) = A273929 (n + 1)

end A273929

/-!
# A273930: Amicable 5-tuples: (x1,...,x5) such that sigma(x1)=...=sigma(x5)=x1+...+x5, x1

The programs for A273930, there is no canonical definition to state claims against.
-/

/-! ## A273930.P1307323019979328122

`A233553(5*n+2)`
-/

namespace A273930.P1307323019979328122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233553 (5 * n + 2)

end

end A273930.P1307323019979328122

/-! ## A273930.P16161733286786441757

`lcm(2, A233553(A016873(n)))`
-/

namespace A273930.P16161733286786441757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233553 (A016873 n).toNat)

end

end A273930.P16161733286786441757

/-! ## A273930.P13700508284547090568

`A259195(n)+A233553(A016873(n))`
-/

namespace A273930.P13700508284547090568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259195 n + A233553 (A016873 n).toNat

end

end A273930.P13700508284547090568

/-! ## A273930.P368998080880016530

`A358910(n)+A233553(A016873(n))`
-/

namespace A273930.P368998080880016530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358910 n + A233553 (A016873 n).toNat

end

end A273930.P368998080880016530

/-! ## A273930.P980934698193744006

`A233553(A016873(n))/A323022(n+2)`
-/

namespace A273930.P980934698193744006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A233553 (A016873 n).toNat : ℚ) / (A323022 (n + 2) : ℚ)

end

end A273930.P980934698193744006

/-!
# A273931: Amicable 5-tuples: (x1,...,x5) such that sigma(x1)=...=sigma(x5)=x1+...+x5, x1

The programs for A273931, there is no canonical definition to state claims against.
-/

/-! ## A273931.P6801662481775925773

`A233553(5*n+3)`
-/

namespace A273931.P6801662481775925773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233553 (5 * n + 3)

end

end A273931.P6801662481775925773

/-! ## A273931.P8396351310469548772

`lcm(2, A233553(A016885(n)))`
-/

namespace A273931.P8396351310469548772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233553 (A016885 n).toNat)

end

end A273931.P8396351310469548772

/-! ## A273931.P3740264261031110276

`A233553(A016885(n))+A086016(n)`
-/

namespace A273931.P3740264261031110276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233553 (A016885 n).toNat + A086016 n

end

end A273931.P3740264261031110276

/-! ## A273931.P13564787467928406931

`A259195(n)+A233553(A016885(n))`
-/

namespace A273931.P13564787467928406931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259195 n + A233553 (A016885 n).toNat

end

end A273931.P13564787467928406931

/-! ## A273931.P8412737718872839591

`A358910(n)+A233553(A016885(n))`
-/

namespace A273931.P8412737718872839591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358910 n + A233553 (A016885 n).toNat

end

end A273931.P8412737718872839591

/-!
# A273932: Integers m such that ceiling(sqrt(m!)) is prime.

The programs for A273932, there is no canonical definition to state claims against.
-/

/-! ## A273932.P6512893946983354827

`A324753(A201689(n))+A270831(n+1)`
-/

namespace A273932.P6512893946983354827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324753 (A201689 n).toNat + A270831 (n + 1)

end

end A273932.P6512893946983354827

/-!
# A273933: Amicable 5-tuples: (x1,...,x5) such that sigma(x1)=...=sigma(x5)=x1+...+x5, x1

The programs for A273933, there is no canonical definition to state claims against.
-/

/-! ## A273933.P9754948484702360421

`A233553(5*n+4)`
-/

namespace A273933.P9754948484702360421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233553 (5 * n + 4)

end

end A273933.P9754948484702360421

/-! ## A273933.P17000333859313247415

`lcm(2, A233553(A016897(n)))`
-/

namespace A273933.P17000333859313247415
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233553 (A016897 n).toNat)

end

end A273933.P17000333859313247415

/-! ## A273933.P7462167064150916017

`A233553(A016897(n))+A086016(n)`
-/

namespace A273933.P7462167064150916017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233553 (A016897 n).toNat + A086016 n

end

end A273933.P7462167064150916017

/-! ## A273933.P3477385159734182028

`A259195(n)+A233553(A016897(n))`
-/

namespace A273933.P3477385159734182028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259195 n + A233553 (A016897 n).toNat

end

end A273933.P3477385159734182028

/-! ## A273933.P14039670796099287924

`A358910(n)+A233553(A016897(n))`
-/

namespace A273933.P14039670796099287924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358910 n + A233553 (A016897 n).toNat

end

end A273933.P14039670796099287924

/-!
# A273934: Amicable 5-tuples: (x1,...,x5) such that sigma(x1)=...=sigma(x5)=x1+...+x5, x1

The programs for A273934, there is no canonical definition to state claims against.
-/

/-! ## A273934.P5108484732998619959

`A233553(5*(n+1))`
-/

namespace A273934.P5108484732998619959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233553 (5 * (n + 1))

end

end A273934.P5108484732998619959

/-! ## A273934.P17960354127343616595

`lcm(2, A233553(A257222(n+1)))`
-/

namespace A273934.P17960354127343616595
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A233553 (A257222 (n + 1)).toNat)

end

end A273934.P17960354127343616595

/-! ## A273934.P18424932176907669560

`A233553(A257222(n+1))+A086016(n)`
-/

namespace A273934.P18424932176907669560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233553 (A257222 (n + 1)).toNat + A086016 n

end

end A273934.P18424932176907669560

/-! ## A273934.P766393928032594035

`A259195(n)+A233553(A257222(n+1))`
-/

namespace A273934.P766393928032594035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259195 n + A233553 (A257222 (n + 1)).toNat

end

end A273934.P766393928032594035

/-! ## A273934.P14799469613466672530

`A358910(n)+A233553(A257222(n+1))`
-/

namespace A273934.P14799469613466672530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358910 n + A233553 (A257222 (n + 1)).toNat

end

end A273934.P14799469613466672530

/-!
# A273935: Number of ways to arrange n women and n men around a circular table so that they can be divided into n nonintersecting pairs of 1 woman and 1 man sitting side-by-side.

The programs for A273935, there is no canonical definition to state claims against.
-/

/-! ## A273935.P5887530301461929035

`∏[A103505(n)]*A255047(n)`
-/

namespace A273935.P5887530301461929035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103505 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A255047 n

end

end A273935.P5887530301461929035

/-! ## A273935.P6656035155366701088

`A000142(n)*A029767(A028310(n))`
-/

namespace A273935.P6656035155366701088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A029767 (A028310 n).toNat

end

end A273935.P6656035155366701088

/-! ## A273935.P13597423815531225644

`A000007(n)+A000142(n)*A029767(n)`
-/

namespace A273935.P13597423815531225644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + A000142 n * A029767 n

end

end A273935.P13597423815531225644

/-! ## A273935.P4246897385698353248

`(A000142(n)*A029767(n))^A178334(n)`
-/

namespace A273935.P4246897385698353248
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 n * A029767 n : ℚ) ^ (A178334 n : ℤ)

end

end A273935.P4246897385698353248

/-! ## A273935.P11111768668656403722

`A008683((n+1)²)+A000142(n)*A029767(n)`
-/

namespace A273935.P11111768668656403722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1) ^ 2) + A000142 n * A029767 n

end

end A273935.P11111768668656403722

/-!
# A273938: Sum of the divisors of the n-th odd prime power.

The programs for A273938, the canonical program `A273938.P2418639149800182821` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273938 has offset 1).

The definition of A273938 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A061345, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A273938.P2418639149800182821

`A000203(A061345(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A273938

/-- `A000203(A061345(n))` -/
def P2418639149800182821.Spec : Prop :=
  ∀ n, P2418639149800182821.a n = A273938 (n + 1)

theorem P2418639149800182821.correct : P2418639149800182821.Spec := by
  intro n
  simp only [A273938, Nat.add_sub_cancel]

end A273938

/-! ## A273938.P4219482524081910222

`A000203(2*lt[A001221(2*n+1), 2]+1)`
-/

namespace A273938.P4219482524081910222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (2 * SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A273938.P4219482524081910222

namespace A273938

/-- `A000203(2*lt[A001221(2*n+1), 2]+1)` -/
def P4219482524081910222.Spec : Prop :=
  ∀ n, P4219482524081910222.a n = A273938 (n + 1)

end A273938

/-! ## A273938.P10461658009008172082

`∑{d}[record[A020639(2*n+1)^A001222(2*n+1)], #]`
-/

namespace A273938.P10461658009008172082
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020639 (2 * n + 1) : ℚ) ^ (A001222 (2 * n + 1) : ℤ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A273938.P10461658009008172082

namespace A273938

/-- `∑{d}[record[A020639(2*n+1)^A001222(2*n+1)], #]` -/
def P10461658009008172082.Spec : Prop :=
  ∀ n, (P10461658009008172082.a n : ℤ) = A273938 (n + 1)

end A273938

/-! ## A273938.P1870722290788366804

`A000203(sqrt(record[(2*n+1)^(3-A001221(2*n+1))]))`
-/

namespace A273938.P1870722290788366804
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℚ) ^ (3 - A001221 (2 * n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℝ))).toNat

end

end A273938.P1870722290788366804

namespace A273938

/-- `A000203(sqrt(record[(2*n+1)^(3-A001221(2*n+1))]))` -/
def P1870722290788366804.Spec : Prop :=
  ∀ n, P1870722290788366804.a n = A273938 (n + 1)

end A273938

/-! ## A273938.P12814616193114484596

`A000203(record[A034699(2*n+1)])`
-/

namespace A273938.P12814616193114484596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034699 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273938.P12814616193114484596

namespace A273938

/-- `A000203(record[A034699(2*n+1)])` -/
def P12814616193114484596.Spec : Prop :=
  ∀ n, P12814616193114484596.a n = A273938 (n + 1)

end A273938

/-! ## A273938.P14739545104101220030

`A000203(record[A330691(2*n+1)])`
-/

namespace A273938.P14739545104101220030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330691 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273938.P14739545104101220030

namespace A273938

/-- `A000203(record[A330691(2*n+1)])` -/
def P14739545104101220030.Spec : Prop :=
  ∀ n, P14739545104101220030.a n = A273938 (n + 1)

end A273938

/-! ## A273938.P8176457333560170947

`A000203(record[A330741(2*n+1)])`
-/

namespace A273938.P8176457333560170947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330741 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273938.P8176457333560170947

namespace A273938

/-- `A000203(record[A330741(2*n+1)])` -/
def P8176457333560170947.Spec : Prop :=
  ∀ n, P8176457333560170947.a n = A273938 (n + 1)

end A273938

/-! ## A273938.P5850329524814780285

`∑{d}[record[4*n/A001221(4*n+2)!]+1, #]`
-/

namespace A273938.P5850329524814780285
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n : ℚ) / (Nat.factorial (A001221 (4 * n + 2)).toNat : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, d

end

end A273938.P5850329524814780285

namespace A273938

/-- `∑{d}[record[4*n/A001221(4*n+2)!]+1, #]` -/
def P5850329524814780285.Spec : Prop :=
  ∀ n, (P5850329524814780285.a n : ℤ) = A273938 (n + 1)

end A273938

/-! ## A273938.P5579174724663569474

`A000203(lt[A001221(n+1), gcd(2, n)]+1)`
-/

namespace A273938.P5579174724663569474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A273938.P5579174724663569474

namespace A273938

/-- `A000203(lt[A001221(n+1), gcd(2, n)]+1)` -/
def P5579174724663569474.Spec : Prop :=
  ∀ n, P5579174724663569474.a n = A273938 (n + 1)

end A273938

/-! ## A273938.P4770900088952429095

`A000203(record[lcm(2, n)/a(A001221(n))])/3` with `a(0)=2`
-/

namespace A273938.P4770900088952429095
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (Nat.lcm 2 n : ℚ) / f1 (A001221 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat : ℚ) / 3

end

end A273938.P4770900088952429095

namespace A273938

/-- `A000203(record[lcm(2, n)/a(A001221(n))])/3` -/
def P4770900088952429095.Spec : Prop :=
  ∀ n, P4770900088952429095.a n = (A273938 (n + 1) : ℚ)

end A273938

/-! ## A273938.P2365097318903066582

`A000203(eq[(-1)^n, A001221(n+1)!]+1)`
-/

namespace A273938.P2365097318903066582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A001221 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℤ)) n + 1)

end

end A273938.P2365097318903066582

namespace A273938

/-- `A000203(eq[(-1)^n, A001221(n+1)!]+1)` -/
def P2365097318903066582.Spec : Prop :=
  ∀ n, P2365097318903066582.a n = A273938 (n + 1)

end A273938

/-! ## A273938.P12979546331929395545

`A000203(lt[A001221(n+1), -a(n-1)]+1)` with `a(0)=2`
-/

namespace A273938.P12979546331929395545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  -f2 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A273938.P12979546331929395545

namespace A273938

/-- `A000203(lt[A001221(n+1), -a(n-1)]+1)` -/
def P12979546331929395545.Spec : Prop :=
  ∀ n, P12979546331929395545.a n = A273938 (n + 1)

end A273938

/-! ## A273938.P1951761722443763611

`A000203(record[A324388(2*n+1)])`
-/

namespace A273938.P1951761722443763611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324388 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273938.P1951761722443763611

namespace A273938

/-- `A000203(record[A324388(2*n+1)])` -/
def P1951761722443763611.Spec : Prop :=
  ∀ n, P1951761722443763611.a n = A273938 (n + 1)

end A273938

/-! ## A273938.P3494587971822285758

`A000203(record[A354933(2*n+1)])`
-/

namespace A273938.P3494587971822285758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354933 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273938.P3494587971822285758

namespace A273938

/-- `A000203(record[A354933(2*n+1)])` -/
def P3494587971822285758.Spec : Prop :=
  ∀ n, P3494587971822285758.a n = A273938 (n + 1)

end A273938

/-! ## A273938.P4591853320679033832

`A000203(record[A336650(n+1)])`
-/

namespace A273938.P4591853320679033832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336650 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273938.P4591853320679033832

namespace A273938

/-- `A000203(record[A336650(n+1)])` -/
def P4591853320679033832.Spec : Prop :=
  ∀ n, P4591853320679033832.a n = A273938 (n + 1)

end A273938

/-! ## A273938.P10222114120221523150

`A000203(record[A222416(2*n+1)])`
-/

namespace A273938.P10222114120221523150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222416 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273938.P10222114120221523150

namespace A273938

/-- `A000203(record[A222416(2*n+1)])` -/
def P10222114120221523150.Spec : Prop :=
  ∀ n, P10222114120221523150.a n = A273938 (n + 1)

end A273938

/-! ## A273938.P10901323458507618848

`A000593(A235868(n+2))`
-/

namespace A273938.P10901323458507618848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A235868 (n + 2)).toNat

end

end A273938.P10901323458507618848

namespace A273938

/-- `A000593(A235868(n+2))` -/
def P10901323458507618848.Spec : Prop :=
  ∀ n, P10901323458507618848.a n = A273938 (n + 1)

end A273938

/-! ## A273938.P15113031290874833400

`A023888(A061345(2*n-n))`
-/

namespace A273938.P15113031290874833400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (A061345 (2 * n - n)).toNat

end

end A273938.P15113031290874833400

namespace A273938

/-- `A023888(A061345(2*n-n))` -/
def P15113031290874833400.Spec : Prop :=
  ∀ n, P15113031290874833400.a n = A273938 (n + 1)

end A273938

/-! ## A273938.P6240308486680085717

`A000203(record[A028233(2*n+1)])`
-/

namespace A273938.P6240308486680085717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028233 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A273938.P6240308486680085717

namespace A273938

/-- `A000203(record[A028233(2*n+1)])` -/
def P6240308486680085717.Spec : Prop :=
  ∀ n, P6240308486680085717.a n = A273938 (n + 1)

end A273938

/-! ## A273938.P8080339923008492700

`A000593(A278568(n+1))`
-/

namespace A273938.P8080339923008492700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000593 (A278568 (n + 1)).toNat

end

end A273938.P8080339923008492700

namespace A273938

/-- `A000593(A278568(n+1))` -/
def P8080339923008492700.Spec : Prop :=
  ∀ n, P8080339923008492700.a n = A273938 (n + 1)

end A273938

/-!
# A273939: a(0) = 1, a(1) = 2; for k>0, a(2*k) = k*a(2*k-1) + a(2*k-2), a(2*k+1) = a(2*k) + a(2*k-1).

The programs for A273939, the canonical program `A273939.P15009550147313335799` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273939 has offset 0).

The definition of A273939 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A056921, A056922, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A273939.P15009550147313335799

`A056921(n)+A056922(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A273939

/-- `A056921(n)+A056922(n)` -/
def P15009550147313335799.Spec : Prop :=
  ∀ n, P15009550147313335799.a n = A273939 n

theorem P15009550147313335799.correct : P15009550147313335799.Spec := by
  intro n
  simp only [A273939]

end A273939

/-! ## A273939.P5725434275972040

`a(n-2)+a(n-1)*A057979(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A273939.P5725434275972040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) + a (n - 1) * A057979 (n + 1)

end

end A273939.P5725434275972040

namespace A273939

/-- `a(n-2)+a(n-1)*A057979(n+1)` -/
def P5725434275972040.Spec : Prop :=
  ∀ n, P5725434275972040.a n = A273939 n

end A273939

/-! ## A273939.P12789218142602270225

`∪[A058798(n+1), Δ[A058798(n+1)]]`
-/

namespace A273939.P12789218142602270225
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058798 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058798 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A273939.P12789218142602270225

namespace A273939

/-- `∪[A058798(n+1), Δ[A058798(n+1)]]` -/
def P12789218142602270225.Spec : Prop :=
  ∀ n, (P12789218142602270225.a n : ℤ) = A273939 n

end A273939

/-! ## A273939.P9505000055420954513

`A056921(n)+A121749(n+1)/A065033(n)!`
-/

namespace A273939.P9505000055420954513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056921 n : ℚ) + (A121749 (n + 1) : ℚ) / (Nat.factorial (A065033 n).toNat : ℚ)

end

end A273939.P9505000055420954513

namespace A273939

/-- `A056921(n)+A121749(n+1)/A065033(n)!` -/
def P9505000055420954513.Spec : Prop :=
  ∀ n, P9505000055420954513.a n = (A273939 n : ℚ)

end A273939

/-! ## A273939.P3735603295344321659

`A056921(n)+A121749(n+1)/A110654(n)!`
-/

namespace A273939.P3735603295344321659
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056921 n : ℚ) + (A121749 (n + 1) : ℚ) / (Nat.factorial (A110654 n).toNat : ℚ)

end

end A273939.P3735603295344321659

namespace A273939

/-- `A056921(n)+A121749(n+1)/A110654(n)!` -/
def P3735603295344321659.Spec : Prop :=
  ∀ n, P3735603295344321659.a n = (A273939 n : ℚ)

end A273939

/-! ## A273939.P5987394527041202291

`A056921(n)+A121749(n+1)/A081123(n+1)`
-/

namespace A273939.P5987394527041202291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056921 n : ℚ) + (A121749 (n + 1) : ℚ) / (A081123 (n + 1) : ℚ)

end

end A273939.P5987394527041202291

namespace A273939

/-- `A056921(n)+A121749(n+1)/A081123(n+1)` -/
def P5987394527041202291.Spec : Prop :=
  ∀ n, P5987394527041202291.a n = (A273939 n : ℚ)

end A273939

/-!
# A273943: Put and say how often: a(n) = n/2 if n is even, else a(n) = number of matches of "a(n-1)" in the concatenation of all "a(i)" with i < n, where "x" denotes the decimal string of x.

The programs for A273943, there is no canonical definition to state claims against.
-/

/-! ## A273943.P16206704396302597723

`ceil(n/A329869(n^(n%2)+1))`
-/

namespace A273943.P16206704396302597723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) / (A329869 (n ^ (n % 2) + 1) : ℚ)⌉

end

end A273943.P16206704396302597723

/-! ## A273943.P9239468041993610957

`lcm(A174571(2*n), A290601(∏[char[∑[n]]+1]))`
-/

namespace A273943.P9239468041993610957
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A174571 (2 * n)) (A290601 (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A273943.P9239468041993610957

/-! ## A273943.P15077274963915903473

`∑{digits}[A039617(xor(1, n)), #]`
-/

namespace A273943.P15077274963915903473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039617 (Nat.xor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A273943.P15077274963915903473

/-! ## A273943.P7796358984997648146

`dr(A039617(A004442(n)))`
-/

namespace A273943.P7796358984997648146
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A039617 (A004442 n).toNat)

end

end A273943.P7796358984997648146

/-! ## A273943.P4999925695106815819

`A374684(A143438(n+1))`
-/

namespace A273943.P4999925695106815819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374684 (A143438 (n + 1)).toNat

end

end A273943.P4999925695106815819

/-!
# A273945: Odd prime factors of generalized Fermat numbers of the form 3^(2^m) + 1 with m >= 0.

The programs for A273945, there is no canonical definition to state claims against.
-/

/-! ## A273945.P6708047341173971976

`p?[record[A332224(2*n+5)+1]]`
-/

namespace A273945.P6708047341173971976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332224 (2 * n + 5) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A273945.P6708047341173971976

/-!
# A273946: Odd prime factors of generalized Fermat numbers of the form 5^(2^m) + 1 with m >= 0.

The programs for A273946, there is no canonical definition to state claims against.
-/

/-! ## A273946.P11278475099792213190

`A214782(a(n-2)+3)` with `a(0)=3, a(1)=13, a(2)=17`
-/

namespace A273946.P11278475099792213190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 13, 17] fun n a =>
  A214782 (a (n - 2) + 3).toNat

end

end A273946.P11278475099792213190

/-!
# A273948: Odd prime factors of generalized Fermat numbers of the form 7^(2^m) + 1 with m >= 0.

The programs for A273948, there is no canonical definition to state claims against.
-/

/-! ## A273948.P2188168583456638910

`p?[round(A127643(n+1)/3)]`
-/

namespace A273948.P2188168583456638910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A127643 (n + 1) : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A273948.P2188168583456638910

/-! ## A273948.P3453808042226696176

`record[A020639(round(A127643(n+1)/3))]`
-/

namespace A273948.P3453808042226696176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A127643 (n + 1) : ℚ) / 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273948.P3453808042226696176

/-!
# A273949: Odd prime factors of generalized Fermat numbers of the form 11^(2^m) + 1 with m >= 0.

The programs for A273949, there is no canonical definition to state claims against.
-/

/-! ## A273949.P8716497124559773186

`A223036(A127469(n+1))`
-/

namespace A273949.P8716497124559773186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223036 (A127469 (n + 1)).toNat

end

end A273949.P8716497124559773186

/-!
# A273950: Prime factors of generalized Fermat numbers of the form 12^(2^m) + 1 with m >= 0.

The programs for A273950, there is no canonical definition to state claims against.
-/

/-! ## A273950.P219451507067472406

`A078752(A078783(3*n+2))%A078798(3*n+5)`
-/

namespace A273950.P219451507067472406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078752 (A078783 (3 * n + 2)).toNat) (A078798 (3 * n + 5))

end

end A273950.P219451507067472406

/-!
# A273952: E.g.f. A(x) satisfies: A( sqrt( A(x^2*exp(-x)) ) ) = x, where A(x) = Sum_{n>=1} a(n)*x^n/(2^(n-1)*(n-1)!).

The programs for A273952, there is no canonical definition to state claims against.
-/

/-! ## A273952.P1280937242480932093

`A132118(A103339(∏[ceil(n!/2)]))`
-/

namespace A273952.P1280937242480932093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.factorial n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132118 (A103339 (∏ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A273952.P1280937242480932093

/-! ## A273952.P15852379976688534040

`A132118(A103339(∏[round(n!/2)]))`
-/

namespace A273952.P15852379976688534040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.factorial n : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132118 (A103339 (∏ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A273952.P15852379976688534040

/-!
# A273953: E.g.f. satisfies A(x) = Sum_{n>=0} x^n/n! * exp(n/2*x) * A(x)^(n/2).

The programs for A273953, there is no canonical definition to state claims against.
-/

/-! ## A273953.P13457391061658995056

`A380406(n)/A000079(n)`
-/

namespace A273953.P13457391061658995056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380406 n : ℚ) / (A000079 n : ℚ)

end

end A273953.P13457391061658995056

/-! ## A273953.P5702245605875473424

`A380406(n)/∑[A011782(n)]`
-/

namespace A273953.P5702245605875473424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380406 n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A273953.P5702245605875473424

/-! ## A273953.P2727519495464782766

`A380406(n)/Δ[A000225(n)]`
-/

namespace A273953.P2727519495464782766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380406 n : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A273953.P2727519495464782766

/-! ## A273953.P13303670578948366761

`A380406(n)/A011782(n+1)`
-/

namespace A273953.P13303670578948366761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380406 n : ℚ) / (A011782 (n + 1) : ℚ)

end

end A273953.P13303670578948366761

/-! ## A273953.P493658029425873810

`A380406(n)/A300653(A361751(n+1))`
-/

namespace A273953.P493658029425873810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A380406 n : ℚ) / (A300653 (A361751 (n + 1)).toNat : ℚ)

end

end A273953.P493658029425873810

/-!
# A273954: E.g.f. satisfies: A(x) = Sum_{n>=0} x^n/n! * exp(n*x) * A(x)^n.

The programs for A273954, there is no canonical definition to state claims against.
-/

/-! ## A273954.P5371744168137467982

`A138737(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A273954.P5371744168137467982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A138737 n - (n : ℤ) * a (n - 1)

end

end A273954.P5371744168137467982

/-! ## A273954.P2590158893464302121

`A047388(A303057(n)+A087949(n))`
-/

namespace A273954.P2590158893464302121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047388 (A303057 n + A087949 n).toNat

end

end A273954.P2590158893464302121

/-!
# A273956: G.f. A(x) satisfies: A(x - x/(1-x)*A(x)) = x.

The programs for A273956, there is no canonical definition to state claims against.
-/

/-! ## A273956.P10901168277107568410

`A057362(A069271(n))+1`
-/

namespace A273956.P10901168277107568410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057362 (A069271 n).toNat + 1

end

end A273956.P10901168277107568410

/-! ## A273956.P17879683078813291259

`A004396(A264910(n)+1)`
-/

namespace A273956.P17879683078813291259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A264910 n + 1).toNat

end

end A273956.P17879683078813291259

/-!
# A273957: G.f. A(x) satisfies: A(x - x/(1+x)*A(x)) = x.

The programs for A273957, there is no canonical definition to state claims against.
-/

/-! ## A273957.P3101127139392223383

`A241317(∑[a(n-1)+3])` with `a(0)=4, a(1)=1, a(2)=2, a(3)=4`
-/

namespace A273957.P3101127139392223383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 1, 2, 4] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241317 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273957.P3101127139392223383

/-! ## A273957.P13197680106872627630

`A004526(A364734(n)+A000108(n))`
-/

namespace A273957.P13197680106872627630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A364734 n + A000108 n).toNat

end

end A273957.P13197680106872627630

/-!
# A273958: G.f. A(x) satisfies: x*A(x) + x^2*A(x)^2 = C(x)^2, where C(x) = x + C(x)^2 is a g.f. of the Catalan numbers (A000108).

The programs for A273958, there is no canonical definition to state claims against.
-/

/-! ## A273958.P12348942441384325722

`A000108(n+1)-A055395(n+2)`
-/

namespace A273958.P12348942441384325722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 1) - A055395 (n + 2)

end

end A273958.P12348942441384325722

/-! ## A273958.P2346865886006235138

`∑[A000245(n)-Δ[A055395(n+1)]]`
-/

namespace A273958.P2346865886006235138
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055395 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000245 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273958.P2346865886006235138

/-! ## A273958.P951276378835288400

`A208355(2*(n+1))-A055395(n+2)`
-/

namespace A273958.P951276378835288400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * (n + 1)) - A055395 (n + 2)

end

end A273958.P951276378835288400

/-! ## A273958.P354727701883559961

`A068875(n+1)/2-A055395(n+2)`
-/

namespace A273958.P354727701883559961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068875 (n + 1) : ℚ) / 2 - (A055395 (n + 2) : ℚ)

end

end A273958.P354727701883559961

/-! ## A273958.P7591237670550998268

`A039598(∑[n])-A055395(n+2)`
-/

namespace A273958.P7591237670550998268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (∑ j ∈ Finset.range (n + 1), f1 j) - A055395 (n + 2)

end

end A273958.P7591237670550998268

/-!
# A273960: a(n) = (-1)^n*prime(n).

The programs for A273960, the canonical program `A273960.P14447849629000805709` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273960 has offset 1).

The definition of A273960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273960.P14447849629000805709

`-(-1)^n*A000040(n+1)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A273960

/-- `-(-1)^n*A000040(n+1)` -/
def P14447849629000805709.Spec : Prop :=
  ∀ n, P14447849629000805709.a n = A273960 (n + 1)

theorem P14447849629000805709.correct : P14447849629000805709.Spec := by
  intro n
  simp only [A273960, Nat.add_sub_cancel]

end A273960

/-! ## A273960.P9956312520490372042

`xor(-(-1)^n, A006093(n+1))`
-/

namespace A273960.P9956312520490372042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (-((-1) ^ n)) (A006093 (n + 1))

end

end A273960.P9956312520490372042

namespace A273960

/-- `xor(-(-1)^n, A006093(n+1))` -/
def P9956312520490372042.Spec : Prop :=
  ∀ n, P9956312520490372042.a n = A273960 (n + 1)

end A273960

/-! ## A273960.P12526623150909375512

`(1-A008864(n+1))/(-1)^n`
-/

namespace A273960.P12526623150909375512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - A008864 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

end

end A273960.P12526623150909375512

namespace A273960

/-- `(1-A008864(n+1))/(-1)^n` -/
def P12526623150909375512.Spec : Prop :=
  ∀ n, P12526623150909375512.a n = (A273960 (n + 1) : ℚ)

end A273960

/-! ## A273960.P7914405643263757024

`-A000040(n+1)*A033999(n)`
-/

namespace A273960.P7914405643263757024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(A000040 (n + 1) * A033999 n)

end

end A273960.P7914405643263757024

namespace A273960

/-- `-A000040(n+1)*A033999(n)` -/
def P7914405643263757024.Spec : Prop :=
  ∀ n, P7914405643263757024.a n = A273960 (n + 1)

end A273960

/-! ## A273960.P16742273683400434207

`A008866(n+1)-A065091(n+1)`
-/

namespace A273960.P16742273683400434207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008866 (n + 1) - A065091 (n + 1)

end

end A273960.P16742273683400434207

namespace A273960

/-- `A008866(n+1)-A065091(n+1)` -/
def P16742273683400434207.Spec : Prop :=
  ∀ n, P16742273683400434207.a n = A273960 (n + 1)

end A273960

/-! ## A273960.P6243991884732317782

`A107621(n+1)-A107620(n+1)`
-/

namespace A273960.P6243991884732317782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107621 (n + 1) - A107620 (n + 1)

end

end A273960.P6243991884732317782

namespace A273960

/-- `A107621(n+1)-A107620(n+1)` -/
def P6243991884732317782.Spec : Prop :=
  ∀ n, P6243991884732317782.a n = A273960 (n + 1)

end A273960

/-! ## A273960.P11387709209113560683

`A000040(n+1)*A033999(n+1)`
-/

namespace A273960.P11387709209113560683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A033999 (n + 1)

end

end A273960.P11387709209113560683

namespace A273960

/-- `A000040(n+1)*A033999(n+1)` -/
def P11387709209113560683.Spec : Prop :=
  ∀ n, P11387709209113560683.a n = A273960 (n + 1)

end A273960

/-! ## A273960.P16404344743151048211

`(A010673(n)-1)*A000040(n+1)`
-/

namespace A273960.P16404344743151048211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010673 n - 1) * A000040 (n + 1)

end

end A273960.P16404344743151048211

namespace A273960

/-- `(A010673(n)-1)*A000040(n+1)` -/
def P16404344743151048211.Spec : Prop :=
  ∀ n, P16404344743151048211.a n = A273960 (n + 1)

end A273960

/-! ## A273960.P7902706765199246795

`(1-A008864(n+1))*A033999(n)`
-/

namespace A273960.P7902706765199246795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A008864 (n + 1)) * A033999 n

end

end A273960.P7902706765199246795

namespace A273960

/-- `(1-A008864(n+1))*A033999(n)` -/
def P7902706765199246795.Spec : Prop :=
  ∀ n, P7902706765199246795.a n = A273960 (n + 1)

end A273960

/-! ## A273960.P10143184718644615564

`1-A014686(n+1)*A033999(n)`
-/

namespace A273960.P10143184718644615564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014686 (n + 1) * A033999 n

end

end A273960.P10143184718644615564

namespace A273960

/-- `1-A014686(n+1)*A033999(n)` -/
def P10143184718644615564.Spec : Prop :=
  ∀ n, P10143184718644615564.a n = A273960 (n + 1)

end A273960

/-! ## A273960.P15160423465420743427

`A196421(n+1)/A089594(n+1)`
-/

namespace A273960.P15160423465420743427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A196421 (n + 1) : ℚ) / (A089594 (n + 1) : ℚ)

end

end A273960.P15160423465420743427

namespace A273960

/-- `A196421(n+1)/A089594(n+1)` -/
def P15160423465420743427.Spec : Prop :=
  ∀ n, P15160423465420743427.a n = (A273960 (n + 1) : ℚ)

end A273960

/-! ## A273960.P16109581029657329569

`(n-A004442(n))*A000040(n+1)`
-/

namespace A273960.P16109581029657329569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - A004442 n) * A000040 (n + 1)

end

end A273960.P16109581029657329569

namespace A273960

/-- `(n-A004442(n))*A000040(n+1)` -/
def P16109581029657329569.Spec : Prop :=
  ∀ n, P16109581029657329569.a n = A273960 (n + 1)

end A273960

/-! ## A273960.P15027009260147463453

`(Δ[A109613(n)]-1)*A000040(n+1)`
-/

namespace A273960.P15027009260147463453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n - 1) * A000040 (n + 1)

end

end A273960.P15027009260147463453

namespace A273960

/-- `(Δ[A109613(n)]-1)*A000040(n+1)` -/
def P15027009260147463453.Spec : Prop :=
  ∀ n, P15027009260147463453.a n = A273960 (n + 1)

end A273960

/-! ## A273960.P7756524064016825142

`∏[A000040(n+1)/(1-A028815(n))]`
-/

namespace A273960.P7756524064016825142
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (1 - A028815 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A273960.P7756524064016825142

namespace A273960

/-- `∏[A000040(n+1)/(1-A028815(n))]` -/
def P7756524064016825142.Spec : Prop :=
  ∀ n, P7756524064016825142.a n = (A273960 (n + 1) : ℚ)

end A273960

/-! ## A273960.P8958923980507252689

`A000040(n+1)*A008683(-or(n, -2))`
-/

namespace A273960.P8958923980507252689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A008683 (-Int.lor (n : ℤ) (-2)).toNat

end

end A273960.P8958923980507252689

namespace A273960

/-- `A000040(n+1)*A008683(-or(n, -2))` -/
def P8958923980507252689.Spec : Prop :=
  ∀ n, P8958923980507252689.a n = A273960 (n + 1)

end A273960

/-! ## A273960.P18031488619284345170

`A000040(n+1)/(-1)^A020639(n+1)`
-/

namespace A273960.P18031488619284345170
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (-1 : ℚ) ^ (A020639 (n + 1) : ℤ)

end

end A273960.P18031488619284345170

namespace A273960

/-- `A000040(n+1)/(-1)^A020639(n+1)` -/
def P18031488619284345170.Spec : Prop :=
  ∀ n, P18031488619284345170.a n = (A273960 (n + 1) : ℚ)

end A273960

/-! ## A273960.P7309671850173064535

`A000040(n+1)*A008683(and(1, n-1)+1)`
-/

namespace A273960.P7309671850173064535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A008683 (Int.land 1 ((n : ℤ) - 1) + 1).toNat

end

end A273960.P7309671850173064535

namespace A273960

/-- `A000040(n+1)*A008683(and(1, n-1)+1)` -/
def P7309671850173064535.Spec : Prop :=
  ∀ n, P7309671850173064535.a n = A273960 (n + 1)

end A273960

/-! ## A273960.P6293061532446153147

`A000040(n+1)/A008683(and(1, n-3)+1)`
-/

namespace A273960.P6293061532446153147
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) / (A008683 (Int.land 1 ((n : ℤ) - 3) + 1).toNat : ℚ)

end

end A273960.P6293061532446153147

namespace A273960

/-- `A000040(n+1)/A008683(and(1, n-3)+1)` -/
def P6293061532446153147.Spec : Prop :=
  ∀ n, P6293061532446153147.a n = (A273960 (n + 1) : ℚ)

end A273960

/-! ## A273960.P1673130592734089462

`(A000032(gcd(n+1, n-1))-2)*A000040(n+1)`
-/

namespace A273960.P1673130592734089462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 (Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1)) - 2) * A000040 (n + 1)

end

end A273960.P1673130592734089462

namespace A273960

/-- `(A000032(gcd(n+1, n-1))-2)*A000040(n+1)` -/
def P1673130592734089462.Spec : Prop :=
  ∀ n, P1673130592734089462.a n = A273960 (n + 1)

end A273960

/-! ## A273960.P16822610017204055925

`A000040(n+1)*A008683(gcd(n+2, 2*(n+1)))`
-/

namespace A273960.P16822610017204055925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A008683 (Nat.gcd (n + 2) (2 * (n + 1)))

end

end A273960.P16822610017204055925

namespace A273960

/-- `A000040(n+1)*A008683(gcd(n+2, 2*(n+1)))` -/
def P16822610017204055925.Spec : Prop :=
  ∀ n, P16822610017204055925.a n = A273960 (n + 1)

end A273960

/-!
# A273961: Number of nX2 0..3 arrays with no three equal values forming an isosceles right triangle, and new values introduced in 0..3 order.

The programs for A273961, there is no canonical definition to state claims against.
-/

/-! ## A273961.P11668649544193921247

`A273964(∑[n+2])`
-/

namespace A273961.P11668649544193921247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273964 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273961.P11668649544193921247

/-! ## A273961.P2701098978177138086

`A273964(A025747(n)+2)+char[21]`
-/

namespace A273961.P2701098978177138086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  21

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273964 (A025747 n + 2).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A273961.P2701098978177138086

/-! ## A273961.P13939801442480651223

`gcd(A000038(n), A273964(A025747(n)+2))`
-/

namespace A273961.P13939801442480651223
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A273964 (A025747 n + 2).toNat)

end

end A273961.P13939801442480651223

/-! ## A273961.P1290286306903462622

`A000034(2*n)*A273964(A025747(n)+2)`
-/

namespace A273961.P1290286306903462622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A273964 (A025747 n + 2).toNat

end

end A273961.P1290286306903462622

/-! ## A273961.P9351791446980722508

`A273964(A025747(n)+2)/A007318(A007318(2*n))`
-/

namespace A273961.P9351791446980722508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273964 (A025747 n + 2).toNat : ℚ) / (A007318 (A007318 (2 * n)).toNat : ℚ)

end

end A273961.P9351791446980722508

/-!
# A273962: Number of nX3 0..3 arrays with no three equal values forming an isosceles right triangle, and new values introduced in 0..3 order.

The programs for A273962, there is no canonical definition to state claims against.
-/

/-! ## A273962.P14493226902670460723

`A273964(∑[n+3]+1)`
-/

namespace A273962.P14493226902670460723
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273964 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A273962.P14493226902670460723

/-! ## A273962.P4348613041395597037

`A273964(A167614(n+1))+A184955(n)`
-/

namespace A273962.P4348613041395597037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273964 (A167614 (n + 1)).toNat + A184955 n

end

end A273962.P4348613041395597037

/-! ## A273962.P12579649117830574910

`A273964(A167614(n+1))+A185284(n)`
-/

namespace A273962.P12579649117830574910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273964 (A167614 (n + 1)).toNat + A185284 n

end

end A273962.P12579649117830574910

/-! ## A273962.P14776839437187183727

`lcm(A055642(n), A273964(A167614(n+1)))`
-/

namespace A273962.P14776839437187183727
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055642 n) (A273964 (A167614 (n + 1)).toNat)

end

end A273962.P14776839437187183727

/-! ## A273962.P11328580590348186786

`A020985(n)²*A273964(A167614(n+1))`
-/

namespace A273962.P11328580590348186786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A273964 (A167614 (n + 1)).toNat

end

end A273962.P11328580590348186786

/-!
# A273963: Number of nX4 0..3 arrays with no three equal values forming an isosceles right triangle, and new values introduced in 0..3 order.

The programs for A273963, there is no canonical definition to state claims against.
-/

/-! ## A273963.P3553438828471830926

`A273964(A141214(n+1))`
-/

namespace A273963.P3553438828471830926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273964 (A141214 (n + 1)).toNat

end

end A273963.P3553438828471830926

/-! ## A273963.P4692153263504340896

`A273964(A374004(n+1))`
-/

namespace A273963.P4692153263504340896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273964 (A374004 (n + 1)).toNat

end

end A273963.P4692153263504340896

/-! ## A273963.P17923464287590636142

`A273964(A056000(n)+7)`
-/

namespace A273963.P17923464287590636142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273964 (A056000 n + 7).toNat

end

end A273963.P17923464287590636142

/-! ## A273963.P15463327548273309955

`A273964(A052905(n)+9)`
-/

namespace A273963.P15463327548273309955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273964 (A052905 n + 9).toNat

end

end A273963.P15463327548273309955

/-! ## A273963.P6949271012491727077

`A273964(A055999(n)+10)`
-/

namespace A273963.P6949271012491727077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273964 (A055999 n + 10).toNat

end

end A273963.P6949271012491727077

/-!
# A273964: T(n,k)=Number of nXk 0..3 arrays with no three equal values forming an isosceles right triangle, and new values introduced in 0..3 order.

The programs for A273964, there is no canonical definition to state claims against.
-/

/-! ## A273964.P11330552470028114053

`A273968(A043317(n+1))`
-/

namespace A273964.P11330552470028114053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273968 (A043317 (n + 1)).toNat

end

end A273964.P11330552470028114053

/-! ## A273964.P17990838540432627976

`A273968(A044914(n+1))`
-/

namespace A273964.P17990838540432627976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273968 (A044914 (n + 1)).toNat

end

end A273964.P17990838540432627976

/-! ## A273964.P4883501945124210633

`A273968(A049872(n)+1)`
-/

namespace A273964.P4883501945124210633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273968 (A049872 n + 1).toNat

end

end A273964.P4883501945124210633

/-! ## A273964.P5042587260022064097

`A273968(A055648(n+1))`
-/

namespace A273964.P5042587260022064097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273968 (A055648 (n + 1)).toNat

end

end A273964.P5042587260022064097

/-! ## A273964.P9122831140047663714

`A273968(A062003(n)+1)`
-/

namespace A273964.P9122831140047663714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273968 (A062003 n + 1).toNat

end

end A273964.P9122831140047663714

/-!
# A273965: Number of nX2 0..3 arrays with no three equal values forming an isosceles triangle, and new values introduced in 0..3 order.

The programs for A273965, there is no canonical definition to state claims against.
-/

/-! ## A273965.P14501675842731146351

`A273968(∑[n+1]+2)`
-/

namespace A273965.P14501675842731146351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273968 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A273965.P14501675842731146351

/-! ## A273965.P10421993977488051535

`record[A273968(n+2)/A208910(n+1)]`
-/

namespace A273965.P10421993977488051535
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273968 (n + 2) : ℚ) / (A208910 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273965.P10421993977488051535

/-! ## A273965.P16981222045622279565

`record[A273968(n+2)/A208916(n+1)]`
-/

namespace A273965.P16981222045622279565
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273968 (n + 2) : ℚ) / (A208916 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273965.P16981222045622279565

/-! ## A273965.P8370268854930221570

`record[A273968(n+3)/A319298(n+1)]`
-/

namespace A273965.P8370268854930221570
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A273968 (n + 3) : ℚ) / (A319298 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A273965.P8370268854930221570

/-! ## A273965.P2378319644839641943

`A273968(A133263(n+1))*A325825(n+1)`
-/

namespace A273965.P2378319644839641943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273968 (A133263 (n + 1)).toNat * A325825 (n + 1)

end

end A273965.P2378319644839641943

/-!
# A273966: Number of nX3 0..3 arrays with no three equal values forming an isosceles triangle, and new values introduced in 0..3 order.

The programs for A273966, there is no canonical definition to state claims against.
-/

/-! ## A273966.P215721855393138186

`A273968(∑[n+2]+4)`
-/

namespace A273966.P215721855393138186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273968 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A273966.P215721855393138186

/-! ## A273966.P2945461787062279222

`or(char[1], A273968(A167614(n+1)))`
-/

namespace A273966.P2945461787062279222
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A273968 (A167614 (n + 1)).toNat)

end

end A273966.P2945461787062279222

/-! ## A273966.P6069577336488975853

`A273968(A167614(n+1))+A011731(n)`
-/

namespace A273966.P6069577336488975853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273968 (A167614 (n + 1)).toNat + A011731 n

end

end A273966.P6069577336488975853

/-! ## A273966.P7260776260759999793

`A273968(A167614(n+1))+A014083(n)`
-/

namespace A273966.P7260776260759999793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273968 (A167614 (n + 1)).toNat + A014083 n

end

end A273966.P7260776260759999793

/-! ## A273966.P14976961065314094470

`A273968(A167614(n+1))+A025438(n)`
-/

namespace A273966.P14976961065314094470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273968 (A167614 (n + 1)).toNat + A025438 n

end

end A273966.P14976961065314094470

/-!
# A273967: Number of nX4 0..3 arrays with no three equal values forming an isosceles triangle, and new values introduced in 0..3 order.

The programs for A273967, there is no canonical definition to state claims against.
-/

/-! ## A273967.P6671325383025711186

`A273968(A374004(n+1))`
-/

namespace A273967.P6671325383025711186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273968 (A374004 (n + 1)).toNat

end

end A273967.P6671325383025711186

/-! ## A273967.P14079460411315407758

`A273968(A141214(n)+7)`
-/

namespace A273967.P14079460411315407758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273968 (A141214 n + 7).toNat

end

end A273967.P14079460411315407758

/-! ## A273967.P11968098383260742498

`A273968(A052905(n)+9)`
-/

namespace A273967.P11968098383260742498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273968 (A052905 n + 9).toNat

end

end A273967.P11968098383260742498

/-! ## A273967.P5253191041406235415

`A273968(A055999(n)+10)`
-/

namespace A273967.P5253191041406235415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273968 (A055999 n + 10).toNat

end

end A273967.P5253191041406235415

/-! ## A273967.P9003057664049375011

`A273968(eq[5, A066657(n)])`
-/

namespace A273967.P9003057664049375011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273968 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273967.P9003057664049375011

/-!
# A273972: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 20", based on the 5-celled von Neumann neighborhood.

The programs for A273972, the canonical program `A273972.P12055056597393886625` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273972 has offset 0).

The definition of A273972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273972.P9527380836009475266

`and(A026644(n), A274059(n))`
-/

namespace A273972.P9527380836009475266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A026644 n) (A274059 n)

end

end A273972.P9527380836009475266

namespace A273972

/-- `and(A026644(n), A274059(n))` -/
def P9527380836009475266.Spec : Prop :=
  ∀ n, P9527380836009475266.a n = A273972 n

end A273972

/-! ## A273972.P16854510436123897532

`and(A083593(n), A274059(n))`
-/

namespace A273972.P16854510436123897532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083593 n) (A274059 n)

end

end A273972.P16854510436123897532

namespace A273972

/-- `and(A083593(n), A274059(n))` -/
def P16854510436123897532.Spec : Prop :=
  ∀ n, P16854510436123897532.a n = A273972 n

end A273972

/-! ## A273972.P13741802767913912359

`and(A267045(n), A274059(n))`
-/

namespace A273972.P13741802767913912359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267045 n) (A274059 n)

end

end A273972.P13741802767913912359

namespace A273972

/-- `and(A267045(n), A274059(n))` -/
def P13741802767913912359.Spec : Prop :=
  ∀ n, P13741802767913912359.a n = A273972 n

end A273972

/-! ## A273972.P9144462323876162408

`and(A274059(n), A283216(n))`
-/

namespace A273972.P9144462323876162408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A274059 n) (A283216 n)

end

end A273972.P9144462323876162408

namespace A273972

/-- `and(A274059(n), A283216(n))` -/
def P9144462323876162408.Spec : Prop :=
  ∀ n, P9144462323876162408.a n = A273972 n

end A273972

/-! ## A273972.P12055056597393886625

`and(A062878(n+1), A281216(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A273972

/-- `and(A062878(n+1), A281216(n))` -/
def P12055056597393886625.Spec : Prop :=
  ∀ n, P12055056597393886625.a n = A273972 n

theorem P12055056597393886625.correct : P12055056597393886625.Spec := by
  intro n
  simp only [A273972]

end A273972

/-! ## A273972.P8861954981945570669

`and(A266284(n), A274059(n))`
-/

namespace A273972.P8861954981945570669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266284 n) (A274059 n)

end

end A273972.P8861954981945570669

namespace A273972

/-- `and(A266284(n), A274059(n))` -/
def P8861954981945570669.Spec : Prop :=
  ∀ n, P8861954981945570669.a n = A273972 n

end A273972

/-! ## A273972.P3613343857733048998

`and(A266980(n), A274059(n))`
-/

namespace A273972.P3613343857733048998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266980 n) (A274059 n)

end

end A273972.P3613343857733048998

namespace A273972

/-- `and(A266980(n), A274059(n))` -/
def P3613343857733048998.Spec : Prop :=
  ∀ n, P3613343857733048998.a n = A273972 n

end A273972

/-! ## A273972.P7838227863152690479

`and(A266873(n), A274059(n))`
-/

namespace A273972.P7838227863152690479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A266873 n) (A274059 n)

end

end A273972.P7838227863152690479

namespace A273972

/-- `and(A266873(n), A274059(n))` -/
def P7838227863152690479.Spec : Prop :=
  ∀ n, P7838227863152690479.a n = A273972 n

end A273972

/-! ## A273972.P13288093855572398712

`and(A267689(n), A274059(n))`
-/

namespace A273972.P13288093855572398712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A267689 n) (A274059 n)

end

end A273972.P13288093855572398712

namespace A273972

/-- `and(A267689(n), A274059(n))` -/
def P13288093855572398712.Spec : Prop :=
  ∀ n, P13288093855572398712.a n = A273972 n

end A273972

/-! ## A273972.P15922613380220157508

`and(A077854(n), A245191(n))`
-/

namespace A273972.P15922613380220157508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A077854 n) (A245191 n)

end

end A273972.P15922613380220157508

namespace A273972

/-- `and(A077854(n), A245191(n))` -/
def P15922613380220157508.Spec : Prop :=
  ∀ n, P15922613380220157508.a n = A273972 n

end A273972

/-! ## A273972.P11635827692259364577

`and(A083593(n), A245191(n))`
-/

namespace A273972.P11635827692259364577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A083593 n) (A245191 n)

end

end A273972.P11635827692259364577

namespace A273972

/-- `and(A083593(n), A245191(n))` -/
def P11635827692259364577.Spec : Prop :=
  ∀ n, P11635827692259364577.a n = A273972 n

end A273972

/-! ## A273972.P1249971781781105312

`and(A245191(n), A262864(n))`
-/

namespace A273972.P1249971781781105312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A245191 n) (A262864 n)

end

end A273972.P1249971781781105312

namespace A273972

/-- `and(A245191(n), A262864(n))` -/
def P1249971781781105312.Spec : Prop :=
  ∀ n, P1249971781781105312.a n = A273972 n

end A273972

/-! ## A273972.P12517542099052211379

`and(A245191(n), A274059(n))`
-/

namespace A273972.P12517542099052211379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A245191 n) (A274059 n)

end

end A273972.P12517542099052211379

namespace A273972

/-- `and(A245191(n), A274059(n))` -/
def P12517542099052211379.Spec : Prop :=
  ∀ n, P12517542099052211379.a n = A273972 n

end A273972

/-! ## A273972.P8925004449367035002

`and(A245191(n), A281216(n))`
-/

namespace A273972.P8925004449367035002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A245191 n) (A281216 n)

end

end A273972.P8925004449367035002

namespace A273972

/-- `and(A245191(n), A281216(n))` -/
def P8925004449367035002.Spec : Prop :=
  ∀ n, P8925004449367035002.a n = A273972 n

end A273972

/-! ## A273972.P13711051923851296256

`and(A245191(n), A283216(n))`
-/

namespace A273972.P13711051923851296256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A245191 n) (A283216 n)

end

end A273972.P13711051923851296256

namespace A273972

/-- `and(A245191(n), A283216(n))` -/
def P13711051923851296256.Spec : Prop :=
  ∀ n, P13711051923851296256.a n = A273972 n

end A273972

/-!
# A273973: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 20", based on the 5-celled von Neumann neighborhood.

The programs for A273973, the canonical program `A273973.P17292048362556108881` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273973 has offset 0).

The definition of A273973 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 423 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A273973.P4520193930711044162

`A277934(and(1, n)+n)`
-/

namespace A273973.P4520193930711044162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277934 (Nat.land 1 n + n)

end

end A273973.P4520193930711044162

namespace A273973

/-- `A277934(and(1, n)+n)` -/
def P4520193930711044162.Spec : Prop :=
  ∀ n, P4520193930711044162.a n = A273973 n

end A273973

/-! ## A273973.P17292048362556108881

`A133179(Δ[or(1, n²)])`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A273973

/-- `A133179(Δ[or(1, n²)])` -/
def P17292048362556108881.Spec : Prop :=
  ∀ n, P17292048362556108881.a n = A273973 n

theorem P17292048362556108881.correct : P17292048362556108881.Spec := by
  intro n
  simp only [A273973]

end A273973

/-! ## A273973.P646356752086164251

`A277934(Δ[A007590(n)])`
-/

namespace A273973.P646356752086164251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277934 (f1 (n + 1) - f1 n).toNat

end

end A273973.P646356752086164251

namespace A273973

/-- `A277934(Δ[A007590(n)])` -/
def P646356752086164251.Spec : Prop :=
  ∀ n, P646356752086164251.a n = A273973 n

end A273973

/-! ## A273973.P2495540812333151075

`A133179(A168273(n+1))`
-/

namespace A273973.P2495540812333151075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (A168273 (n + 1)).toNat

end

end A273973.P2495540812333151075

namespace A273973

/-- `A133179(A168273(n+1))` -/
def P2495540812333151075.Spec : Prop :=
  ∀ n, P2495540812333151075.a n = A273973 n

end A273973

/-! ## A273973.P11017978562762200276

`A274473(A052928(n+1))`
-/

namespace A273973.P11017978562762200276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274473 (A052928 (n + 1)).toNat

end

end A273973.P11017978562762200276

namespace A273973

/-- `A274473(A052928(n+1))` -/
def P11017978562762200276.Spec : Prop :=
  ∀ n, P11017978562762200276.a n = A273973 n

end A273973

/-! ## A273973.P1517633210447734107

`A101692(A267458(n+1))`
-/

namespace A273973.P1517633210447734107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101692 (A267458 (n + 1)).toNat

end

end A273973.P1517633210447734107

namespace A273973

/-- `A101692(A267458(n+1))` -/
def P1517633210447734107.Spec : Prop :=
  ∀ n, P1517633210447734107.a n = A273973 n

end A273973

/-! ## A273973.P13854469290307601975

`A274473(2*A110654(n))`
-/

namespace A273973.P13854469290307601975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274473 (2 * A110654 n).toNat

end

end A273973.P13854469290307601975

namespace A273973

/-- `A274473(2*A110654(n))` -/
def P13854469290307601975.Spec : Prop :=
  ∀ n, P13854469290307601975.a n = A273973 n

end A273973

/-! ## A273973.P8797310170726881436

`A133179(4*A065033(n))`
-/

namespace A273973.P8797310170726881436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (4 * A065033 n).toNat

end

end A273973.P8797310170726881436

namespace A273973

/-- `A133179(4*A065033(n))` -/
def P8797310170726881436.Spec : Prop :=
  ∀ n, P8797310170726881436.a n = A273973 n

end A273973

/-! ## A273973.P18366038069642201682

`A133179(4*A110654(n))`
-/

namespace A273973.P18366038069642201682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133179 (4 * A110654 n).toNat

end

end A273973.P18366038069642201682

namespace A273973

/-- `A133179(4*A110654(n))` -/
def P18366038069642201682.Spec : Prop :=
  ∀ n, P18366038069642201682.a n = A273973 n

end A273973

/-! ## A273973.P15540909442745282397

`A274473(A000035(n)+n)`
-/

namespace A273973.P15540909442745282397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274473 (A000035 n + (n : ℤ)).toNat

end

end A273973.P15540909442745282397

namespace A273973

/-- `A274473(A000035(n)+n)` -/
def P15540909442745282397.Spec : Prop :=
  ∀ n, P15540909442745282397.a n = A273973 n

end A273973

/-! ## A273973.P18390726524918684320

`A277934(A000035(n)+n)`
-/

namespace A273973.P18390726524918684320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277934 (A000035 n + (n : ℤ)).toNat

end

end A273973.P18390726524918684320

namespace A273973

/-- `A277934(A000035(n)+n)` -/
def P18390726524918684320.Spec : Prop :=
  ∀ n, P18390726524918684320.a n = A273973 n

end A273973

/-! ## A273973.P11176499741341217551

`A038183(2*A164089(n+1))`
-/

namespace A273973.P11176499741341217551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038183 (2 * A164089 (n + 1)).toNat

end

end A273973.P11176499741341217551

namespace A273973

/-- `A038183(2*A164089(n+1))` -/
def P11176499741341217551.Spec : Prop :=
  ∀ n, P11176499741341217551.a n = A273973 n

end A273973

/-! ## A273973.P10681688515238780920

`A274473(2*n-A052928(n))`
-/

namespace A273973.P10681688515238780920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274473 ((2 * n : ℤ) - A052928 n).toNat

end

end A273973.P10681688515238780920

namespace A273973

/-- `A274473(2*n-A052928(n))` -/
def P10681688515238780920.Spec : Prop :=
  ∀ n, P10681688515238780920.a n = A273973 n

end A273973

/-! ## A273973.P2379407951371713707

`A277934(2*n-A052928(n))`
-/

namespace A273973.P2379407951371713707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277934 ((2 * n : ℤ) - A052928 n).toNat

end

end A273973.P2379407951371713707

namespace A273973

/-- `A277934(2*n-A052928(n))` -/
def P2379407951371713707.Spec : Prop :=
  ∀ n, P2379407951371713707.a n = A273973 n

end A273973

/-! ## A273973.P17078731576190909718

`A274473(n-(A052928(n)-n))`
-/

namespace A273973.P17078731576190909718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274473 ((n : ℤ) - (A052928 n - (n : ℤ))).toNat

end

end A273973.P17078731576190909718

namespace A273973

/-- `A274473(n-(A052928(n)-n))` -/
def P17078731576190909718.Spec : Prop :=
  ∀ n, P17078731576190909718.a n = A273973 n

end A273973

/-! ## A273973.P15276248638151719154

`A277934(n-(A052928(n)-n))`
-/

namespace A273973.P15276248638151719154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277934 ((n : ℤ) - (A052928 n - (n : ℤ))).toNat

end

end A273973.P15276248638151719154

namespace A273973

/-- `A277934(n-(A052928(n)-n))` -/
def P15276248638151719154.Spec : Prop :=
  ∀ n, P15276248638151719154.a n = A273973 n

end A273973

/-! ## A273973.P4005053873229134998

`A001317(2*2*A164089(n+1))`
-/

namespace A273973.P4005053873229134998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 (2 * (2 * A164089 (n + 1))).toNat

end

end A273973.P4005053873229134998

namespace A273973

/-- `A001317(2*2*A164089(n+1))` -/
def P4005053873229134998.Spec : Prop :=
  ∀ n, P4005053873229134998.a n = A273973 n

end A273973

/-! ## A273973.P4937498022681662587

`A277934(A007590(n+1)-A007590(n))`
-/

namespace A273973.P4937498022681662587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277934 (A007590 (n + 1) - A007590 n).toNat

end

end A273973.P4937498022681662587

namespace A273973

/-- `A277934(A007590(n+1)-A007590(n))` -/
def P4937498022681662587.Spec : Prop :=
  ∀ n, P4937498022681662587.a n = A273973 n

end A273973

/-! ## A273973.P4924111306200212005

`A038183(A164089(n+1)+A164089(n+1))`
-/

namespace A273973.P4924111306200212005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038183 (A164089 (n + 1) + A164089 (n + 1)).toNat

end

end A273973.P4924111306200212005

namespace A273973

/-- `A038183(A164089(n+1)+A164089(n+1))` -/
def P4924111306200212005.Spec : Prop :=
  ∀ n, P4924111306200212005.a n = A273973 n

end A273973

/-! ## A273973.P4852909779926294471

`and(A101692(n), A274993(n))`
-/

namespace A273973.P4852909779926294471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101692 n) (A274993 n)

end

end A273973.P4852909779926294471

namespace A273973

/-- `and(A101692(n), A274993(n))` -/
def P4852909779926294471.Spec : Prop :=
  ∀ n, P4852909779926294471.a n = A273973 n

end A273973

/-!
# A273974: Number of primes <= n-th Catalan number.

The programs for A273974, the canonical program `A273974.P8732007486651234185` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273974 has offset 0).

The definition of A273974 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A273974.P8732007486651234185

`A000720(A000108(n))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A273974

/-- `A000720(A000108(n))` -/
def P8732007486651234185.Spec : Prop :=
  ∀ n, P8732007486651234185.a n = A273974 n

theorem P8732007486651234185.correct : P8732007486651234185.Spec := by
  intro n
  simp only [A273974]

end A273974

/-! ## A273974.P10157906833068163168

`A000720(C(2*n, n)/(n+1))`
-/

namespace A273974.P10157906833068163168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((Nat.choose (2 * n) n : ℚ) / (n + 1 : ℚ))).toNat

end

end A273974.P10157906833068163168

namespace A273974

/-- `A000720(C(2*n, n)/(n+1))` -/
def P10157906833068163168.Spec : Prop :=
  ∀ n, P10157906833068163168.a n = A273974 n

end A273974

/-! ## A273974.P12612768610864082112

`A000720(A261592(n))`
-/

namespace A273974.P12612768610864082112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A261592 n).toNat

end

end A273974.P12612768610864082112

namespace A273974

/-- `A000720(A261592(n))` -/
def P12612768610864082112.Spec : Prop :=
  ∀ n, P12612768610864082112.a n = A273974 n

end A273974

/-! ## A273974.P8021689540676892835

`A000720(A287973(n))`
-/

namespace A273974.P8021689540676892835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A287973 n).toNat

end

end A273974.P8021689540676892835

namespace A273974

/-- `A000720(A287973(n))` -/
def P8021689540676892835.Spec : Prop :=
  ∀ n, P8021689540676892835.a n = A273974 n

end A273974

/-! ## A273974.P13051932317613734337

`A000720(A287974(n))`
-/

namespace A273974.P13051932317613734337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A287974 n).toNat

end

end A273974.P13051932317613734337

namespace A273974

/-- `A000720(A287974(n))` -/
def P13051932317613734337.Spec : Prop :=
  ∀ n, P13051932317613734337.a n = A273974 n

end A273974

/-!
# A273975: Three-dimensional array written by antidiagonals in k,n: T(k,n,h) with k >= 1, n >= 0, 0 <= h <= n*(k-1) is the coefficient of x^h in the polynomial (1 + x + ... + x^(k-1))^n = ((x^k-1)/(x-1))^n.

The programs for A273975, there is no canonical definition to state claims against.
-/

/-! ## A273975.P3155305166695767128

`A152828(and(n+1, A327534(2*n+1)))`
-/

namespace A273975.P3155305166695767128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152828 (Int.land (n + 1 : ℤ) (A327534 (2 * n + 1))).toNat

end

end A273975.P3155305166695767128

/-! ## A273975.P14707353475034979278

`gcd(A083381(n), A219035(n+1))`
-/

namespace A273975.P14707353475034979278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A083381 n) (A219035 (n + 1))

end

end A273975.P14707353475034979278

/-! ## A273975.P18013294358806046177

`A003105(A192710(n+1)%A277724(2*n+5))`
-/

namespace A273975.P18013294358806046177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003105 (Int.tmod (A192710 (n + 1)) (A277724 (2 * n + 5))).toNat

end

end A273975.P18013294358806046177

/-!
# A273977: Words over an alphabet of size 9 that are in standard order with at least one letter repeated.

The programs for A273977, there is no canonical definition to state claims against.
-/

/-! ## A273977.P2299910196289890854

`A193023(eq[0, Δ[A120699(n)]])`
-/

namespace A273977.P2299910196289890854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120699 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A273977.P2299910196289890854

/-! ## A273977.P9040692356383665157

`A193023(lt[1, A085693(n+1)])`
-/

namespace A273977.P9040692356383665157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193023 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A273977.P9040692356383665157

/-! ## A273977.P13302273907472745616

`A193023(lt[A085693(n), A120699(n)])`
-/

namespace A273977.P13302273907472745616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085693 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193023 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A273977.P13302273907472745616

/-! ## A273977.P10095902422397343121

`A278985(lt[A123271(2*n+3), A124789(n)])`
-/

namespace A273977.P10095902422397343121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123271 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124789 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278985 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A273977.P10095902422397343121

/-! ## A273977.P769775912452097741

`A278985(lt[A123271(2*n+3), A139337(n)])`
-/

namespace A273977.P769775912452097741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123271 (2 * n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278985 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A273977.P769775912452097741

/-!
# A273978: List of words of length n over an alphabet of size 9 that are in standard order and which have the property that every letter that appears in the word is repeated.

The programs for A273978, there is no canonical definition to state claims against.
-/

/-! ## A273978.P15111823168568950205

`A139337(7*A075577(n+1))`
-/

namespace A273978.P15111823168568950205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 (7 * A075577 (n + 1)).toNat

end

end A273978.P15111823168568950205

/-!
# A273979: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 126", based on the 5-celled von Neumann neighborhood.

The programs for A273979, there is no canonical definition to state claims against.
-/

/-! ## A273979.P11715535109515557522

`A007088(A274993(n))`
-/

namespace A273979.P11715535109515557522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A274993 n).toNat

end

end A273979.P11715535109515557522

/-! ## A273979.P16516063216288476771

`A185544(2*A274993(n))`
-/

namespace A273979.P16516063216288476771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A274993 n).toNat

end

end A273979.P16516063216288476771

/-! ## A273979.P1957453535730231646

`A185544(lcm(2, A274993(n)))`
-/

namespace A273979.P1957453535730231646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (Int.lcm 2 (A274993 n))

end

end A273979.P1957453535730231646

/-! ## A273979.P2705318553885915070

`A305989(A274059(n)/A003108(n))`
-/

namespace A273979.P2705318553885915070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (SequenceMachineLib.roundAway ((A274059 n : ℚ) / (A003108 n : ℚ))).toNat

end

end A273979.P2705318553885915070

/-! ## A273979.P4864410048838920231

`A305989(A274059(n))`
-/

namespace A273979.P4864410048838920231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305989 (A274059 n).toNat

end

end A273979.P4864410048838920231

/-!
# A273980: Numbers k such that the number of digits in the numerator of the k-th convergent of the continued fraction 1+1/(2+1/(2+1/(2+...))) = sqrt(2) exceeds the number of digits in the denominator.

The programs for A273980, there is no canonical definition to state claims against.
-/

/-! ## A273980.P16701264262449647384

`∑[A010719(A010352(n+3))]`
-/

namespace A273980.P16701264262449647384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010719 (A010352 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273980.P16701264262449647384

/-! ## A273980.P5200107730632741044

`∑[A010719(A239389(n+1)²)]`
-/

namespace A273980.P5200107730632741044
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010719 (A239389 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273980.P5200107730632741044

/-! ## A273980.P13411755256323962350

`∑[A010719(∑[A181832(n)])]`
-/

namespace A273980.P13411755256323962350
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181832 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010719 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273980.P13411755256323962350

/-! ## A273980.P4123488101446191189

`∑[dr(A167499(A076285(n+1)))]`
-/

namespace A273980.P4123488101446191189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A167499 (A076285 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273980.P4123488101446191189

/-! ## A273980.P12965378303323834681

`∑[3*A246144(A102211(2*(n+2)))+2]`
-/

namespace A273980.P12965378303323834681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A246144 (A102211 (2 * (n + 2))).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273980.P12965378303323834681

/-!
# A273982: Number of little cubes visible around an n X n X n cube with a face on a table.

The programs for A273982, the canonical program `A273982.P3337816524751846221` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A273982 has offset 1).

The definition of A273982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A273982.P3337816524751846221

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=8, a(2)=25`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A273982

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P3337816524751846221.Spec : Prop :=
  ∀ n, P3337816524751846221.a n = A273982 (n + 1)

theorem P3337816524751846221.correct : P3337816524751846221.Spec := by
  intro n
  simp only [A273982, Nat.add_sub_cancel]

end A273982

/-! ## A273982.P7240442480637999238

`∑[10*n-3]+4`
-/

namespace A273982.P7240442480637999238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 4

end

end A273982.P7240442480637999238

namespace A273982

/-- `∑[10*n-3]+4` -/
def P7240442480637999238.Spec : Prop :=
  ∀ n, P7240442480637999238.a n = A273982 (n + 1)

end A273982

/-! ## A273982.P2366709270896790504

`∑[a(n-1)+10]` with `a(0)=1, a(1)=7`
-/

namespace A273982.P2366709270896790504
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) + 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273982.P2366709270896790504

namespace A273982

/-- `∑[a(n-1)+10]` -/
def P2366709270896790504.Spec : Prop :=
  ∀ n, (P2366709270896790504.a n : ℤ) = A273982 (n + 1)

end A273982

/-! ## A273982.P13675427858513889912

`xor(2, ∑[abs(3-10*n)])`
-/

namespace A273982.P13675427858513889912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (10 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A273982.P13675427858513889912

namespace A273982

/-- `xor(2, ∑[abs(3-10*n)])` -/
def P13675427858513889912.Spec : Prop :=
  ∀ n, P13675427858513889912.a n = A273982 (n + 1)

end A273982

/-! ## A273982.P3814883203780651420

`and((2*n)²+(n+1)², -3)`
-/

namespace A273982.P3814883203780651420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 * n) ^ 2 + (n + 1) ^ 2 : ℤ) (-3)

end

end A273982.P3814883203780651420

namespace A273982

/-- `and((2*n)²+(n+1)², -3)` -/
def P3814883203780651420.Spec : Prop :=
  ∀ n, P3814883203780651420.a n = A273982 (n + 1)

end A273982

/-! ## A273982.P10595349041944049411

`lcm((2*n)²+(n+1)², gcd(2, n+1))`
-/

namespace A273982.P10595349041944049411
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm ((2 * n) ^ 2 + (n + 1) ^ 2) (Nat.gcd 2 (n + 1))

end

end A273982.P10595349041944049411

namespace A273982

/-- `lcm((2*n)²+(n+1)², gcd(2, n+1))` -/
def P10595349041944049411.Spec : Prop :=
  ∀ n, (P10595349041944049411.a n : ℤ) = A273982 (n + 1)

end A273982

/-! ## A273982.P3889488569154952176

`gcd((2*n)²+(n+1)², C(2, n+2))`
-/

namespace A273982.P3889488569154952176
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((2 * n) ^ 2 + (n + 1) ^ 2) (Nat.choose 2 (n + 2))

end

end A273982.P3889488569154952176

namespace A273982

/-- `gcd((2*n)²+(n+1)², C(2, n+2))` -/
def P3889488569154952176.Spec : Prop :=
  ∀ n, (P3889488569154952176.a n : ℤ) = A273982 (n + 1)

end A273982

/-! ## A273982.P9039214767908376996

`((2*n)²+(n+1)²)*gcd(n, n-1)`
-/

namespace A273982.P9039214767908376996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 + (n + 1) ^ 2) * Int.gcd (n : ℤ) ((n : ℤ) - 1)

end

end A273982.P9039214767908376996

namespace A273982

/-- `((2*n)²+(n+1)²)*gcd(n, n-1)` -/
def P9039214767908376996.Spec : Prop :=
  ∀ n, (P9039214767908376996.a n : ℤ) = A273982 (n + 1)

end A273982

/-! ## A273982.P2311600967956992622

`floor(lcm(2*n+1, 2*n)+n²+ϕ)`
-/

namespace A273982.P2311600967956992622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lcm (2 * n + 1) (2 * n) : ℝ) + ((n ^ 2 : ℝ) + Real.goldenRatio)⌋

end

end A273982.P2311600967956992622

namespace A273982

/-- `floor(lcm(2*n+1, 2*n)+n²+ϕ)` -/
def P2311600967956992622.Spec : Prop :=
  ∀ n, P2311600967956992622.a n = A273982 (n + 1)

end A273982

/-! ## A273982.P1042701005920550592

`((2*n)²+(n+1)²)*and(1, 2*n+1)`
-/

namespace A273982.P1042701005920550592
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 + (n + 1) ^ 2) * Nat.land 1 (2 * n + 1)

end

end A273982.P1042701005920550592

namespace A273982

/-- `((2*n)²+(n+1)²)*and(1, 2*n+1)` -/
def P1042701005920550592.Spec : Prop :=
  ∀ n, (P1042701005920550592.a n : ℤ) = A273982 (n + 1)

end A273982

/-! ## A273982.P15540718482038546140

`((2*n)²+(n+1)²)/gcd(n+2, n+3)`
-/

namespace A273982.P15540718482038546140
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 + (n + 1) ^ 2 : ℚ) / (Nat.gcd (n + 2) (n + 3) : ℚ)

end

end A273982.P15540718482038546140

namespace A273982

/-- `((2*n)²+(n+1)²)/gcd(n+2, n+3)` -/
def P15540718482038546140.Spec : Prop :=
  ∀ n, P15540718482038546140.a n = (A273982 (n + 1) : ℚ)

end A273982

/-! ## A273982.P15930448797131174791

`∑[A160912(n+1)]`
-/

namespace A273982.P15930448797131174791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273982.P15930448797131174791

namespace A273982

/-- `∑[A160912(n+1)]` -/
def P15930448797131174791.Spec : Prop :=
  ∀ n, P15930448797131174791.a n = A273982 (n + 1)

end A273982

/-! ## A273982.P11094348648763745867

`∑[A122709(n)+n]`
-/

namespace A273982.P11094348648763745867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122709 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273982.P11094348648763745867

namespace A273982

/-- `∑[A122709(n)+n]` -/
def P11094348648763745867.Spec : Prop :=
  ∀ n, P11094348648763745867.a n = A273982 (n + 1)

end A273982

/-! ## A273982.P13189195701810891763

`(A272039(n)+1)/2`
-/

namespace A273982.P13189195701810891763
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A272039 n + 1 : ℚ) / 2

end

end A273982.P13189195701810891763

namespace A273982

/-- `(A272039(n)+1)/2` -/
def P13189195701810891763.Spec : Prop :=
  ∀ n, P13189195701810891763.a n = (A273982 (n + 1) : ℚ)

end A273982

/-! ## A273982.P4462009117563166957

`A295906(n+1)/2`
-/

namespace A273982.P4462009117563166957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295906 (n + 1) : ℚ) / 2

end

end A273982.P4462009117563166957

namespace A273982

/-- `A295906(n+1)/2` -/
def P4462009117563166957.Spec : Prop :=
  ∀ n, P4462009117563166957.a n = (A273982 (n + 1) : ℚ)

end A273982

/-! ## A273982.P15287803880040354783

`(A080861(n)+2)/3`
-/

namespace A273982.P15287803880040354783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080861 n + 2 : ℚ) / 3

end

end A273982.P15287803880040354783

namespace A273982

/-- `(A080861(n)+2)/3` -/
def P15287803880040354783.Spec : Prop :=
  ∀ n, P15287803880040354783.a n = (A273982 (n + 1) : ℚ)

end A273982

/-! ## A273982.P16893251534691720516

`(A381196(n)+3)/4`
-/

namespace A273982.P16893251534691720516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A381196 n + 3 : ℚ) / 4

end

end A273982.P16893251534691720516

namespace A273982

/-- `(A381196(n)+3)/4` -/
def P16893251534691720516.Spec : Prop :=
  ∀ n, P16893251534691720516.a n = (A273982 (n + 1) : ℚ)

end A273982

/-! ## A273982.P11694460407605226998

`(A016862(n)+4)/5`
-/

namespace A273982.P11694460407605226998
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016862 n + 4 : ℚ) / 5

end

end A273982.P11694460407605226998

namespace A273982

/-- `(A016862(n)+4)/5` -/
def P11694460407605226998.Spec : Prop :=
  ∀ n, P11694460407605226998.a n = (A273982 (n + 1) : ℚ)

end A273982

/-!
# A273983: a(n) = ((4*n)!! - (4*n-1)!!)/(4*n+1).

The programs for A273983, there is no canonical definition to state claims against.
-/

/-! ## A273983.P4112610629241084717

`A129890(2*n+1)/Δ[A000217(2*n+1)]`
-/

namespace A273983.P4112610629241084717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129890 (2 * n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A273983.P4112610629241084717

/-!
# A273988: The number of slim, rectangular lattices of length n>=2.

The programs for A273988, there is no canonical definition to state claims against.
-/

/-! ## A273988.P17133155332794083693

`∑[A039708(A307678(n))]`
-/

namespace A273988.P17133155332794083693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039708 (A307678 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A273988.P17133155332794083693

/-! ## A273988.P15820301921338254909

`A368097(n)+A331157(n)`
-/

namespace A273988.P15820301921338254909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368097 n + A331157 n

end

end A273988.P15820301921338254909

/-!
# A273992: Numbers whose sum of anti-divisors is equal to the sum of its unitary divisors.

The programs for A273992, there is no canonical definition to state claims against.
-/

/-! ## A273992.P8997420116879249732

`eq[A034448(n+1), A066417(n+1)]+1`
-/

namespace A273992.P8997420116879249732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A273992.P8997420116879249732

/-! ## A273992.P3353040797232207188

`A020725(eq[A345451(n+1)+1, A066417(n+1)])`
-/

namespace A273992.P3353040797232207188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A273992.P3353040797232207188

/-! ## A273992.P10727158123750913677

`A020725(eq[A345451(n+1)+2, A058838(n+1)])`
-/

namespace A273992.P10727158123750913677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058838 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A273992.P10727158123750913677

/-! ## A273992.P9856845782225853186

`A020725(eq[A034460(n+1)+1+n, A066417(n+1)])`
-/

namespace A273992.P9856845782225853186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A273992.P9856845782225853186

/-! ## A273992.P15124239222990728517

`A020725(eq[A034460(n+1)+1+n, A058838(n+1)-1])`
-/

namespace A273992.P15124239222990728517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034460 (n + 1) + 1 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058838 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A273992.P15124239222990728517

/-!
# A273993: Numbers whose derivative is equal to the arithmetic derivative.

The programs for A273993, there is no canonical definition to state claims against.
-/

/-! ## A273993.P13444321173132292123

`eq[A003415(n), A038554(n)]`
-/

namespace A273993.P13444321173132292123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273993.P13444321173132292123

/-! ## A273993.P17070787774707111772

`eq[A038554(n), A369971(n)]`
-/

namespace A273993.P17070787774707111772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273993.P17070787774707111772

/-! ## A273993.P17250768935181429618

`eq[A003415(n), A004526(A038556(n))]`
-/

namespace A273993.P17250768935181429618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A038556 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273993.P17250768935181429618

/-! ## A273993.P1870903698438810013

`eq[A038554(n), A328099(A028310(n))]`
-/

namespace A273993.P1870903698438810013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328099 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273993.P1870903698438810013

/-! ## A273993.P16829182388299927200

`eq[A038554(n), A319703(A004277(n))]`
-/

namespace A273993.P16829182388299927200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038554 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A273993.P16829182388299927200

/-!
# A273994: Number of endofunctions on [n] whose cycle lengths are Fibonacci numbers.

The programs for A273994, there is no canonical definition to state claims against.
-/

/-! ## A273994.P3565833343293427226

`A028310(or(n², A246526(n)))`
-/

namespace A273994.P3565833343293427226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.lor (n ^ 2 : ℤ) (A246526 n)).toNat

end

end A273994.P3565833343293427226

/-! ## A273994.P3343371244083717841

`A383374(n)+A344420(A327020(n))`
-/

namespace A273994.P3343371244083717841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383374 n + A344420 (A327020 n).toNat

end

end A273994.P3343371244083717841

/-!
# A273996: Number of endofunctions on [n] whose cycle lengths are factorials.

The programs for A273996, there is no canonical definition to state claims against.
-/

/-! ## A273996.P1068726676858743344

`A028310(A060912(n))`
-/

namespace A273996.P1068726676858743344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A060912 n).toNat

end

end A273996.P1068726676858743344

/-! ## A273996.P1402102056445882117

`A007948(A209319(n))`
-/

namespace A273996.P1402102056445882117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007948 (A209319 n).toNat

end

end A273996.P1402102056445882117

/-!
# A273997: Number of endofunctions on [n] whose cycle lengths are squares.

The programs for A273997, there is no canonical definition to state claims against.
-/

/-! ## A273997.P2712726991907265774

`A353897(A001858(n))+A163951(n)`
-/

namespace A273997.P2712726991907265774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353897 (A001858 n).toNat + A163951 n

end

end A273997.P2712726991907265774

/-! ## A273997.P10057470707861120753

`A034887(2*(n+2)^(n-1))`
-/

namespace A273997.P10057470707861120753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034887 (SequenceMachineLib.roundAway (2 * (n + 2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A273997.P10057470707861120753

/-!
# A273998: Number of endofunctions on [n] whose cycle lengths are primes.

The programs for A273998, there is no canonical definition to state claims against.
-/

/-! ## A273998.P5906218096967788719

`(n-1)*A276320(3*a(n-1))` with `a(0)=1`
-/

namespace A273998.P5906218096967788719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - 1) * A276320 (3 * a (n - 1)).toNat

end

end A273998.P5906218096967788719

/-! ## A273998.P10714251505607893082

`(n-1)*A097992(18*a(n-1))` with `a(0)=1`
-/

namespace A273998.P10714251505607893082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) - 1) * A097992 (18 * a (n - 1)).toNat

end

end A273998.P10714251505607893082

/-!
# A273999: Numbers of the form n^2+1 that divide 4^n-1.

The programs for A273999, there is no canonical definition to state claims against.
-/

/-! ## A273999.P12573285602922154519

`(A273870(n+1)-1)²+1`
-/

namespace A273999.P12573285602922154519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A273870 (n + 1) - 1) ^ 2 + 1

end

end A273999.P12573285602922154519

/-! ## A273999.P16240585405456767274

`A007318(∑[n])+xor(1, A273870(n+1))²`
-/

namespace A273999.P16240585405456767274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (∑ j ∈ Finset.range (n + 1), f1 j) + Int.xor 1 (A273870 (n + 1)) ^ 2

end

end A273999.P16240585405456767274

/-! ## A273999.P2548088725753154944

`A000041(C(2, n+2))+xor(1, A273870(n+1))²`
-/

namespace A273999.P2548088725753154944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) + Int.xor 1 (A273870 (n + 1)) ^ 2

end

end A273999.P2548088725753154944

/-! ## A273999.P9718728715574595690

`A000005(gcd(n, n+1))+xor(1, A273870(n+1))²`
-/

namespace A273999.P9718728715574595690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) + Int.xor 1 (A273870 (n + 1)) ^ 2

end

end A273999.P9718728715574595690

/-! ## A273999.P4927654739805957928

`A014963(30*A000040(n+1))+xor(1, A273870(n+1))²`
-/

namespace A273999.P4927654739805957928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (30 * A000040 (n + 1)).toNat + Int.xor 1 (A273870 (n + 1)) ^ 2

end

end A273999.P4927654739805957928

