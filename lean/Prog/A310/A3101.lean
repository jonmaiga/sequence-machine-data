import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C002
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
import Seq.Opaque.C008
import Seq.Opaque.C009
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

/-!
# A310100: Coordination sequence Gal.5.19.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310100, there is no canonical definition to state claims against.
-/

/-! ## A310100.P4820433756869053379

`A310032(n)+A243056(A000108(n))`
-/

namespace A310100.P4820433756869053379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310032 n + A243056 (A000108 n).toNat

end

end A310100.P4820433756869053379

/-! ## A310100.P6314440814291382810

`A008574(n)-A001222(A280377(n+1))`
-/

namespace A310100.P6314440814291382810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A001222 (A280377 (n + 1)).toNat

end

end A310100.P6314440814291382810

/-!
# A310101: Coordination sequence Gal.6.11.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310101, there is no canonical definition to state claims against.
-/

/-! ## A310101.P13734136279118918418

`A310103(n)-A178226(A027610(n+1))`
-/

namespace A310101.P13734136279118918418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310103 n - A178226 (A027610 (n + 1)).toNat

end

end A310101.P13734136279118918418

/-!
# A310103: Coordination sequence Gal.6.12.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310103, there is no canonical definition to state claims against.
-/

/-! ## A310103.P9368880105513157505

`A310174(n)+A310252(n)-A310200(n)`
-/

namespace A310103.P9368880105513157505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310174 n + (A310252 n - A310200 n)

end

end A310103.P9368880105513157505

/-! ## A310103.P8536627060897010765

`A310174(n)+A314313(n)-A314299(n)`
-/

namespace A310103.P8536627060897010765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310174 n + (A314313 n - A314299 n)

end

end A310103.P8536627060897010765

/-!
# A310104: Coordination sequence Gal.4.2.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310104, there is no canonical definition to state claims against.
-/

/-! ## A310104.P15969083188786542440

`∑[A176465(n+1)%A000120(A235265(3*n+1))]`
-/

namespace A310104.P15969083188786542440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176465 (n + 1)) (A000120 (A235265 (3 * n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310104.P15969083188786542440

/-! ## A310104.P10663449955158772418

`lt[A059317(A000203(3*n+4)), A161207(2*(n+1))]`
-/

namespace A310104.P10663449955158772418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059317 (A000203 (3 * n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161207 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A310104.P10663449955158772418

/-!
# A310105: Coordination sequence Gal.5.17.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310105, there is no canonical definition to state claims against.
-/

/-! ## A310105.P649290984921446442

`∑[A319994(A108515(n+1))]`
-/

namespace A310105.P649290984921446442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319994 (A108515 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310105.P649290984921446442

/-! ## A310105.P16071619680174299039

`∑[A141295(record[A019140(n+3)])]`
-/

namespace A310105.P16071619680174299039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019140 (n + 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141295 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310105.P16071619680174299039

/-! ## A310105.P6824114876434774783

`A312479(n)-A001222(A081914(n))`
-/

namespace A310105.P6824114876434774783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312479 n - A001222 (A081914 n).toNat

end

end A310105.P6824114876434774783

/-! ## A310105.P4660928969808658839

`A310104(n)+A033782(A000043(2*n+3))`
-/

namespace A310105.P4660928969808658839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310104 n + A033782 (A000043 (2 * n + 3)).toNat

end

end A310105.P4660928969808658839

/-! ## A310105.P2937111453155177271

`∑[A131320(A131320(n+1)^A337009(n+1))]`
-/

namespace A310105.P2937111453155177271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131320 (SequenceMachineLib.roundAway ((A131320 (n + 1) : ℚ) ^ (A337009 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310105.P2937111453155177271

/-!
# A310106: Coordination sequence Gal.6.8.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310106, there is no canonical definition to state claims against.
-/

/-! ## A310106.P9440266484650866760

`A310104(n)+A117943(A001628(n))`
-/

namespace A310106.P9440266484650866760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310104 n + A117943 (A001628 n).toNat

end

end A310106.P9440266484650866760

/-!
# A310107: Coordination sequence Gal.6.40.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310107, there is no canonical definition to state claims against.
-/

/-! ## A310107.P5706811017613075678

`∑[A325770(record[A216955(n+1)])]`
-/

namespace A310107.P5706811017613075678
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216955 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325770 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310107.P5706811017613075678

/-! ## A310107.P16268346874710288859

`∑[A320107(A320087(n+1))]+n`
-/

namespace A310107.P16268346874710288859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320107 (A320087 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A310107.P16268346874710288859

/-! ## A310107.P1981707606828690554

`A312036(n)-A001221(A003947(n))`
-/

namespace A310107.P1981707606828690554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312036 n - A001221 (A003947 n).toNat

end

end A310107.P1981707606828690554

/-!
# A310108: Coordination sequence Gal.5.16.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310108, there is no canonical definition to state claims against.
-/

/-! ## A310108.P10503742828143733195

`lt[A053824(n+4), A112798(A100038(n+1))]`
-/

namespace A310108.P10503742828143733195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (A100038 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A310108.P10503742828143733195

/-! ## A310108.P3427717673460555815

`A226520(A192162(2*(n+1)))+A007094(3*n+1)`
-/

namespace A310108.P3427717673460555815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226520 (A192162 (2 * (n + 1))).toNat + A007094 (3 * n + 1)

end

end A310108.P3427717673460555815

/-! ## A310108.P12097970971712777422

`A310111(n)-A141700(A000213(n))`
-/

namespace A310108.P12097970971712777422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310111 n - A141700 (A000213 n).toNat

end

end A310108.P12097970971712777422

/-!
# A310109: Coordination sequence Gal.6.9.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310109, there is no canonical definition to state claims against.
-/

/-! ## A310109.P8723946653959198875

`A023604(∑[A089749(n+1)²])`
-/

namespace A310109.P8723946653959198875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089749 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023604 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A310109.P8723946653959198875

/-! ## A310109.P11467523507739315484

`A310076(n)+A049347(A251791(n+1))`
-/

namespace A310109.P11467523507739315484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310076 n + A049347 (A251791 (n + 1)).toNat

end

end A310109.P11467523507739315484

/-! ## A310109.P2805101462003061555

`A265155(A254438(n+1))+A057165(n+1)`
-/

namespace A310109.P2805101462003061555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265155 (A254438 (n + 1)).toNat + A057165 (n + 1)

end

end A310109.P2805101462003061555

/-! ## A310109.P5533251080115229228

`A382913(A111321(n+1))-A111321(n+1)`
-/

namespace A310109.P5533251080115229228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382913 (A111321 (n + 1)).toNat - A111321 (n + 1)

end

end A310109.P5533251080115229228

/-! ## A310109.P197453333313401223

`A276793(A280076(n+1))+A310076(n)-A000007(A000583(n))`
-/

namespace A310109.P197453333313401223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276793 (A280076 (n + 1)).toNat + (A310076 n - A000007 (A000583 n).toNat)

end

end A310109.P197453333313401223

/-!
# A310110: Coordination sequence Gal.6.41.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310110, there is no canonical definition to state claims against.
-/

/-! ## A310110.P1660623544190234247

`∑[∏{e}[A257520(n)², #]]+n`
-/

namespace A310110.P1660623544190234247
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257520 n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n).natAbs, Nat.factorization (f2 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A310110.P1660623544190234247

/-! ## A310110.P9450619164067988409

`∑[A181796(∑[A149182(n)])]`
-/

namespace A310110.P9450619164067988409
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149182 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181796 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310110.P9450619164067988409

/-! ## A310110.P7088181587691992361

`∑[A280053(record[A108990(n)])]`
-/

namespace A310110.P7088181587691992361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108990 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280053 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310110.P7088181587691992361

/-! ## A310110.P541828729749463292

`∑[A178094(A017911(3*n))]`
-/

namespace A310110.P541828729749463292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178094 (A017911 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310110.P541828729749463292

/-! ## A310110.P8556528928871728823

`∑[A305973(A192744(n))]+n`
-/

namespace A310110.P8556528928871728823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305973 (A192744 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A310110.P8556528928871728823

/-!
# A310111: Coordination sequence Gal.5.35.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310111, there is no canonical definition to state claims against.
-/

/-! ## A310111.P10710625844872586656

`A312682(n)-∑[A342592(A323579(n+1))]`
-/

namespace A310111.P10710625844872586656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342592 (A323579 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A312682 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310111.P10710625844872586656

/-! ## A310111.P10617157901382430713

`A310108(n)+A141700(A000213(n))`
-/

namespace A310111.P10617157901382430713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310108 n + A141700 (A000213 n).toNat

end

end A310111.P10617157901382430713

/-!
# A310112: Coordination sequence Gal.6.7.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310112, there is no canonical definition to state claims against.
-/

/-! ## A310112.P4632546878280706921

`∑[dr(A130446(A287759(n)))]`
-/

namespace A310112.P4632546878280706921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A130446 (A287759 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310112.P4632546878280706921

/-! ## A310112.P5281283751219685328

`eq[A008284(n+1), A037811(A283394(n))]`
-/

namespace A310112.P5281283751219685328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (A283394 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310112.P5281283751219685328

/-! ## A310112.P290966609576386888

`lt[A259598(n+1), A259598(A093560(n))]`
-/

namespace A310112.P290966609576386888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259598 (A093560 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A310112.P290966609576386888

/-! ## A310112.P17138036909754688454

`A270532(n+1)+A001221(A107649(n+1))`
-/

namespace A310112.P17138036909754688454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270532 (n + 1) + A001221 (A107649 (n + 1)).toNat

end

end A310112.P17138036909754688454

/-! ## A310112.P7676753812867747057

`A155722(n+1)+A064097(A230777(n+1))`
-/

namespace A310112.P7676753812867747057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155722 (n + 1) + A064097 (A230777 (n + 1)).toNat

end

end A310112.P7676753812867747057

/-!
# A310113: Coordination sequence Gal.6.88.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310113, there is no canonical definition to state claims against.
-/

/-! ## A310113.P3945066417595616292

`A310114(n)-A160753(A347975(n))`
-/

namespace A310113.P3945066417595616292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310114 n - A160753 (A347975 n).toNat

end

end A310113.P3945066417595616292

/-! ## A310113.P11643972252780728486

`A310114(n)+A178798(A208840(n+1))`
-/

namespace A310113.P11643972252780728486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310114 n + A178798 (A208840 (n + 1)).toNat

end

end A310113.P11643972252780728486

/-! ## A310113.P4229472915100982909

`A310114(n)-A346619(A064439(n+1))`
-/

namespace A310113.P4229472915100982909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310114 n - A346619 (A064439 (n + 1)).toNat

end

end A310113.P4229472915100982909

/-! ## A310113.P8837175526002541670

`A310114(n)-A322389(A220287(n+1))`
-/

namespace A310113.P8837175526002541670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310114 n - A322389 (A220287 (n + 1)).toNat

end

end A310113.P8837175526002541670

/-!
# A310114: Coordination sequence Gal.5.33.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310114, there is no canonical definition to state claims against.
-/

/-! ## A310114.P11368650716477623859

`A310113(n)+A160753(A347975(n))`
-/

namespace A310114.P11368650716477623859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310113 n + A160753 (A347975 n).toNat

end

end A310114.P11368650716477623859

/-! ## A310114.P289366499474381236

`A310113(n)-A178798(A208840(n+1))`
-/

namespace A310114.P289366499474381236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310113 n - A178798 (A208840 (n + 1)).toNat

end

end A310114.P289366499474381236

/-! ## A310114.P3749328738677789376

`A310113(n)+A178798(A208840(n+1)+2)`
-/

namespace A310114.P3749328738677789376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310113 n + A178798 (A208840 (n + 1) + 2).toNat

end

end A310114.P3749328738677789376

/-! ## A310114.P10869381592290109754

`A320841(A320842(n+1))+A310113(n)`
-/

namespace A310114.P10869381592290109754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320841 (A320842 (n + 1)).toNat + A310113 n

end

end A310114.P10869381592290109754

/-! ## A310114.P17794487907252924201

`A003059(∑[∑[A034189(2*n)]])`
-/

namespace A310114.P17794487907252924201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034189 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A310114.P17794487907252924201

/-!
# A310115: Coordination sequence Gal.6.89.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310115, there is no canonical definition to state claims against.
-/

/-! ## A310115.P4608624848963464626

`A037380(n+1)+record[A212210(A054397(n+1))]`
-/

namespace A310115.P4608624848963464626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212210 (A054397 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037380 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310115.P4608624848963464626

/-! ## A310115.P14721095676644934438

`record[A170965(8*n)]`
-/

namespace A310115.P14721095676644934438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170965 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310115.P14721095676644934438

/-! ## A310115.P2581893794270103525

`record[A170975(8*n)]`
-/

namespace A310115.P2581893794270103525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170975 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310115.P2581893794270103525

/-! ## A310115.P10622256215555956231

`∑[A179941(∏[A001223(n+1)])]`
-/

namespace A310115.P10622256215555956231
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179941 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310115.P10622256215555956231

/-!
# A310116: Coordination sequence Gal.6.85.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310116, there is no canonical definition to state claims against.
-/

/-! ## A310116.P13109437389279162549

`A310115(n)+A125005(A180887(n+1))`
-/

namespace A310116.P13109437389279162549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310115 n + A125005 (A180887 (n + 1)).toNat

end

end A310116.P13109437389279162549

/-! ## A310116.P17260354149281725104

`A310115(n)+A185238(A311561(n))`
-/

namespace A310116.P17260354149281725104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310115 n + A185238 (A311561 n).toNat

end

end A310116.P17260354149281725104

/-! ## A310116.P9044755307098809731

`A001844(n)-A052146(A000580(n+7))`
-/

namespace A310116.P9044755307098809731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001844 n - A052146 (A000580 (n + 7)).toNat

end

end A310116.P9044755307098809731

/-! ## A310116.P10885345679409610641

`A025465(A001792(n))+record[A170975(8*n)]`
-/

namespace A310116.P10885345679409610641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170975 (8 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025465 (A001792 n).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310116.P10885345679409610641

/-!
# A310119: Coordination sequence Gal.5.18.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310119, there is no canonical definition to state claims against.
-/

/-! ## A310119.P17849642266693578939

`or(A010054(A148139(n)), A310118(n))`
-/

namespace A310119.P17849642266693578939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A148139 n).toNat) (A310118 n)

end

end A310119.P17849642266693578939

/-! ## A310119.P2483572770036329950

`A310118(n)+A010054(A148139(n)+A010054(n))`
-/

namespace A310119.P2483572770036329950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310118 n + A010054 (A148139 n + A010054 n).toNat

end

end A310119.P2483572770036329950

/-!
# A310120: Coordination sequence Gal.6.45.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310120, there is no canonical definition to state claims against.
-/

/-! ## A310120.P14819463531819624546

`∑[dr(A261969(A056118(n)))]`
-/

namespace A310120.P14819463531819624546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A261969 (A056118 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310120.P14819463531819624546

/-!
# A310121: Coordination sequence Gal.6.46.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310121, there is no canonical definition to state claims against.
-/

/-! ## A310121.P7041600339074960701

`∑[dr(A060688(A060732(n+1)))]`
-/

namespace A310121.P7041600339074960701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A060688 (A060732 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310121.P7041600339074960701

/-! ## A310121.P17023245285518658096

`A310120(n)+∑[A188300(A151472(n))]`
-/

namespace A310121.P17023245285518658096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188300 (A151472 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310120 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310121.P17023245285518658096

/-!
# A310122: Coordination sequence Gal.4.17.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310122, there is no canonical definition to state claims against.
-/

/-! ## A310122.P381743186888258570

`A084228(A203413(n+1))`
-/

namespace A310122.P381743186888258570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084228 (A203413 (n + 1)).toNat

end

end A310122.P381743186888258570

/-!
# A310123: Coordination sequence Gal.6.47.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310123, there is no canonical definition to state claims against.
-/

/-! ## A310123.P13178514001036138389

`record[A112744(3*n+2)+A024222(n+1)]`
-/

namespace A310123.P13178514001036138389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112744 (3 * n + 2) + A024222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310123.P13178514001036138389

/-!
# A310125: Coordination sequence Gal.6.68.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310125, there is no canonical definition to state claims against.
-/

/-! ## A310125.P10342669537569559119

`A001069(A259376(n+3))*A068962(3*(n+1))`
-/

namespace A310125.P10342669537569559119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001069 (A259376 (n + 3)).toNat * A068962 (3 * (n + 1))

end

end A310125.P10342669537569559119

/-!
# A310144: Coordination sequence Gal.5.41.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310144, there is no canonical definition to state claims against.
-/

/-! ## A310144.P4548249890887840596

`∏{e}[A000244(n), A310145(#)]`
-/

namespace A310144.P4548249890887840596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A310145 (Nat.factorization (f1 n).natAbs p)

end

end A310144.P4548249890887840596

/-! ## A310144.P8767224118311443857

`A310145(n*Δ[A077168(n)])`
-/

namespace A310144.P8767224118311443857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310145 ((n : ℤ) * (f1 (n + 1) - f1 n)).toNat

end

end A310144.P8767224118311443857

/-! ## A310144.P14663376871182999986

`A310145(n)^Δ[A077168(n)]`
-/

namespace A310144.P14663376871182999986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A310145 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A310144.P14663376871182999986

/-! ## A310144.P15324370674376838966

`A310145(A077168(n+1)-2)`
-/

namespace A310144.P15324370674376838966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310145 (A077168 (n + 1) - 2).toNat

end

end A310144.P15324370674376838966

/-! ## A310144.P14919457608636102537

`A310145(n^A131685(n+1))`
-/

namespace A310144.P14919457608636102537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310145 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A131685 (n + 1) : ℤ))).toNat

end

end A310144.P14919457608636102537

/-!
# A310146: Coordination sequence Gal.5.39.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310146, there is no canonical definition to state claims against.
-/

/-! ## A310146.P1581001120323645119

`A316325(n+1)-A276794(A019300(n))`
-/

namespace A310146.P1581001120323645119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316325 (n + 1) - A276794 (A019300 n).toNat

end

end A310146.P1581001120323645119

/-! ## A310146.P1747380480812231380

`A094382(A269256(n+3))+2*n+1`
-/

namespace A310146.P1747380480812231380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094382 (A269256 (n + 3)).toNat + (2 * n + 1 : ℤ)

end

end A310146.P1747380480812231380

/-! ## A310146.P2651991235947934381

`∑[A008334(A284910(n)+A011257(n+1))]`
-/

namespace A310146.P2651991235947934381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008334 (A284910 n + A011257 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310146.P2651991235947934381

/-! ## A310146.P13947344563548831047

`A008062(n+1)-A135022(A167614(n+1))`
-/

namespace A310146.P13947344563548831047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008062 (n + 1) - A135022 (A167614 (n + 1)).toNat

end

end A310146.P13947344563548831047

/-! ## A310146.P12029771566187703595

`A258069(3*n+2)-A124765(A002026(n))`
-/

namespace A310146.P12029771566187703595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258069 (3 * n + 2) - A124765 (A002026 n).toNat

end

end A310146.P12029771566187703595

/-!
# A310147: Coordination sequence Gal.4.28.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310147, there is no canonical definition to state claims against.
-/

/-! ## A310147.P2231124929652136960

`∑[A193330(record[A119725(n+1)])]`
-/

namespace A310147.P2231124929652136960
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119725 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193330 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310147.P2231124929652136960

/-! ## A310147.P13408609708889165267

`A310148(n)-A185284(A310148(n))`
-/

namespace A310147.P13408609708889165267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310148 n - A185284 (A310148 n).toNat

end

end A310147.P13408609708889165267

/-! ## A310147.P13649330389170119675

`A310148(n)-A008683(A220109(n+1))`
-/

namespace A310147.P13649330389170119675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310148 n - A008683 (A220109 (n + 1)).toNat

end

end A310147.P13649330389170119675

/-! ## A310147.P9339697196750206612

`lt[A129138(A255366(3*(n+1))), A129138(n+3)]`
-/

namespace A310147.P9339697196750206612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129138 (A255366 (3 * (n + 1))).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129138 (n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A310147.P9339697196750206612

/-!
# A310148: Coordination sequence Gal.4.29.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310148, there is no canonical definition to state claims against.
-/

/-! ## A310148.P15317853022875502650

`A310147(n)+A185284(A310151(n))`
-/

namespace A310148.P15317853022875502650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310147 n + A185284 (A310151 n).toNat

end

end A310148.P15317853022875502650

/-! ## A310148.P1559578374552295801

`A310147(n)+A185284(A310152(n))`
-/

namespace A310148.P1559578374552295801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310147 n + A185284 (A310152 n).toNat

end

end A310148.P1559578374552295801

/-! ## A310148.P8901880632500528977

`A310147(n)+A185284(A310147(n)+1)`
-/

namespace A310148.P8901880632500528977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310147 n + A185284 (A310147 n + 1).toNat

end

end A310148.P8901880632500528977

/-! ## A310148.P2357290906917500886

`A310147(n)-(A185284(n)-A185284(A310151(n)))`
-/

namespace A310148.P2357290906917500886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310147 n - (A185284 n - A185284 (A310151 n).toNat)

end

end A310148.P2357290906917500886

/-! ## A310148.P3846915530235210775

`A185284(A310152(n))-(A185284(n)-A310147(n))`
-/

namespace A310148.P3846915530235210775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A310152 n).toNat - (A185284 n - A310147 n)

end

end A310148.P3846915530235210775

/-!
# A310151: Coordination sequence Gal.6.90.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310151, there is no canonical definition to state claims against.
-/

/-! ## A310151.P17141196287941434618

`A231122(A000051(n))+A008486(n)`
-/

namespace A310151.P17141196287941434618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231122 (A000051 n).toNat + A008486 n

end

end A310151.P17141196287941434618

/-! ## A310151.P8142340567455065036

`A091785(n+1)-A005679(A080560(n))`
-/

namespace A310151.P8142340567455065036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091785 (n + 1) - A005679 (A080560 n).toNat

end

end A310151.P8142340567455065036

/-! ## A310151.P12502886326291377320

`A072154(n)+∑[A189673(A206432(n))]`
-/

namespace A310151.P12502886326291377320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189673 (A206432 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072154 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310151.P12502886326291377320

/-!
# A310152: Coordination sequence Gal.5.42.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310152, there is no canonical definition to state claims against.
-/

/-! ## A310152.P14015275390744578737

`record[A099386(2*n)]+record[lcm(2, n)/2]`
-/

namespace A310152.P14015275390744578737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099386 (2 * n)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) + f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A310152.P14015275390744578737

/-! ## A310152.P9050659299130105907

`A010873(A245790(n))+3*n`
-/

namespace A310152.P9050659299130105907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010873 (A245790 n).toNat + (3 * n : ℤ)

end

end A310152.P9050659299130105907

/-! ## A310152.P13489277758589305043

`A004273(n)+record[A099386(2*n)]`
-/

namespace A310152.P13489277758589305043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099386 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310152.P13489277758589305043

/-! ## A310152.P8539538521670801646

`record[A099386(2*n)]+A004277(n)-1`
-/

namespace A310152.P8539538521670801646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099386 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (A004277 n - 1)

end

end A310152.P8539538521670801646

/-! ## A310152.P1770454826779848200

`∑[A275663(∑[A007425(n+1)])]`
-/

namespace A310152.P1770454826779848200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275663 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310152.P1770454826779848200

/-!
# A310153: Coordination sequence Gal.6.98.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310153, there is no canonical definition to state claims against.
-/

/-! ## A310153.P17905180440257736197

`∑[A091090(∑[A008404(n+1)])]`
-/

namespace A310153.P17905180440257736197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008404 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091090 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310153.P17905180440257736197

/-!
# A310155: Coordination sequence Gal.6.42.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310155, there is no canonical definition to state claims against.
-/

/-! ## A310155.P12640842320008439199

`A310156(n)-A065202(A242080(n))`
-/

namespace A310155.P12640842320008439199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310156 n - A065202 (A242080 n).toNat

end

end A310155.P12640842320008439199

/-! ## A310155.P16623612065252217646

`∑[A001511(A206031(n+1)*A342179(n))]`
-/

namespace A310155.P16623612065252217646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A206031 (n + 1) * A342179 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310155.P16623612065252217646

/-! ## A310155.P10370640808989124821

`lt[A214614(A303808(2*n+3)), A122285(2*(n+2))]`
-/

namespace A310155.P10370640808989124821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214614 (A303808 (2 * n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122285 (2 * (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A310155.P10370640808989124821

/-!
# A310156: Coordination sequence Gal.6.43.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310156, there is no canonical definition to state claims against.
-/

/-! ## A310156.P4996746999255669490

`A310155(n)+A065202(A242080(n))`
-/

namespace A310156.P4996746999255669490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310155 n + A065202 (A242080 n).toNat

end

end A310156.P4996746999255669490

/-!
# A310157: Coordination sequence Gal.6.97.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310157, there is no canonical definition to state claims against.
-/

/-! ## A310157.P17984229098596784314

`∑[∑[A208978(A133494(n))]]`
-/

namespace A310157.P17984229098596784314
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208978 (A133494 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310157.P17984229098596784314

/-! ## A310157.P3841119744460369287

`∑[∑[A208978(A140429(n))]]`
-/

namespace A310157.P3841119744460369287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208978 (A140429 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310157.P3841119744460369287

/-! ## A310157.P8805181210810054337

`A228153(n+1)+A005361(A000110(n))`
-/

namespace A310157.P8805181210810054337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228153 (n + 1) + A005361 (A000110 n).toNat

end

end A310157.P8805181210810054337

/-! ## A310157.P618520192336809174

`A342431(n+1)+A010051(A220771(n))`
-/

namespace A310157.P618520192336809174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342431 (n + 1) + A010051 (A220771 n).toNat

end

end A310157.P618520192336809174

/-! ## A310157.P14403444420137154403

`A342431(n+1)+A010059(A342456(n))`
-/

namespace A310157.P14403444420137154403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342431 (n + 1) + A010059 (A342456 n).toNat

end

end A310157.P14403444420137154403

/-!
# A310158: Coordination sequence Gal.6.2.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310158, there is no canonical definition to state claims against.
-/

/-! ## A310158.P4983106541588873665

`∑[∑[A328958(A287351(n+1))]]`
-/

namespace A310158.P4983106541588873665
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328958 (A287351 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310158.P4983106541588873665

/-! ## A310158.P14983213406724034653

`∑[∑[A010891(A334615(n+2))]]`
-/

namespace A310158.P14983213406724034653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010891 (A334615 (n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310158.P14983213406724034653

/-! ## A310158.P4325970391461420503

`∑[dr(∑[A318255(3*n+4)])]`
-/

namespace A310158.P4325970391461420503
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318255 (3 * n + 4)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310158.P4325970391461420503

/-! ## A310158.P534294326912253846

`∑[∑[A080891(A093160(n))]]`
-/

namespace A310158.P534294326912253846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (A093160 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310158.P534294326912253846

/-! ## A310158.P2761571968498064357

`∑[∑[A156706(A085153(2*(n+1)))]]`
-/

namespace A310158.P2761571968498064357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156706 (A085153 (2 * (n + 1))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310158.P2761571968498064357

/-!
# A310159: Coordination sequence Gal.6.1.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310159, there is no canonical definition to state claims against.
-/

/-! ## A310159.P9858030195009739693

`∑[A182321(A232295(n+1)+A043518(n+1))]`
-/

namespace A310159.P9858030195009739693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182321 (A232295 (n + 1) + A043518 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310159.P9858030195009739693

/-! ## A310159.P17783395901487131582

`∑[∑[A244895(A148389(n))]]`
-/

namespace A310159.P17783395901487131582
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244895 (A148389 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310159.P17783395901487131582

/-! ## A310159.P17961725733465995452

`∑[∑[A080891(A352008(n))]]`
-/

namespace A310159.P17961725733465995452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080891 (A352008 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310159.P17961725733465995452

/-! ## A310159.P6776323060215277510

`∑[∑[A120630(A368026(n))]]`
-/

namespace A310159.P6776323060215277510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120630 (A368026 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310159.P6776323060215277510

/-! ## A310159.P10367256524039506219

`∑[∑[A330025(A271270(n))]]`
-/

namespace A310159.P10367256524039506219
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330025 (A271270 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310159.P10367256524039506219

/-!
# A310161: Coordination sequence Gal.6.3.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310161, there is no canonical definition to state claims against.
-/

/-! ## A310161.P832632847746997316

`∑[A242767(A000203(n+1)%A211988(2*(n+1))+2)]`
-/

namespace A310161.P832632847746997316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242767 (Int.tmod (A000203 (n + 1)) (A211988 (2 * (n + 1))) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310161.P832632847746997316

/-! ## A310161.P2231897510146023030

`∑[∑[A093829(A162162(n))]]`
-/

namespace A310161.P2231897510146023030
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093829 (A162162 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310161.P2231897510146023030

/-! ## A310161.P2575138150865822131

`∑[A260372(A050470(n+1))]`
-/

namespace A310161.P2575138150865822131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260372 (A050470 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310161.P2575138150865822131

/-! ## A310161.P10705154553333977405

`A063542(n+5)-∑[A363046(n+1)]`
-/

namespace A310161.P10705154553333977405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363046 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063542 (n + 5) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310161.P10705154553333977405

/-! ## A310161.P15922950631751216188

`(A164875(2*(n+1))/2)%A128460(2*(n+1))`
-/

namespace A310161.P15922950631751216188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A164875 (2 * (n + 1)) : ℚ) / 2)) (A128460 (2 * (n + 1)))

end

end A310161.P15922950631751216188

/-!
# A310165: Coordination sequence Gal.5.4.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310165, there is no canonical definition to state claims against.
-/

/-! ## A310165.P14563585857989268533

`A228518(A348478(n))+floor(3/acot(n))`
-/

namespace A310165.P14563585857989268533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228518 (A348478 n).toNat + ⌊3 / SequenceMachineLib.acot (n : ℝ)⌋

end

end A310165.P14563585857989268533

/-! ## A310165.P8549200829657085206

`A228518(A348478(n))+A008486(n)`
-/

namespace A310165.P8549200829657085206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228518 (A348478 n).toNat + A008486 n

end

end A310165.P8549200829657085206

/-!
# A310166: Coordination sequence Gal.6.10.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310166, there is no canonical definition to state claims against.
-/

/-! ## A310166.P7741021029018746235

`A310167(n^(1-(∑{digits}[n, #]-n)))`
-/

namespace A310166.P7741021029018746235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310167 (SequenceMachineLib.roundAway ((n : ℚ) ^ (1 - (((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ)) : ℤ))).toNat

end

end A310166.P7741021029018746235

/-! ## A310166.P12899103628477923574

`A310167(A087051(n))`
-/

namespace A310166.P12899103628477923574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310167 (A087051 n).toNat

end

end A310166.P12899103628477923574

/-! ## A310166.P16482777489334844619

`A310167(A227549(n+1))`
-/

namespace A310166.P16482777489334844619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310167 (A227549 (n + 1)).toNat

end

end A310166.P16482777489334844619

/-! ## A310166.P12428335445865242427

`A310167(A396204(n+1))`
-/

namespace A310166.P12428335445865242427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310167 (A396204 (n + 1)).toNat

end

end A310166.P12428335445865242427

/-! ## A310166.P3573234607076232801

`A310167(n)%A246120(n)`
-/

namespace A310166.P3573234607076232801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A310167 n) (A246120 n)

end

end A310166.P3573234607076232801

/-!
# A310167: Coordination sequence Gal.6.38.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310167, there is no canonical definition to state claims against.
-/

/-! ## A310167.P4816795311656499387

`A310166(n)+A010894(A301676(n))`
-/

namespace A310167.P4816795311656499387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310166 n + A010894 ((A301676 n).toNat + 21)

end

end A310167.P4816795311656499387

/-! ## A310167.P15519699398878928128

`A310166(n)+A010894(A311528(n))`
-/

namespace A310167.P15519699398878928128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310166 n + A010894 ((A311528 n).toNat + 21)

end

end A310167.P15519699398878928128

/-! ## A310167.P13902787505758041602

`A310166(n)+A010894(A314471(n))`
-/

namespace A310167.P13902787505758041602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310166 n + A010894 ((A314471 n).toNat + 21)

end

end A310167.P13902787505758041602

/-! ## A310167.P15627447095602029885

`A351415(n+1)-A007978(A000713(n+4))`
-/

namespace A310167.P15627447095602029885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351415 (n + 1) - A007978 (A000713 (n + 4)).toNat

end

end A310167.P15627447095602029885

/-!
# A310168: Coordination sequence Gal.6.37.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310168, there is no canonical definition to state claims against.
-/

/-! ## A310168.P9469588984404850406

`A311633(A000523(A001317(n)))-n`
-/

namespace A310168.P9469588984404850406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311633 (A000523 (A001317 n).toNat).toNat - (n : ℤ)

end

end A310168.P9469588984404850406

/-! ## A310168.P3631096971081520420

`A311633(A080791(A048578(n)))-n`
-/

namespace A310168.P3631096971081520420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311633 (A080791 (A048578 n).toNat).toNat - (n : ℤ)

end

end A310168.P3631096971081520420

/-! ## A310168.P10816199964623759238

`A311633(n)-A337357(2^n)`
-/

namespace A310168.P10816199964623759238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311633 n - A337357 (2 ^ n)

end

end A310168.P10816199964623759238

/-! ## A310168.P12715198854884794232

`A311633(n)-A001222(3^n)`
-/

namespace A310168.P12715198854884794232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A311633 n - A001222 (3 ^ n)

end

end A310168.P12715198854884794232

/-! ## A310168.P12038641362152196052

`∑[∑[A349434(A002846(n+1))]]`
-/

namespace A310168.P12038641362152196052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349434 (A002846 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310168.P12038641362152196052

/-!
# A310173: Coordination sequence Gal.6.11.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310173, there is no canonical definition to state claims against.
-/

/-! ## A310173.P7502534859456845996

`record[A195829(n+1)+A084531(n+1)]`
-/

namespace A310173.P7502534859456845996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195829 (n + 1) + A084531 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310173.P7502534859456845996

/-! ## A310173.P2393270130880375807

`A310174(n)-A011745(A011767(n))`
-/

namespace A310173.P2393270130880375807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310174 n - A011745 (A011767 n).toNat

end

end A310173.P2393270130880375807

/-! ## A310173.P8910408040033280594

`A310174(n)-A019428(A336265(n))`
-/

namespace A310173.P8910408040033280594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310174 n - A019428 (A336265 n).toNat

end

end A310173.P8910408040033280594

/-! ## A310173.P9259154146784447110

`A310174(n)-A011749(A027447(n+1))`
-/

namespace A310173.P9259154146784447110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310174 n - A011749 (A027447 (n + 1)).toNat

end

end A310173.P9259154146784447110

/-!
# A310174: Coordination sequence Gal.6.12.1 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310174, there is no canonical definition to state claims against.
-/

/-! ## A310174.P591989134165284662

`A310173(n)+A011745(A011767(n))`
-/

namespace A310174.P591989134165284662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310173 n + A011745 (A011767 n).toNat

end

end A310174.P591989134165284662

/-! ## A310174.P13284084632636727991

`A310173(n)+A019428(A336265(n))`
-/

namespace A310174.P13284084632636727991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310173 n + A019428 (A336265 n).toNat

end

end A310174.P13284084632636727991

/-! ## A310174.P5257392559019417465

`A310173(n)+A011749(A027447(n+1))`
-/

namespace A310174.P5257392559019417465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310173 n + A011749 (A027447 (n + 1)).toNat

end

end A310174.P5257392559019417465

/-!
# A310178: Coordination sequence Gal.6.48.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310178, there is no canonical definition to state claims against.
-/

/-! ## A310178.P14906983237447150549

`A356861(3*(n+1))+A309766(A318091(3*n+2))`
-/

namespace A310178.P14906983237447150549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356861 (3 * (n + 1)) + A309766 (A318091 (3 * n + 2)).toNat

end

end A310178.P14906983237447150549

/-!
# A310180: Coordination sequence Gal.6.96.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310180, there is no canonical definition to state claims against.
-/

/-! ## A310180.P9667896005778913769

`record[A239238(n+1)]+2*n-∑[n]%3`
-/

namespace A310180.P9667896005778913769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239238 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ((2 * n : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) % 3 : ℕ) : ℤ))

end

end A310180.P9667896005778913769

/-! ## A310180.P5122857308626420135

`record[gcd(A219192(n+1), A258432(n+1))]`
-/

namespace A310180.P5122857308626420135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A219192 (n + 1)) (A258432 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A310180.P5122857308626420135

/-! ## A310180.P8965476418394485201

`A158704(n+1)+A070939(A000108(n))`
-/

namespace A310180.P8965476418394485201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158704 (n + 1) + A070939 (A000108 n).toNat

end

end A310180.P8965476418394485201

/-! ## A310180.P13141792318852473349

`A001952(n+1)-A001222(A005902(3*n+2))`
-/

namespace A310180.P13141792318852473349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) - A001222 (A005902 (3 * n + 2)).toNat

end

end A310180.P13141792318852473349

/-!
# A310181: Coordination sequence Gal.6.50.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310181, there is no canonical definition to state claims against.
-/

/-! ## A310181.P5934652901430714505

`∑[A037888(∑[A014418(3*n+4)])]`
-/

namespace A310181.P5934652901430714505
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014418 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037888 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310181.P5934652901430714505

/-! ## A310181.P11010434196139070042

`A276854(n)+A193238(A031148(n+1))`
-/

namespace A310181.P11010434196139070042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276854 n + A193238 (A031148 (n + 1)).toNat

end

end A310181.P11010434196139070042

/-!
# A310182: Coordination sequence Gal.4.1.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310182, there is no canonical definition to state claims against.
-/

/-! ## A310182.P4904120251926026167

`A310731(n)-A346697(A001037(n))`
-/

namespace A310182.P4904120251926026167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310731 n - A346697 (A001037 n).toNat

end

end A310182.P4904120251926026167

/-!
# A310183: Coordination sequence Gal.6.42.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310183, there is no canonical definition to state claims against.
-/

/-! ## A310183.P17787730763515693210

`A324092(A206487(3*n+1)²)-(n-A312891(n))`
-/

namespace A310183.P17787730763515693210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324092 (A206487 (3 * n + 1) ^ 2).toNat - ((n : ℤ) - A312891 n)

end

end A310183.P17787730763515693210

/-! ## A310183.P7228379532842820312

`A310192(n)-A011730(5*2^n)`
-/

namespace A310183.P7228379532842820312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310192 n - A011730 (5 * 2 ^ n)

end

end A310183.P7228379532842820312

/-! ## A310183.P4986899933334291303

`A186726(A128160(n+1))+3*n`
-/

namespace A310183.P4986899933334291303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186726 (A128160 (n + 1)).toNat + (3 * n : ℤ)

end

end A310183.P4986899933334291303

/-! ## A310183.P16222353642555372470

`eq[A341000(3*n+4)², A242896(n)]`
-/

namespace A310183.P16222353642555372470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341000 (3 * n + 4 + 285) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242896 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A310183.P16222353642555372470

/-! ## A310183.P7887660991728047094

`abs(2-(A001221(6*n+1)+∑[A175064(n²+1)]+n))`
-/

namespace A310183.P7887660991728047094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175064 (n ^ 2 + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - (A001221 (6 * n + 1) + (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)))|

end

end A310183.P7887660991728047094

/-!
# A310185: Coordination sequence Gal.4.15.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310185, the canonical program `A310185.P18166255859914594122` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A310185 has offset 0).

The definition of A310185 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A310185.P18166255859914594122

`a(n-3)+a(n-6)-a(n-9)` with `a(0)=1, a(1)=3, a(2)=7, a(3)=10, a(4)=13, a(5)=19, a(6)=20, a(7)=23, a(8)=29, a(9)=30`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A310185

/-- `a(n-3)+a(n-6)-a(n-9)` -/
def P18166255859914594122.Spec : Prop :=
  ∀ n, P18166255859914594122.a n = A310185 n

theorem P18166255859914594122.correct : P18166255859914594122.Spec := by
  intro n
  simp only [A310185]

end A310185

/-! ## A310185.P8725511113512485573

`A298786(n)+Δ[A007590(A002264(n))]`
-/

namespace A310185.P8725511113512485573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n + (f1 (n + 1) - f1 n)

end

end A310185.P8725511113512485573

namespace A310185

/-- `A298786(n)+Δ[A007590(A002264(n))]` -/
def P8725511113512485573.Spec : Prop :=
  ∀ n, P8725511113512485573.a n = A310185 n

end A310185

/-! ## A310185.P3676553267582642438

`A008486(n)+Δ[A011861(A004773(n))]`
-/

namespace A310185.P3676553267582642438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 (A004773 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n + (f1 (n + 1) - f1 n)

end

end A310185.P3676553267582642438

namespace A310185

/-- `A008486(n)+Δ[A011861(A004773(n))]` -/
def P3676553267582642438.Spec : Prop :=
  ∀ n, P3676553267582642438.a n = A310185 n

end A310185

/-! ## A310185.P1264663380679235122

`Δ[A011861(A004773(n))]+A004277(n)+n`
-/

namespace A310185.P1264663380679235122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 (A004773 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A004277 n + (n : ℤ))

end

end A310185.P1264663380679235122

namespace A310185

/-- `Δ[A011861(A004773(n))]+A004277(n)+n` -/
def P1264663380679235122.Spec : Prop :=
  ∀ n, P1264663380679235122.a n = A310185 n

end A310185

/-! ## A310185.P16312310776294960873

`Δ[A011861(A004773(n))]+A008574(n)-n`
-/

namespace A310185.P16312310776294960873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011861 (A004773 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (A008574 n - (n : ℤ))

end

end A310185.P16312310776294960873

namespace A310185

/-- `Δ[A011861(A004773(n))]+A008574(n)-n` -/
def P16312310776294960873.Spec : Prop :=
  ∀ n, P16312310776294960873.a n = A310185 n

end A310185

/-! ## A310185.P17735649414539644764

`A004525(A310096(2*n))`
-/

namespace A310185.P17735649414539644764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310096 (2 * n)).toNat

end

end A310185.P17735649414539644764

namespace A310185

/-- `A004525(A310096(2*n))` -/
def P17735649414539644764.Spec : Prop :=
  ∀ n, P17735649414539644764.a n = A310185 n

end A310185

/-!
# A310186: Coordination sequence Gal.6.31.5 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310186, there is no canonical definition to state claims against.
-/

/-! ## A310186.P12695307444943653658

`A173178(n+1)-A307597(A249883(n+1))`
-/

namespace A310186.P12695307444943653658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173178 (n + 1) - A307597 (A249883 (n + 1)).toNat

end

end A310186.P12695307444943653658

/-!
# A310187: Coordination sequence Gal.6.10.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310187, there is no canonical definition to state claims against.
-/

/-! ## A310187.P6422880138494571376

`A335225(A084417(n+1))+A008486(n)`
-/

namespace A310187.P6422880138494571376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335225 (A084417 (n + 1)).toNat + A008486 n

end

end A310187.P6422880138494571376

/-!
# A310192: Coordination sequence Gal.6.43.4 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310192, there is no canonical definition to state claims against.
-/

/-! ## A310192.P6091546389654774807

`A001221(A293222(n+1))+A186726(A128160(n+1))+3*n`
-/

namespace A310192.P6091546389654774807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A293222 (n + 1)).toNat + (A186726 (A128160 (n + 1)).toNat + (3 * n : ℤ))

end

end A310192.P6091546389654774807

/-!
# A310193: Coordination sequence Gal.5.5.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310193, there is no canonical definition to state claims against.
-/

/-! ## A310193.P15770124298872001034

`A004525(A310169(2*n))`
-/

namespace A310193.P15770124298872001034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A310169 (2 * n)).toNat

end

end A310193.P15770124298872001034

/-!
# A310194: Coordination sequence Gal.6.2.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310194, there is no canonical definition to state claims against.
-/

/-! ## A310194.P5512182675616326514

`∑[A001222(A051308(3*n+2)+3)]`
-/

namespace A310194.P5512182675616326514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A051308 (3 * n + 2) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A310194.P5512182675616326514

/-! ## A310194.P11736048900724867188

`or(A014577(A108125(n)), A310180(n))`
-/

namespace A310194.P11736048900724867188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014577 (A108125 n).toNat) (A310180 n)

end

end A310194.P11736048900724867188

/-! ## A310194.P6186686925502397133

`or(A118102(A278989(n)), A310180(n))`
-/

namespace A310194.P6186686925502397133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A118102 (A278989 n).toNat) (A310180 n)

end

end A310194.P6186686925502397133

/-! ## A310194.P5835336963362075443

`A331381(A005105(n+1))+A005843(n)`
-/

namespace A310194.P5835336963362075443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331381 (A005105 (n + 1)).toNat + A005843 n

end

end A310194.P5835336963362075443

/-! ## A310194.P12067258065509104380

`A258025(n+1)+A196050(A092255(n))`
-/

namespace A310194.P12067258065509104380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258025 (n + 1) + A196050 (A092255 n).toNat

end

end A310194.P12067258065509104380

/-!
# A310195: Coordination sequence Gal.6.38.3 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310195, there is no canonical definition to state claims against.
-/

/-! ## A310195.P12132584368088958788

`or(A010766(A088305(n)), A060605(n+1))`
-/

namespace A310195.P12132584368088958788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010766 (A088305 n).toNat) (A060605 (n + 1))

end

end A310195.P12132584368088958788

/-! ## A310195.P1264686325851593274

`A246786(3*n+1)-A318721(A320541(n+3))`
-/

namespace A310195.P1264686325851593274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246786 (3 * n + 1) - A318721 (A320541 (n + 3)).toNat

end

end A310195.P1264686325851593274

/-! ## A310195.P4094322475776742308

`A111660(A310203(n)+A310197(n))`
-/

namespace A310195.P4094322475776742308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A310203 n + A310197 n).toNat

end

end A310195.P4094322475776742308

/-! ## A310195.P15072897457879119468

`A111660(A310206(n)+A310197(n))`
-/

namespace A310195.P15072897457879119468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (A310206 n + A310197 n).toNat

end

end A310195.P15072897457879119468

/-!
# A310196: Coordination sequence Gal.6.49.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310196, there is no canonical definition to state claims against.
-/

/-! ## A310196.P13753177081445434326

`A343013(2*n+1)-A091304(A174283(n+1))`
-/

namespace A310196.P13753177081445434326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343013 (2 * n + 1) - A091304 (A174283 (n + 1)).toNat

end

end A310196.P13753177081445434326

/-! ## A310196.P12890734763540571156

`A042996(2*n+1)+A327228(A185213(n+2))+A056878(n+1)`
-/

namespace A310196.P12890734763540571156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042996 (2 * n + 1) + (A327228 (A185213 (n + 2)).toNat + A056878 (n + 1))

end

end A310196.P12890734763540571156

/-! ## A310196.P11856087633145464629

`A061775(A000108(n))+char[or(2, n)]+2*n`
-/

namespace A310196.P11856087633145464629
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061775 (A000108 n).toNat + (((if ∃ j, f1 j = n then 1 else 0) + 2 * n : ℕ) : ℤ)

end

end A310196.P11856087633145464629

/-! ## A310196.P9829442050684477224

`A008574(n)-A037888(A156664(n))`
-/

namespace A310196.P9829442050684477224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A037888 (A156664 n).toNat

end

end A310196.P9829442050684477224

/-! ## A310196.P504918663432120711

`A296368(n)-A086435(A368098(n))`
-/

namespace A310196.P504918663432120711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296368 n - A086435 (A368098 n).toNat

end

end A310196.P504918663432120711

/-!
# A310197: Coordination sequence Gal.5.2.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310197, there is no canonical definition to state claims against.
-/

/-! ## A310197.P9297955776159818376

`A245554(A000108(n))+A003314(n+1)`
-/

namespace A310197.P9297955776159818376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245554 (A000108 n).toNat + A003314 (n + 1)

end

end A310197.P9297955776159818376

/-! ## A310197.P8324064146234137083

`A308427(A327023(n))+A172367(n+1)`
-/

namespace A310197.P8324064146234137083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308427 (A327023 n).toNat + A172367 (n + 1)

end

end A310197.P8324064146234137083

/-! ## A310197.P14765824059848255331

`A191873(n+1)+A046951(A001008(n+1))`
-/

namespace A310197.P14765824059848255331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191873 (n + 1) + A046951 (A001008 (n + 1)).toNat

end

end A310197.P14765824059848255331

/-! ## A310197.P12659777695260684380

`A211372(n+1)-A121373(A211350(2*(n+2)))`
-/

namespace A310197.P12659777695260684380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211372 (n + 1) - A121373 (A211350 (2 * (n + 2))).toNat

end

end A310197.P12659777695260684380

/-!
# A310198: Coordination sequence Gal.4.16.2 where Gal.u.t.v denotes the coordination sequence for a vertex of type v in tiling number t in the Galebach list of u-uniform tilings.

The programs for A310198, there is no canonical definition to state claims against.
-/

/-! ## A310198.P2319311967777695646

`A008574(n)-A004526(A315227(n)-A008574(n))`
-/

namespace A310198.P2319311967777695646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n - A004526 (A315227 n - A008574 n).toNat

end

end A310198.P2319311967777695646

/-! ## A310198.P18167168581847797922

`A315227(n)-A006368(A315227(n)-A008574(n))`
-/

namespace A310198.P18167168581847797922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315227 n - A006368 (A315227 n - A008574 n).toNat

end

end A310198.P18167168581847797922

/-! ## A310198.P10601626738878573606

`A008458(n)-A004526(A315227(n))`
-/

namespace A310198.P10601626738878573606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n - A004526 (A315227 n).toNat

end

end A310198.P10601626738878573606

/-! ## A310198.P448307214402372716

`record[A165998(n)]-A004526(A315227(n))`
-/

namespace A310198.P448307214402372716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A004526 (A315227 n).toNat

end

end A310198.P448307214402372716

/-! ## A310198.P14190811820591281443

`A008486(2*n)-A004526(A315227(n))`
-/

namespace A310198.P14190811820591281443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (2 * n) - A004526 (A315227 n).toNat

end

end A310198.P14190811820591281443

/-! ## A310198.P11342375566766935410

`2*A008486(n)-A004525(A315227(n))`
-/

namespace A310198.P11342375566766935410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008486 n - A004525 (A315227 n).toNat

end

end A310198.P11342375566766935410

/-! ## A310198.P11755872077771333287

`A005843(A008486(n))-A004525(A315227(n))`
-/

namespace A310198.P11755872077771333287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A008486 n).toNat - A004525 (A315227 n).toNat

end

end A310198.P11755872077771333287

/-! ## A310198.P13473588549230422423

`A006368(A008574(n))-A004526(A315227(n))`
-/

namespace A310198.P13473588549230422423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (A008574 n).toNat - A004526 (A315227 n).toNat

end

end A310198.P13473588549230422423

