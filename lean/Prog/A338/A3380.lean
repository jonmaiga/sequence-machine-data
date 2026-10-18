import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
# A338000: a(n) = 2^floor((2-n)/2)*Sum_{0 <= k <= n and A337966(n, k) < 0} A173018(n, k).

The programs for A338000, there is no canonical definition to state claims against.
-/

/-! ## A338000.P1052130582058809176

`A061358(A026933(n)+A000217(n))`
-/

namespace A338000.P1052130582058809176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061358 (A026933 n + A000217 n).toNat

end

end A338000.P1052130582058809176

/-! ## A338000.P5820296604208408290

`A066657(A284286(n))%A148683(n)`
-/

namespace A338000.P5820296604208408290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A066657 (A284286 n).toNat) (A148683 n)

end

end A338000.P5820296604208408290

/-! ## A338000.P16307793601992042355

`A260267(A326427(n))%A041077(n)`
-/

namespace A338000.P16307793601992042355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260267 (A326427 n).toNat) (A041077 n)

end

end A338000.P16307793601992042355

/-!
# A338001: Irregular triangle read by rows, a refinement of A271708.

The programs for A338001, there is no canonical definition to state claims against.
-/

/-! ## A338001.P4910681059050637150

`A271708(n)-A184955(A000009(n))`
-/

namespace A338001.P4910681059050637150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271708 n - A184955 (A000009 n).toNat

end

end A338001.P4910681059050637150

/-! ## A338001.P5641554240359603871

`A271708(n)-A035215(A182554(n+1))`
-/

namespace A338001.P5641554240359603871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271708 n - A035215 (A182554 (n + 1)).toNat

end

end A338001.P5641554240359603871

/-!
# A338006: Maximal size of a subset of {1..n} such that every pair of (not necessarily distinct) elements has a different product.

The programs for A338006, there is no canonical definition to state claims against.
-/

/-! ## A338006.P16838977551577855040

`∑[A215581(A136129(A023890(n+1)))]`
-/

namespace A338006.P16838977551577855040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215581 (A136129 (A023890 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338006.P16838977551577855040

/-! ## A338006.P17685260522527690294

`A008621(A003003(A315526(n)))`
-/

namespace A338006.P17685260522527690294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A003003 (A315526 n).toNat).toNat

end

end A338006.P17685260522527690294

/-! ## A338006.P2902657586015039073

`A085423(record[A037027(n)])`
-/

namespace A338006.P2902657586015039073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085423 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338006.P2902657586015039073

/-! ## A338006.P2568759478811305084

`A085423(record[A155161(n)])`
-/

namespace A338006.P2568759478811305084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155161 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085423 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338006.P2568759478811305084

/-! ## A338006.P1349052352053898303

`∑[A343152(3*(n+1))%2]`
-/

namespace A338006.P1349052352053898303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A343152 (3 * (n + 1))) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338006.P1349052352053898303

/-!
# A338007: Odd composite integers m such that A001906(m)^2 == 1 (mod m).

The programs for A338007, there is no canonical definition to state claims against.
-/

/-! ## A338007.P717670799408552496

`filter[A338082(n+1), A011558(#)]`
-/

namespace A338007.P717670799408552496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338082 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011558 (f1 j).toNat = 1) n)

end

end A338007.P717670799408552496

/-! ## A338007.P14238544638836676288

`record[A106611(A338082(n+1))]`
-/

namespace A338007.P14238544638836676288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106611 (A338082 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338007.P14238544638836676288

/-! ## A338007.P10289354003423215385

`∩[A338082(n+1), A100490(n)]`
-/

namespace A338007.P10289354003423215385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338082 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100490 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338007.P10289354003423215385

/-! ## A338007.P17031378573500679410

`∩[A053795(n+1), A338082(n+1)]`
-/

namespace A338007.P17031378573500679410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338007.P17031378573500679410

/-! ## A338007.P15881201667367095708

`∩[A045572(n+1), A338082(n+1)]`
-/

namespace A338007.P15881201667367095708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338082 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338007.P15881201667367095708

/-!
# A338011: Odd composite integers m such that A004187(m)^2 == 1 (mod m).

The programs for A338011, there is no canonical definition to state claims against.
-/

/-! ## A338011.P5787607272279365213

`A339730(record[Δ[A339769(n)]])`
-/

namespace A338011.P5787607272279365213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339769 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339730 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338011.P5787607272279365213

/-! ## A338011.P8200278265525183038

`A339730(∑[A135265(3^n+5^n)])`
-/

namespace A338011.P8200278265525183038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135265 (3 ^ n + 5 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339730 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338011.P8200278265525183038

/-!
# A338012: a(1)=0; thereafter, a(n) is the smallest number such that the addition and multiplication tables for (a(1),...,a(n)) together contain n^2 different entries (the maximum possible).

The programs for A338012, there is no canonical definition to state claims against.
-/

/-! ## A338012.P11829337165764888898

`A338015(∑[n+1])`
-/

namespace A338012.P11829337165764888898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338015 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A338012.P11829337165764888898

/-! ## A338012.P1131360053187686476

`A338014(∑[n]+1)`
-/

namespace A338012.P1131360053187686476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338014 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A338012.P1131360053187686476

/-! ## A338012.P13415625980035815600

`sqrt(A338016(∑[n+1]))`
-/

namespace A338012.P13415625980035815600
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A338016 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A338012.P13415625980035815600

/-! ## A338012.P3467748674941072062

`A338016(∑[n]+2)/3`
-/

namespace A338012.P3467748674941072062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338016 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ) / 3

end

end A338012.P3467748674941072062

/-! ## A338012.P6882198971109049096

`A338014(C(n+2, 2))/2`
-/

namespace A338012.P6882198971109049096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338014 (Nat.choose (n + 2) 2) : ℚ) / 2

end

end A338012.P6882198971109049096

/-! ## A338012.P3372748696861093048

`and(-1, A338015(A000124(n)))`
-/

namespace A338012.P3372748696861093048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A338015 (A000124 n).toNat)

end

end A338012.P3372748696861093048

/-! ## A338012.P10875373521365242604

`record[A338015(A056534(n+1))]`
-/

namespace A338012.P10875373521365242604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338015 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338012.P10875373521365242604

/-! ## A338012.P15495573234933941117

`A338015(A000124(n))%A010004(n)`
-/

namespace A338012.P15495573234933941117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A338015 (A000124 n).toNat) (A010004 n)

end

end A338012.P15495573234933941117

/-! ## A338012.P16786366423021482478

`A338017(∑[n+2])/3`
-/

namespace A338012.P16786366423021482478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338017 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A338012.P16786366423021482478

/-!
# A338014: Triangular array read by rows: T(n,k) = A338012(n) + A338012(k) for 1 <= k <= n.

The programs for A338014, there is no canonical definition to state claims against.
-/

/-! ## A338014.P2173847698638904620

`A338015(A245300(n)+1)`
-/

namespace A338014.P2173847698638904620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338015 (A245300 n + 1).toNat

end

end A338014.P2173847698638904620

/-!
# A338016: Triangular array read by rows: T(n,k) = A338012(n) * A338012(k) for 1 <= k <= n.

The programs for A338016, there is no canonical definition to state claims against.
-/

/-! ## A338016.P12403877501267091709

`A338017(A245300(n)+1)`
-/

namespace A338016.P12403877501267091709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338017 (A245300 n + 1).toNat

end

end A338016.P12403877501267091709

/-!
# A338017: Multiplication table of A338012, read by antidiagonals.

The programs for A338017, there is no canonical definition to state claims against.
-/

/-! ## A338017.P13104173066829282523

`∏{e}[A033851(n+1), A338012(#)]`
-/

namespace A338017.P13104173066829282523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A338012 (Nat.factorization (f1 n).natAbs p)

end

end A338017.P13104173066829282523

/-!
# A338018: Primes not in A228629.

The programs for A338018, there is no canonical definition to state claims against.
-/

/-! ## A338018.P2437548458687614743

`p?[A000194(A000326(n))+3]`
-/

namespace A338018.P2437548458687614743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (A000326 n).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338018.P2437548458687614743

/-! ## A338018.P15079858680153155512

`p?[A060000(A000196(A134479(n)))]`
-/

namespace A338018.P15079858680153155512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060000 (A000196 (A134479 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338018.P15079858680153155512

/-! ## A338018.P13582772364297158206

`p?[A000196(A045943(n)+A007599(n))]`
-/

namespace A338018.P13582772364297158206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A045943 n + A007599 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338018.P13582772364297158206

/-! ## A338018.P18020098560455491957

`p?[A000196(A045943(n)+A038128(n))]`
-/

namespace A338018.P18020098560455491957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A045943 n + A038128 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338018.P18020098560455491957

/-! ## A338018.P6813149999722551612

`A000040(lt[A248473(3*n+4), n+1])`
-/

namespace A338018.P6813149999722551612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248473 (3 * n + 4)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A338018.P6813149999722551612

/-!
# A338020: a(n) is the number of circles of positive integer area with radii less than n and greater than n - 1.

The programs for A338020, the canonical program `A338020.P8864971632284096299` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338020 has offset 1).

The definition of A338020 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338020.P8864971632284096299

`A066643(n+1)-A066643(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A338020

/-- `A066643(n+1)-A066643(n)` -/
def P8864971632284096299.Spec : Prop :=
  ∀ n, P8864971632284096299.a n = A338020 (n + 1)

theorem P8864971632284096299.correct : P8864971632284096299.Spec := by
  intro n
  simp only [A338020, Nat.add_sub_cancel]

end A338020

/-! ## A338020.P16715579753027370553

`Δ[floor(π*n²)]`
-/

namespace A338020.P16715579753027370553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n ^ 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338020.P16715579753027370553

namespace A338020

/-- `Δ[floor(π*n²)]` -/
def P16715579753027370553.Spec : Prop :=
  ∀ n, P16715579753027370553.a n = A338020 (n + 1)

end A338020

/-! ## A338020.P4437089515737530272

`Δ[ceil(π*n²)]-C(2, n+2)`
-/

namespace A338020.P4437089515737530272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.pi * (n ^ 2 : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (Nat.choose 2 (n + 2) : ℤ)

end

end A338020.P4437089515737530272

namespace A338020

/-- `Δ[ceil(π*n²)]-C(2, n+2)` -/
def P4437089515737530272.Spec : Prop :=
  ∀ n, P4437089515737530272.a n = A338020 (n + 1)

end A338020

/-! ## A338020.P2273473998711853386

`(n%2)!*Δ[floor(π*n*n)]`
-/

namespace A338020.P2273473998711853386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n * n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * (f1 (n + 1) - f1 n)

end

end A338020.P2273473998711853386

namespace A338020

/-- `(n%2)!*Δ[floor(π*n*n)]` -/
def P2273473998711853386.Spec : Prop :=
  ∀ n, P2273473998711853386.a n = A338020 (n + 1)

end A338020

/-! ## A338020.P118915375069967702

`and(1, n)!*Δ[floor(π*n*n)]`
-/

namespace A338020.P118915375069967702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n * n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 n) : ℤ) * (f1 (n + 1) - f1 n)

end

end A338020.P118915375069967702

namespace A338020

/-- `and(1, n)!*Δ[floor(π*n*n)]` -/
def P118915375069967702.Spec : Prop :=
  ∀ n, P118915375069967702.a n = A338020 (n + 1)

end A338020

/-! ## A338020.P14445814370563195513

`Δ[floor(π*n*n)]*char[xor(2, n)]`
-/

namespace A338020.P14445814370563195513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n * n : ℝ)⌋

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A338020.P14445814370563195513

namespace A338020

/-- `Δ[floor(π*n*n)]*char[xor(2, n)]` -/
def P14445814370563195513.Spec : Prop :=
  ∀ n, P14445814370563195513.a n = A338020 (n + 1)

end A338020

/-! ## A338020.P14673163547521719549

`Δ[floor(π*n*n)]+(2*n)%2`
-/

namespace A338020.P14673163547521719549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n * n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ((2 * n % 2 : ℕ) : ℤ)

end

end A338020.P14673163547521719549

namespace A338020

/-- `Δ[floor(π*n*n)]+(2*n)%2` -/
def P14673163547521719549.Spec : Prop :=
  ∀ n, P14673163547521719549.a n = A338020 (n + 1)

end A338020

/-! ## A338020.P17888848866697113920

`A007318(C(2, n))*Δ[floor(π*n*n)]`
-/

namespace A338020.P17888848866697113920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n * n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * (f1 (n + 1) - f1 n)

end

end A338020.P17888848866697113920

namespace A338020

/-- `A007318(C(2, n))*Δ[floor(π*n*n)]` -/
def P17888848866697113920.Spec : Prop :=
  ∀ n, P17888848866697113920.a n = A338020 (n + 1)

end A338020

/-! ## A338020.P4202284653126572078

`abs(Δ[A066643(n)])`
-/

namespace A338020.P4202284653126572078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A338020.P4202284653126572078

namespace A338020

/-- `abs(Δ[A066643(n)])` -/
def P4202284653126572078.Spec : Prop :=
  ∀ n, P4202284653126572078.a n = A338020 (n + 1)

end A338020

/-! ## A338020.P2068657040463518591

`A000027(Δ[A066643(n)])`
-/

namespace A338020.P2068657040463518591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (n + 1) - f1 n).toNat

end

end A338020.P2068657040463518591

namespace A338020

/-- `A000027(Δ[A066643(n)])` -/
def P2068657040463518591.Spec : Prop :=
  ∀ n, P2068657040463518591.a n = A338020 (n + 1)

end A338020

/-! ## A338020.P10341530909327995564

`char[A126456(n+2)²²]+Δ[A066643(n)]`
-/

namespace A338020.P10341530909327995564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126456 (n + 2) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A338020.P10341530909327995564

namespace A338020

/-- `char[A126456(n+2)²²]+Δ[A066643(n)]` -/
def P10341530909327995564.Spec : Prop :=
  ∀ n, P10341530909327995564.a n = A338020 (n + 1)

end A338020

/-! ## A338020.P14403684678591841025

`char[A126446(n+3)²²]+Δ[A066643(n)]`
-/

namespace A338020.P14403684678591841025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A126446 (n + 3) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A338020.P14403684678591841025

namespace A338020

/-- `char[A126446(n+3)²²]+Δ[A066643(n)]` -/
def P14403684678591841025.Spec : Prop :=
  ∀ n, P14403684678591841025.a n = A338020 (n + 1)

end A338020

/-! ## A338020.P2556826349995197666

`char[A114315(n+4)²²]+Δ[A066643(n)]`
-/

namespace A338020.P2556826349995197666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A114315 (n + 4) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A338020.P2556826349995197666

namespace A338020

/-- `char[A114315(n+4)²²]+Δ[A066643(n)]` -/
def P2556826349995197666.Spec : Prop :=
  ∀ n, P2556826349995197666.a n = A338020 (n + 1)

end A338020

/-! ## A338020.P16534738897149845082

`char[A114856(n+5)²²]+Δ[A066643(n)]`
-/

namespace A338020.P16534738897149845082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A114856 (n + 5) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A338020.P16534738897149845082

namespace A338020

/-- `char[A114856(n+5)²²]+Δ[A066643(n)]` -/
def P16534738897149845082.Spec : Prop :=
  ∀ n, P16534738897149845082.a n = A338020 (n + 1)

end A338020

/-! ## A338020.P18333478870767535958

`char[A098265(2*(n+2))²²]+Δ[A066643(n)]`
-/

namespace A338020.P18333478870767535958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A098265 (2 * (n + 2)) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A338020.P18333478870767535958

namespace A338020

/-- `char[A098265(2*(n+2))²²]+Δ[A066643(n)]` -/
def P18333478870767535958.Spec : Prop :=
  ∀ n, P18333478870767535958.a n = A338020 (n + 1)

end A338020

/-! ## A338020.P11798913914989071373

`char[A283228(2*(n+2))²²]+Δ[A066643(n)]`
-/

namespace A338020.P11798913914989071373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A283228 (2 * (n + 2)) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A338020.P11798913914989071373

namespace A338020

/-- `char[A283228(2*(n+2))²²]+Δ[A066643(n)]` -/
def P11798913914989071373.Spec : Prop :=
  ∀ n, P11798913914989071373.a n = A338020 (n + 1)

end A338020

/-! ## A338020.P4219331541864538517

`char[A175166(2*n+3)²²]+Δ[A066643(n)]`
-/

namespace A338020.P4219331541864538517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175166 (2 * n + 3) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066643 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) + (f2 (n + 1) - f2 n)

end

end A338020.P4219331541864538517

namespace A338020

/-- `char[A175166(2*n+3)²²]+Δ[A066643(n)]` -/
def P4219331541864538517.Spec : Prop :=
  ∀ n, P4219331541864538517.a n = A338020 (n + 1)

end A338020

/-! ## A338020.P16115372554225591143

`A014963(8*n+6)*Δ[floor(π*n*n)]`
-/

namespace A338020.P16115372554225591143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n * n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 6) * (f1 (n + 1) - f1 n)

end

end A338020.P16115372554225591143

namespace A338020

/-- `A014963(8*n+6)*Δ[floor(π*n*n)]` -/
def P16115372554225591143.Spec : Prop :=
  ∀ n, P16115372554225591143.a n = A338020 (n + 1)

end A338020

/-! ## A338020.P11641269981827924760

`Δ[floor(π*n*n)]%A000032(n+4)`
-/

namespace A338020.P11641269981827924760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.pi * (n * n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A000032 (n + 4))

end

end A338020.P11641269981827924760

namespace A338020

/-- `Δ[floor(π*n*n)]%A000032(n+4)` -/
def P11641269981827924760.Spec : Prop :=
  ∀ n, P11641269981827924760.a n = A338020 (n + 1)

end A338020

/-!
# A338021: Number of partitions of n into two parts (s,t) such that s <= t and t | s*n.

The programs for A338021, there is no canonical definition to state claims against.
-/

/-! ## A338021.P2785087024175316383

`A024155(n+1)+A270417(n+1)+A000035(n)`
-/

namespace A338021.P2785087024175316383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024155 (n + 1) + (A270417 (n + 1) + A000035 n)

end

end A338021.P2785087024175316383

/-! ## A338021.P13161634805761497478

`A056137(2*(n+1))%A195766(A106486(3*n+4))`
-/

namespace A338021.P13161634805761497478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056137 (2 * (n + 1))) (A195766 (A106486 (3 * n + 4)).toNat)

end

end A338021.P13161634805761497478

/-! ## A338021.P17264754962232657230

`A002033(A060546(n))%A161506(n+1)`
-/

namespace A338021.P17264754962232657230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002033 (A060546 n).toNat) (A161506 (n + 1))

end

end A338021.P17264754962232657230

/-! ## A338021.P124840375558180763

`A309684(A070032(n+1))%A128537(n+1)`
-/

namespace A338021.P124840375558180763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309684 (A070032 (n + 1)).toNat) (A128537 (n + 1))

end

end A338021.P124840375558180763

/-! ## A338021.P10229405570332880456

`A324852(A024450(n+2))`
-/

namespace A338021.P10229405570332880456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324852 (A024450 (n + 2)).toNat

end

end A338021.P10229405570332880456

/-!
# A338023: Primes q for which in the q-cyclotomic field the 2-dimension of the group of circular units over the group of totally positive circular units is not maximal.

The programs for A338023, there is no canonical definition to state claims against.
-/

/-! ## A338023.P17903153192319620107

`A107806(A135708(2*n+5)%A023001(n+2))`
-/

namespace A338023.P17903153192319620107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107806 (Int.tmod (A135708 (2 * n + 5)) (A023001 (n + 2))).toNat

end

end A338023.P17903153192319620107

/-!
# A338024: Minimal number of moves for the cyclic variant of Hanoi's tower for 4 pegs and n disks, with the final peg one step away.

The programs for A338024, there is no canonical definition to state claims against.
-/

/-! ## A338024.P9592921830745247172

`∑[or(1, A294150(3*(n+1)))]`
-/

namespace A338024.P9592921830745247172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A294150 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338024.P9592921830745247172

/-! ## A338024.P12795289138983136034

`∑[∑[A194443(A256536(n+1))]]`
-/

namespace A338024.P12795289138983136034
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194443 (A256536 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338024.P12795289138983136034

/-! ## A338024.P7819929324335355990

`A053645(A281482(n)+A262021(n+1))`
-/

namespace A338024.P7819929324335355990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053645 (A281482 n + A262021 (n + 1)).toNat

end

end A338024.P7819929324335355990

/-!
# A338025: a(n) = LCM(k*j_1!*...*j_k! : j_1,...,j_k>=1, j_1+...+j_k=n, k=1,...,n)/n!.

The programs for A338025, there is no canonical definition to state claims against.
-/

/-! ## A338025.P7921230583022668378

`A019554(A363596(n))`
-/

namespace A338025.P7921230583022668378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (A363596 n).toNat

end

end A338025.P7921230583022668378

/-! ## A338025.P6921711293270779678

`A019555(A048896(n)*A195441(n))`
-/

namespace A338025.P6921711293270779678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A048896 n * A195441 n).toNat

end

end A338025.P6921711293270779678

/-! ## A338025.P14081139182038749860

`A019554(lcm(A048896(n), A195441(n)))`
-/

namespace A338025.P14081139182038749860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (Int.lcm (A048896 n) (A195441 n))

end

end A338025.P14081139182038749860

/-! ## A338025.P3086283291776578665

`A019555(A064538(n)/(n+1)*A048896(n))`
-/

namespace A338025.P3086283291776578665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (SequenceMachineLib.roundAway ((A064538 n : ℚ) / (n + 1 : ℚ) * (A048896 n : ℚ))).toNat

end

end A338025.P3086283291776578665

/-! ## A338025.P5743692442430757502

`A019555(A048896(n)*A324369(n+1)*A318256(n))`
-/

namespace A338025.P5743692442430757502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019555 (A048896 n * A324369 (n + 1) * A318256 n).toNat

end

end A338025.P5743692442430757502

/-!
# A338026: a(1) = 8; for n > 1, a(n) is the largest integer m such that m = ((2*x*a(n-1)) / (x+1)) - x, with x a positive nontrivial divisor of m.

The programs for A338026, there is no canonical definition to state claims against.
-/

/-! ## A338026.P16028848734661207491

`A220114(2*a(n-1))+1` with `a(0)=8`
-/

namespace A338026.P16028848734661207491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A220114 (2 * a (n - 1)).toNat + 1

end

end A338026.P16028848734661207491

/-! ## A338026.P10820151086112794480

`A309965(A004273(a(n-1)))` with `a(0)=8`
-/

namespace A338026.P10820151086112794480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [8] fun n a =>
  A309965 (A004273 (a (n - 1)).toNat).toNat

end

end A338026.P10820151086112794480

/-! ## A338026.P11350178462919302357

`∑[A350029(a(n-1)-(1-n)*a(n-2))]` with `a(0)=8, a(1)=1, a(2)=1`
-/

namespace A338026.P11350178462919302357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 1, 1] fun n f1 =>
  A350029 (f1 (n - 1) - (1 - (n : ℤ)) * f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338026.P11350178462919302357

/-! ## A338026.P7974064852540225113

`A153671(A186537(n)+8)`
-/

namespace A338026.P7974064852540225113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153671 (A186537 n + 8).toNat

end

end A338026.P7974064852540225113

/-! ## A338026.P5440524422154073870

`A186537(n)+A003963(A175805(n))`
-/

namespace A338026.P5440524422154073870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186537 n + A003963 (A175805 n).toNat

end

end A338026.P5440524422154073870

/-!
# A338029: Square array T(n,k), n >= 1, k >= 1, read by antidiagonals, where T(n,k) is the number of spanning trees in the n X k king graph.

The programs for A338029, there is no canonical definition to state claims against.
-/

/-! ## A338029.P6506122608913919037

`A085007(A022176(n))`
-/

namespace A338029.P6506122608913919037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085007 (A022176 n).toNat

end

end A338029.P6506122608913919037

/-! ## A338029.P16626460280005255569

`A004773(A176627(n))`
-/

namespace A338029.P16626460280005255569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004773 (A176627 n).toNat

end

end A338029.P16626460280005255569

/-! ## A338029.P10595378708354403266

`A166976(A155494(n))`
-/

namespace A338029.P10595378708354403266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166976 (A155494 n).toNat

end

end A338029.P10595378708354403266

/-! ## A338029.P7417682937678238213

`A297110(A173885(n))`
-/

namespace A338029.P7417682937678238213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297110 (A173885 n).toNat

end

end A338029.P7417682937678238213

/-! ## A338029.P6867094245295294983

`A343736(A141597(n))`
-/

namespace A338029.P6867094245295294983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343736 (A141597 n).toNat

end

end A338029.P6867094245295294983

/-!
# A338030: Primes p such that reverse(p), reverse(2*p) and reverse(2*reverse(p)) are all primes, where reverse = A004086.

The programs for A338030, there is no canonical definition to state claims against.
-/

/-! ## A338030.P14575840848910877691

`A175944(A081934(n+1)+A048367(n+1))`
-/

namespace A338030.P14575840848910877691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175944 (A081934 (n + 1) + A048367 (n + 1)).toNat

end

end A338030.P14575840848910877691

/-!
# A338031: Triangular array read by rows: T(n,k) = A337656(n) + A337656(k) for 1 <= k <= n.

The programs for A338031, there is no canonical definition to state claims against.
-/

/-! ## A338031.P8589350325716773429

`A338032(A245300(n)+1)`
-/

namespace A338031.P8589350325716773429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338032 (A245300 n + 1).toNat

end

end A338031.P8589350325716773429

/-!
# A338032: Addition table of A337656, read by antidiagonals.

The programs for A338032, there is no canonical definition to state claims against.
-/

/-! ## A338032.P17561427487175017375

`A218550(A131816(n))%27`
-/

namespace A338032.P17561427487175017375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A218550 (A131816 n).toNat) 27

end

end A338032.P17561427487175017375

/-! ## A338032.P7563470181481737632

`A000523(A122768(A131816(n)))`
-/

namespace A338032.P7563470181481737632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A122768 (A131816 n).toNat).toNat

end

end A338032.P7563470181481737632

/-! ## A338032.P9426828305652251030

`A064289(A182097(A049723(n)))`
-/

namespace A338032.P9426828305652251030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 (A182097 (A049723 n).toNat).toNat

end

end A338032.P9426828305652251030

/-! ## A338032.P9109460703255743905

`A098294(A143824(A048147(n)²))`
-/

namespace A338032.P9109460703255743905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098294 (A143824 (A048147 n ^ 2).toNat).toNat

end

end A338032.P9109460703255743905

/-! ## A338032.P8117842005703155437

`A131816(n)-A345907(A283989(n))`
-/

namespace A338032.P8117842005703155437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n - A345907 (A283989 n).toNat

end

end A338032.P8117842005703155437

/-!
# A338033: Triangular array read by rows: T(n,k) = A337656(n) * A337656(k) for 1 <= k <= n.

The programs for A338033, there is no canonical definition to state claims against.
-/

/-! ## A338033.P1419282381901896352

`A338034(A245300(n)+1)`
-/

namespace A338033.P1419282381901896352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338034 (A245300 n + 1).toNat

end

end A338033.P1419282381901896352

/-!
# A338034: Multiplication table of A337656, read by antidiagonals.

The programs for A338034, there is no canonical definition to state claims against.
-/

/-! ## A338034.P10986224975720236793

`∏{e}[A033851(n+1), A337656(#)]`
-/

namespace A338034.P10986224975720236793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033851 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A337656 (Nat.factorization (f1 n).natAbs p)

end

end A338034.P10986224975720236793

/-! ## A338034.P4434015043323743742

`A306326(n)-A306326(A007318(2*(n+1)))`
-/

namespace A338034.P4434015043323743742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306326 n - A306326 (A007318 (2 * (n + 1))).toNat

end

end A338034.P4434015043323743742

/-! ## A338034.P4278931720966606351

`A306326(n)-A306326(A374452(2*(n+1)))`
-/

namespace A338034.P4278931720966606351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306326 n - A306326 (A374452 (2 * (n + 1))).toNat

end

end A338034.P4278931720966606351

/-! ## A338034.P14158642411539573965

`A057768(A174790(n))`
-/

namespace A338034.P14158642411539573965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057768 (A174790 n).toNat

end

end A338034.P14158642411539573965

/-! ## A338034.P6165594479241003488

`A049819(A228900(n))`
-/

namespace A338034.P6165594479241003488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049819 (A228900 n).toNat

end

end A338034.P6165594479241003488

/-!
# A338037: Triangle T(n,m) = C(2*m-1,m)*C(n+2*m-1,n-m).

The programs for A338037, there is no canonical definition to state claims against.
-/

/-! ## A338037.P454666320639709116

`A088218(A002262(n))*A206294(n)`
-/

namespace A338037.P454666320639709116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (A002262 n).toNat * A206294 n

end

end A338037.P454666320639709116

/-! ## A338037.P1066436331303498441

`lcm(A360737(A360688(n+1)), A360742(n))`
-/

namespace A338037.P1066436331303498441
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A360737 (A360688 (n + 1)).toNat) (A360742 n)

end

end A338037.P1066436331303498441

/-!
# A338038: a(n) is the sum of the primes and exponents in the prime factorization of n, but ignoring 1-exponents.

The programs for A338038, the canonical program `A338038.P9375141477363809092` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338038 has offset 1).

The definition of A338038 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338038.P9375141477363809092

`A275812(n+1)+A008472(n+1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A338038

/-- `A275812(n+1)+A008472(n+1)` -/
def P9375141477363809092.Spec : Prop :=
  ∀ n, P9375141477363809092.a n = A338038 (n + 1)

theorem P9375141477363809092.correct : P9375141477363809092.Spec := by
  intro n
  simp only [A338038, Nat.add_sub_cancel]

end A338038

/-! ## A338038.P14911809872743615834

`A008474(n+1)-A056169(n+1)`
-/

namespace A338038.P14911809872743615834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (n + 1) - A056169 (n + 1)

end

end A338038.P14911809872743615834

namespace A338038

/-- `A008474(n+1)-A056169(n+1)` -/
def P14911809872743615834.Spec : Prop :=
  ∀ n, P14911809872743615834.a n = A338038 (n + 1)

end A338038

/-! ## A338038.P7728731888632829997

`A159076(n+1)-(A056169(n+1)+2)`
-/

namespace A338038.P7728731888632829997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159076 (n + 1) - (A056169 (n + 1) + 2)

end

end A338038.P7728731888632829997

namespace A338038

/-- `A159076(n+1)-(A056169(n+1)+2)` -/
def P7728731888632829997.Spec : Prop :=
  ∀ n, P7728731888632829997.a n = A338038 (n + 1)

end A338038

/-! ## A338038.P12062532135454922577

`∑{p}[n+1, #]+A001222(A057521(n+1))`
-/

namespace A338038.P12062532135454922577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℤ) + A001222 (A057521 (n + 1)).toNat

end

end A338038.P12062532135454922577

namespace A338038

/-- `∑{p}[n+1, #]+A001222(A057521(n+1))` -/
def P12062532135454922577.Spec : Prop :=
  ∀ n, P12062532135454922577.a n = A338038 (n + 1)

end A338038

/-! ## A338038.P5916315370344384614

`A008472(n+1)+A001222(A057521(n+1))`
-/

namespace A338038.P5916315370344384614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + A001222 (A057521 (n + 1)).toNat

end

end A338038.P5916315370344384614

namespace A338038

/-- `A008472(n+1)+A001222(A057521(n+1))` -/
def P5916315370344384614.Spec : Prop :=
  ∀ n, P5916315370344384614.a n = A338038 (n + 1)

end A338038

/-! ## A338038.P6697276681987200280

`A008474(n+1)-A001222(A055231(n+1))`
-/

namespace A338038.P6697276681987200280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008474 (n + 1) - A001222 (A055231 (n + 1)).toNat

end

end A338038.P6697276681987200280

namespace A338038

/-- `A008474(n+1)-A001222(A055231(n+1))` -/
def P6697276681987200280.Spec : Prop :=
  ∀ n, P6697276681987200280.a n = A338038 (n + 1)

end A338038

/-! ## A338038.P7106862149668161327

`A008472(n+1)+A001414(∏{e}[n+1, A000792(#)])`
-/

namespace A338038.P7106862149668161327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + A001414 (∏ p ∈ Nat.primeFactors (f1 n), A000792 (Nat.factorization (f1 n) p)).toNat

end

end A338038.P7106862149668161327

namespace A338038

/-- `A008472(n+1)+A001414(∏{e}[n+1, A000792(#)])` -/
def P7106862149668161327.Spec : Prop :=
  ∀ n, P7106862149668161327.a n = A338038 (n + 1)

end A338038

/-! ## A338038.P13959093791713568579

`A001222(n+1)+A008472(n+1)-A056169(n+1)`
-/

namespace A338038.P13959093791713568579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) + (A008472 (n + 1) - A056169 (n + 1))

end

end A338038.P13959093791713568579

namespace A338038

/-- `A001222(n+1)+A008472(n+1)-A056169(n+1)` -/
def P13959093791713568579.Spec : Prop :=
  ∀ n, P13959093791713568579.a n = A338038 (n + 1)

end A338038

/-! ## A338038.P8055145759873414012

`A106445(A106444(A106492(n+1)))`
-/

namespace A338038.P8055145759873414012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106445 (A106444 (A106492 (n + 1)).toNat).toNat

end

end A338038.P8055145759873414012

namespace A338038

/-- `A106445(A106444(A106492(n+1)))` -/
def P8055145759873414012.Spec : Prop :=
  ∀ n, P8055145759873414012.a n = A338038 (n + 1)

end A338038

/-!
# A338041: Draw n rays from each of two distinct points in the plane; a(n) is the number of regions thus created. See Comments for details.

The programs for A338041, the canonical program `A338041.P112407121340105467` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338041 has offset 1).

The definition of A338041 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338041.P112407121340105467

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=6, a(4)=15`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A338041

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P112407121340105467.Spec : Prop :=
  ∀ n, P112407121340105467.a n = A338041 (n + 1)

theorem P112407121340105467.correct : P112407121340105467.Spec := by
  intro n
  simp only [A338041, Nat.add_sub_cancel]

end A338041

/-! ## A338041.P2545968880006284390

`gcd(2, n)²+a(n-2)+n` with `a(0)=1, a(1)=2`
-/

namespace A338041.P2545968880006284390
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.gcd 2 n ^ 2 + (a (n - 2) + n)

end

end A338041.P2545968880006284390

namespace A338041

/-- `gcd(2, n)²+a(n-2)+n` -/
def P2545968880006284390.Spec : Prop :=
  ∀ n, (P2545968880006284390.a n : ℤ) = A338041 (n + 1)

end A338041

/-! ## A338041.P12641299708347869485

`xor(1, or(1, n)+a(n-2)+2)` with `a(0)=1, a(1)=2`
-/

namespace A338041.P12641299708347869485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.xor 1 (Nat.lor 1 n + (a (n - 2) + 2))

end

end A338041.P12641299708347869485

namespace A338041

/-- `xor(1, or(1, n)+a(n-2)+2)` -/
def P12641299708347869485.Spec : Prop :=
  ∀ n, (P12641299708347869485.a n : ℤ) = A338041 (n + 1)

end A338041

/-! ## A338041.P15228236687192889151

`gcd(4, n%2)+a(n-2)+n` with `a(0)=1, a(1)=2`
-/

namespace A338041.P15228236687192889151
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  Nat.gcd 4 (n % 2) + (a (n - 2) + n)

end

end A338041.P15228236687192889151

namespace A338041

/-- `gcd(4, n%2)+a(n-2)+n` -/
def P15228236687192889151.Spec : Prop :=
  ∀ n, (P15228236687192889151.a n : ℤ) = A338041 (n + 1)

end A338041

/-! ## A338041.P15169742876384745517

`ceil(3*n/2)+ceil(xor(1, n)/2)²`
-/

namespace A338041.P15169742876384745517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((n : ℚ) / 2)⌉ + ⌈(Nat.xor 1 n : ℚ) / 2⌉ ^ 2

end

end A338041.P15169742876384745517

namespace A338041

/-- `ceil(3*n/2)+ceil(xor(1, n)/2)²` -/
def P15169742876384745517.Spec : Prop :=
  ∀ n, P15169742876384745517.a n = A338041 (n + 1)

end A338041

/-! ## A338041.P16294511744785474510

`a(n-2)-∑[xor(3, -(-1)^n)]` with `a(0)=1, a(1)=2`
-/

namespace A338041.P16294511744785474510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 3 (-((-1) ^ n))

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338041.P16294511744785474510

namespace A338041

/-- `a(n-2)-∑[xor(3, -(-1)^n)]` -/
def P16294511744785474510.Spec : Prop :=
  ∀ n, P16294511744785474510.a n = A338041 (n + 1)

end A338041

/-! ## A338041.P7627089374524730163

`3-xor(1, 1-or(1, n)-a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A338041.P7627089374524730163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  3 - Int.xor 1 (1 - (Nat.lor 1 n : ℤ) - a (n - 2))

end

end A338041.P7627089374524730163

namespace A338041

/-- `3-xor(1, 1-or(1, n)-a(n-2))` -/
def P7627089374524730163.Spec : Prop :=
  ∀ n, P7627089374524730163.a n = A338041 (n + 1)

end A338041

/-! ## A338041.P16784293414252863215

`xor(1, 3-and(1, n)+a(n-2)+n)` with `a(0)=1, a(1)=2`
-/

namespace A338041.P16784293414252863215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor 1 (3 - (Nat.land 1 n : ℤ) + (a (n - 2) + (n : ℤ)))

end

end A338041.P16784293414252863215

namespace A338041

/-- `xor(1, 3-and(1, n)+a(n-2)+n)` -/
def P16784293414252863215.Spec : Prop :=
  ∀ n, P16784293414252863215.a n = A338041 (n + 1)

end A338041

/-! ## A338041.P1808923274848686270

`comp[2*n+1+n]+round(xor(1, n)/2)²`
-/

namespace A338041.P1808923274848686270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1 + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + SequenceMachineLib.roundAway ((Nat.xor 1 n : ℚ) / 2) ^ 2

end

end A338041.P1808923274848686270

namespace A338041

/-- `comp[2*n+1+n]+round(xor(1, n)/2)²` -/
def P1808923274848686270.Spec : Prop :=
  ∀ n, P1808923274848686270.a n = A338041 (n + 1)

end A338041

/-! ## A338041.P1559841736037403523

`∑[n*char[2*n]+1]+n*char[2*n]`
-/

namespace A338041.P1559841736037403523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0) + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n * (if ∃ j, f3 j = n then 1 else 0)

end

end A338041.P1559841736037403523

namespace A338041

/-- `∑[n*char[2*n]+1]+n*char[2*n]` -/
def P1559841736037403523.Spec : Prop :=
  ∀ n, (P1559841736037403523.a n : ℤ) = A338041 (n + 1)

end A338041

/-! ## A338041.P12969169713177246058

`∑[(n-and(1, n))*A280193(n)+1]`
-/

namespace A338041.P12969169713177246058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - (Nat.land 1 n : ℤ)) * A280193 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338041.P12969169713177246058

namespace A338041

/-- `∑[(n-and(1, n))*A280193(n)+1]` -/
def P12969169713177246058.Spec : Prop :=
  ∀ n, P12969169713177246058.a n = A338041 (n + 1)

end A338041

/-! ## A338041.P488342848711259102

`∑[A141310(n)-n*A062157(n)]`
-/

namespace A338041.P488342848711259102
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 n - (n : ℤ) * A062157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338041.P488342848711259102

namespace A338041

/-- `∑[A141310(n)-n*A062157(n)]` -/
def P488342848711259102.Spec : Prop :=
  ∀ n, P488342848711259102.a n = A338041 (n + 1)

end A338041

/-! ## A338041.P11780321022063902910

`A014681(2*A008795(n)+n)`
-/

namespace A338041.P11780321022063902910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (2 * A008795 n + (n : ℤ)).toNat

end

end A338041.P11780321022063902910

namespace A338041

/-- `A014681(2*A008795(n)+n)` -/
def P11780321022063902910.Spec : Prop :=
  ∀ n, P11780321022063902910.a n = A338041 (n + 1)

end A338041

/-! ## A338041.P18355381829612359239

`A103889(2*A008795(n)+n)`
-/

namespace A338041.P18355381829612359239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (2 * A008795 n + (n : ℤ)).toNat

end

end A338041.P18355381829612359239

namespace A338041

/-- `A103889(2*A008795(n)+n)` -/
def P18355381829612359239.Spec : Prop :=
  ∀ n, P18355381829612359239.a n = A338041 (n + 1)

end A338041

/-! ## A338041.P9057260491162041906

`A014681(A008795(n)+A008795(n)+n)`
-/

namespace A338041.P9057260491162041906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A008795 n + (A008795 n + (n : ℤ))).toNat

end

end A338041.P9057260491162041906

namespace A338041

/-- `A014681(A008795(n)+A008795(n)+n)` -/
def P9057260491162041906.Spec : Prop :=
  ∀ n, P9057260491162041906.a n = A338041 (n + 1)

end A338041

/-! ## A338041.P4218417215706725553

`A103889(A008795(n)+A008795(n)+n)`
-/

namespace A338041.P4218417215706725553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103889 (A008795 n + (A008795 n + (n : ℤ))).toNat

end

end A338041.P4218417215706725553

namespace A338041

/-- `A103889(A008795(n)+A008795(n)+n)` -/
def P4218417215706725553.Spec : Prop :=
  ∀ n, P4218417215706725553.a n = A338041 (n + 1)

end A338041

/-! ## A338041.P18301960307605148394

`A123684(2*(A135276(n)+A123684(n+1)))`
-/

namespace A338041.P18301960307605148394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123684 (2 * (A135276 n + A123684 (n + 1))).toNat

end

end A338041.P18301960307605148394

namespace A338041

/-- `A123684(2*(A135276(n)+A123684(n+1)))` -/
def P18301960307605148394.Spec : Prop :=
  ∀ n, P18301960307605148394.a n = A338041 (n + 1)

end A338041

/-!
# A338042: Draw n rays from each of two distinct points in the plane; a(n) is the number of vertices thus created. See Comments for details.

The programs for A338042, the canonical program `A338042.P15347532852154930511` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338042 has offset 1).

The definition of A338042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338042.P15347532852154930511

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=2, a(1)=2, a(2)=4, a(3)=2, a(4)=8`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A338042

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P15347532852154930511.Spec : Prop :=
  ∀ n, P15347532852154930511.a n = A338042 (n + 1)

theorem P15347532852154930511.correct : P15347532852154930511.Spec := by
  intro n
  simp only [A338042, Nat.add_sub_cancel]

end A338042

/-! ## A338042.P4067990697874106320

`∑[(-1)^n*lcm(2, 1-n)]`
-/

namespace A338042.P4067990697874106320
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * (Int.lcm 2 (1 - (n : ℤ)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338042.P4067990697874106320

namespace A338042

/-- `∑[(-1)^n*lcm(2, 1-n)]` -/
def P4067990697874106320.Spec : Prop :=
  ∀ n, P4067990697874106320.a n = A338042 (n + 1)

end A338042

/-! ## A338042.P328073624600499026

`2*(C(ceil(xor(1, n)/2), 2)+1)`
-/

namespace A338042.P328073624600499026
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.choose ⌈(Nat.xor 1 n : ℚ) / 2⌉.toNat 2 + 1)

end

end A338042.P328073624600499026

namespace A338042

/-- `2*(C(ceil(xor(1, n)/2), 2)+1)` -/
def P328073624600499026.Spec : Prop :=
  ∀ n, (P328073624600499026.a n : ℤ) = A338042 (n + 1)

end A338042

/-! ## A338042.P2635991588364491604

`∑[(gcd(2, n)²-2)*abs(1-n)]`
-/

namespace A338042.P2635991588364491604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 2 n ^ 2 : ℤ) - 2) * |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338042.P2635991588364491604

namespace A338042

/-- `∑[(gcd(2, n)²-2)*abs(1-n)]` -/
def P2635991588364491604.Spec : Prop :=
  ∀ n, P2635991588364491604.a n = A338042 (n + 1)

end A338042

/-! ## A338042.P590500550034620426

`a(n-2)-3*n%2+n` with `a(0)=2, a(1)=2`
-/

namespace A338042.P590500550034620426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 2) - ((3 * (n % 2) : ℕ) : ℤ) + (n : ℤ)

end

end A338042.P590500550034620426

namespace A338042

/-- `a(n-2)-3*n%2+n` -/
def P590500550034620426.Spec : Prop :=
  ∀ n, P590500550034620426.a n = A338042 (n + 1)

end A338042

/-! ## A338042.P5551447471321132419

`a(n-2)-3*and(1, n)+n` with `a(0)=2, a(1)=2`
-/

namespace A338042.P5551447471321132419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 2) - (3 * Nat.land 1 n : ℤ) + (n : ℤ)

end

end A338042.P5551447471321132419

namespace A338042

/-- `a(n-2)-3*and(1, n)+n` -/
def P5551447471321132419.Spec : Prop :=
  ∀ n, P5551447471321132419.a n = A338042 (n + 1)

end A338042

/-! ## A338042.P7162065351693277971

`a(n-2)-((3*n)%6-n)` with `a(0)=2, a(1)=2`
-/

namespace A338042.P7162065351693277971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 2) - (((3 * n % 6 : ℕ) : ℤ) - (n : ℤ))

end

end A338042.P7162065351693277971

namespace A338042

/-- `a(n-2)-((3*n)%6-n)` -/
def P7162065351693277971.Spec : Prop :=
  ∀ n, P7162065351693277971.a n = A338042 (n + 1)

end A338042

/-! ## A338042.P17299358771632577087

`a(n-2)-(3*and(1, n)-n)` with `a(0)=2, a(1)=2`
-/

namespace A338042.P17299358771632577087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 2) - ((3 * Nat.land 1 n : ℤ) - (n : ℤ))

end

end A338042.P17299358771632577087

namespace A338042

/-- `a(n-2)-(3*and(1, n)-n)` -/
def P17299358771632577087.Spec : Prop :=
  ∀ n, P17299358771632577087.a n = A338042 (n + 1)

end A338042

/-! ## A338042.P16582132346422577743

`∑[(n-1)*Δ[n-3-a(n-1)]]` with `a(0)=2, a(1)=0`
-/

namespace A338042.P16582132346422577743
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, 0] fun n f2 =>
  (n : ℤ) - 3 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338042.P16582132346422577743

namespace A338042

/-- `∑[(n-1)*Δ[n-3-a(n-1)]]` -/
def P16582132346422577743.Spec : Prop :=
  ∀ n, P16582132346422577743.a n = A338042 (n + 1)

end A338042

/-! ## A338042.P756551209082439265

`a(n-2)-∑{d}[2-a(n-1), #]+n` with `a(0)=2, a(1)=2`
-/

namespace A338042.P756551209082439265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  a (n - 2) - ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) + (n : ℤ)

end

end A338042.P756551209082439265

namespace A338042

/-- `a(n-2)-∑{d}[2-a(n-1), #]+n` -/
def P756551209082439265.Spec : Prop :=
  ∀ n, P756551209082439265.a n = A338042 (n + 1)

end A338042

/-! ## A338042.P10141218540248700713

`n-(∑{d}[2-a(n-1), #]-a(n-2))` with `a(0)=2, a(1)=2`
-/

namespace A338042.P10141218540248700713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2] fun n a =>
  (n : ℤ) - (((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - a (n - 2))

end

end A338042.P10141218540248700713

namespace A338042

/-- `n-(∑{d}[2-a(n-1), #]-a(n-2))` -/
def P10141218540248700713.Spec : Prop :=
  ∀ n, P10141218540248700713.a n = A338042 (n + 1)

end A338042

/-! ## A338042.P11250274662620861017

`2-a(n-4)+a(n-2)+a(n-2)` with `a(0)=2, a(1)=2, a(2)=4, a(3)=2`
-/

namespace A338042.P11250274662620861017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 4, 2] fun n a =>
  2 - a (n - 4) + (a (n - 2) + a (n - 2))

end

end A338042.P11250274662620861017

namespace A338042

/-- `2-a(n-4)+a(n-2)+a(n-2)` -/
def P11250274662620861017.Spec : Prop :=
  ∀ n, P11250274662620861017.a n = A338042 (n + 1)

end A338042

/-! ## A338042.P14711808675219359185

`2-(a(n-4)-a(n-2)-a(n-2))` with `a(0)=2, a(1)=2, a(2)=4, a(3)=2`
-/

namespace A338042.P14711808675219359185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 4, 2] fun n a =>
  2 - (a (n - 4) - a (n - 2) - a (n - 2))

end

end A338042.P14711808675219359185

namespace A338042

/-- `2-(a(n-4)-a(n-2)-a(n-2))` -/
def P14711808675219359185.Spec : Prop :=
  ∀ n, P14711808675219359185.a n = A338042 (n + 1)

end A338042

/-! ## A338042.P1939338681171262244

`∑[n]+2-A213038(n)`
-/

namespace A338042.P1939338681171262244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (2 - A213038 n)

end

end A338042.P1939338681171262244

namespace A338042

/-- `∑[n]+2-A213038(n)` -/
def P1939338681171262244.Spec : Prop :=
  ∀ n, P1939338681171262244.a n = A338042 (n + 1)

end A338042

/-! ## A338042.P10622146504465398538

`2*(C(A028242(n), 2)+1)`
-/

namespace A338042.P10622146504465398538
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.choose (A028242 n).toNat 2 + 1)

end

end A338042.P10622146504465398538

namespace A338042

/-- `2*(C(A028242(n), 2)+1)` -/
def P10622146504465398538.Spec : Prop :=
  ∀ n, (P10622146504465398538.a n : ℤ) = A338042 (n + 1)

end A338042

/-! ## A338042.P2192445236740887297

`abs(A174474(n)-C(n, 2))+2`
-/

namespace A338042.P2192445236740887297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A174474 n - (Nat.choose n 2 : ℤ)| + 2

end

end A338042.P2192445236740887297

namespace A338042

/-- `abs(A174474(n)-C(n, 2))+2` -/
def P2192445236740887297.Spec : Prop :=
  ∀ n, P2192445236740887297.a n = A338042 (n + 1)

end A338042

/-! ## A338042.P307565550416639433

`∑[(n-1)*A280193(n)]+3`
-/

namespace A338042.P307565550416639433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A280193 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A338042.P307565550416639433

namespace A338042

/-- `∑[(n-1)*A280193(n)]+3` -/
def P307565550416639433.Spec : Prop :=
  ∀ n, P307565550416639433.a n = A338042 (n + 1)

end A338042

/-! ## A338042.P5120891155789439171

`A002061(A028242(n))+1`
-/

namespace A338042.P5120891155789439171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 (A028242 n).toNat + 1

end

end A338042.P5120891155789439171

namespace A338042

/-- `A002061(A028242(n))+1` -/
def P5120891155789439171.Spec : Prop :=
  ∀ n, P5120891155789439171.a n = A338042 (n + 1)

end A338042

/-! ## A338042.P274136534417389646

`2*A152947(A028242(n)+1)`
-/

namespace A338042.P274136534417389646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A152947 (A028242 n + 1).toNat

end

end A338042.P274136534417389646

namespace A338042

/-- `2*A152947(A028242(n)+1)` -/
def P274136534417389646.Spec : Prop :=
  ∀ n, P274136534417389646.a n = A338042 (n + 1)

end A338042

/-! ## A338042.P15143156760003716509

`A082742(n+1)-A109043(n)`
-/

namespace A338042.P15143156760003716509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082742 (n + 1) - A109043 n

end

end A338042.P15143156760003716509

namespace A338042

/-- `A082742(n+1)-A109043(n)` -/
def P15143156760003716509.Spec : Prop :=
  ∀ n, P15143156760003716509.a n = A338042 (n + 1)

end A338042

/-!
# A338043: Draw n rays from each of two distinct points in the plane; a(n) is the number of edges thus created. See Comments for details.

The programs for A338043, the canonical program `A338043.P15237970780807289034` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338043 has offset 1).

The definition of A338043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A338043.P15237970780807289034

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=2, a(1)=3, a(2)=10, a(3)=7, a(4)=22`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A338043

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P15237970780807289034.Spec : Prop :=
  ∀ n, P15237970780807289034.a n = A338043 (n + 1)

theorem P15237970780807289034.correct : P15237970780807289034.Spec := by
  intro n
  simp only [A338043, Nat.add_sub_cancel]

end A338043

/-! ## A338043.P17483536837043582509

`or(2, a(n-2)+2*xor(1, n))` with `a(0)=2, a(1)=3`
-/

namespace A338043.P17483536837043582509
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  Nat.lor 2 (a (n - 2) + 2 * Nat.xor 1 n)

end

end A338043.P17483536837043582509

namespace A338043

/-- `or(2, a(n-2)+2*xor(1, n))` -/
def P17483536837043582509.Spec : Prop :=
  ∀ n, (P17483536837043582509.a n : ℤ) = A338043 (n + 1)

end A338043

/-! ## A338043.P3208982089498710535

`xor(1, a(n-2))+xor(3, 2*n)` with `a(0)=2, a(1)=3`
-/

namespace A338043.P3208982089498710535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  Nat.xor 1 (a (n - 2)) + Nat.xor 3 (2 * n)

end

end A338043.P3208982089498710535

namespace A338043

/-- `xor(1, a(n-2))+xor(3, 2*n)` -/
def P3208982089498710535.Spec : Prop :=
  ∀ n, (P3208982089498710535.a n : ℤ) = A338043 (n + 1)

end A338043

/-! ## A338043.P1965373684142714838

`∑[2*or(1, n)]-xor(3, a(n-1))` with `a(0)=2`
-/

namespace A338043.P1965373684142714838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - Int.xor 3 (a (n - 1))

end

end A338043.P1965373684142714838

namespace A338043

/-- `∑[2*or(1, n)]-xor(3, a(n-1))` -/
def P1965373684142714838.Spec : Prop :=
  ∀ n, P1965373684142714838.a n = A338043 (n + 1)

end A338043

/-! ## A338043.P14015141764856298508

`2*xor(1, n)-xor(-2, a(n-2))` with `a(0)=2, a(1)=3`
-/

namespace A338043.P14015141764856298508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  (2 * Nat.xor 1 n : ℤ) - Int.xor (-2) (a (n - 2))

end

end A338043.P14015141764856298508

namespace A338043

/-- `2*xor(1, n)-xor(-2, a(n-2))` -/
def P14015141764856298508.Spec : Prop :=
  ∀ n, P14015141764856298508.a n = A338043 (n + 1)

end A338043

/-! ## A338043.P13313892505980934691

`or(3, n*(n+2))+2-a(n-1)` with `a(0)=2`
-/

namespace A338043.P13313892505980934691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Nat.lor 3 (n * (n + 2)) : ℤ) + (2 - a (n - 1))

end

end A338043.P13313892505980934691

namespace A338043

/-- `or(3, n*(n+2))+2-a(n-1)` -/
def P13313892505980934691.Spec : Prop :=
  ∀ n, P13313892505980934691.a n = A338043 (n + 1)

end A338043

/-! ## A338043.P3208792336215644488

`gcd(2, n)²+(n+1)²-a(n-1)` with `a(0)=2`
-/

namespace A338043.P3208792336215644488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (Nat.gcd 2 n ^ 2 : ℤ) + (((n + 1) ^ 2 : ℤ) - a (n - 1))

end

end A338043.P3208792336215644488

namespace A338043

/-- `gcd(2, n)²+(n+1)²-a(n-1)` -/
def P3208792336215644488.Spec : Prop :=
  ∀ n, P3208792336215644488.a n = A338043 (n + 1)

end A338043

/-! ## A338043.P3228806748570437597

`2*a(n-2)-a(n-4)+4` with `a(0)=2, a(1)=3, a(2)=10, a(3)=7`
-/

namespace A338043.P3228806748570437597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3, 10, 7] fun n a =>
  2 * a (n - 2) - a (n - 4) + 4

end

end A338043.P3228806748570437597

namespace A338043

/-- `2*a(n-2)-a(n-4)+4` -/
def P3228806748570437597.Spec : Prop :=
  ∀ n, P3228806748570437597.a n = A338043 (n + 1)

end A338043

/-! ## A338043.P1325626163191055253

`2*A363268(n+1)+n`
-/

namespace A338043.P1325626163191055253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A363268 (n + 1) + (n : ℤ)

end

end A338043.P1325626163191055253

namespace A338043

/-- `2*A363268(n+1)+n` -/
def P1325626163191055253.Spec : Prop :=
  ∀ n, P1325626163191055253.a n = A338043 (n + 1)

end A338043

/-! ## A338043.P9956965506731567887

`A084964(n+1)+A084964(n)*A109613(n)`
-/

namespace A338043.P9956965506731567887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 (n + 1) + A084964 n * A109613 n

end

end A338043.P9956965506731567887

namespace A338043

/-- `A084964(n+1)+A084964(n)*A109613(n)` -/
def P9956965506731567887.Spec : Prop :=
  ∀ n, P9956965506731567887.a n = A338043 (n + 1)

end A338043

/-! ## A338043.P17098370324850455335

`A266725(n)+Δ[A266723(n)]`
-/

namespace A338043.P17098370324850455335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266723 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266725 n + (f1 (n + 1) - f1 n)

end

end A338043.P17098370324850455335

namespace A338043

/-- `A266725(n)+Δ[A266723(n)]` -/
def P17098370324850455335.Spec : Prop :=
  ∀ n, P17098370324850455335.a n = A338043 (n + 1)

end A338043

/-! ## A338043.P7109425836820700724

`A266725(n)+A266722(n+1)`
-/

namespace A338043.P7109425836820700724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266725 n + A266722 (n + 1)

end

end A338043.P7109425836820700724

namespace A338043

/-- `A266725(n)+A266722(n+1)` -/
def P7109425836820700724.Spec : Prop :=
  ∀ n, P7109425836820700724.a n = A338043 (n + 1)

end A338043

/-! ## A338043.P1547534466436952906

`Δ[A266723(n)]+∑[A266724(n)]`
-/

namespace A338043.P1547534466436952906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266723 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A338043.P1547534466436952906

namespace A338043

/-- `Δ[A266723(n)]+∑[A266724(n)]` -/
def P1547534466436952906.Spec : Prop :=
  ∀ n, P1547534466436952906.a n = A338043 (n + 1)

end A338043

/-! ## A338043.P8241287847489374595

`A092530(n+1)+A137501(n)-A026741(n)`
-/

namespace A338043.P8241287847489374595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092530 (n + 1) + (A137501 n - A026741 n)

end

end A338043.P8241287847489374595

namespace A338043

/-- `A092530(n+1)+A137501(n)-A026741(n)` -/
def P8241287847489374595.Spec : Prop :=
  ∀ n, P8241287847489374595.a n = A338043 (n + 1)

end A338043

/-! ## A338043.P13108806214904275589

`A266723(n+1)+A266725(n)-A266723(n)`
-/

namespace A338043.P13108806214904275589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266723 (n + 1) + (A266725 n - A266723 n)

end

end A338043.P13108806214904275589

namespace A338043

/-- `A266723(n+1)+A266725(n)-A266723(n)` -/
def P13108806214904275589.Spec : Prop :=
  ∀ n, P13108806214904275589.a n = A338043 (n + 1)

end A338043

/-! ## A338043.P6783171618975733715

`A053438(A110657(2*n)+A110657(2*n+1)²)`
-/

namespace A338043.P6783171618975733715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053438 (A110657 (2 * n) + A110657 (2 * n + 1) ^ 2).toNat

end

end A338043.P6783171618975733715

namespace A338043

/-- `A053438(A110657(2*n)+A110657(2*n+1)²)` -/
def P6783171618975733715.Spec : Prop :=
  ∀ n, P6783171618975733715.a n = A338043 (n + 1)

end A338043

/-!
# A338045: G.f.: Sum_{k>=0} x^(2^k) / (1 - x^(2^k))^3.

The programs for A338045, the canonical program `A338045.P5054709915737796512` is in `Seq.B000.C035`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338045 has offset 1).

The definition of A338045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338045.P5054709915737796512

`Δ[a(floor(n/2))+C(n+2, 3)]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C035`.
-/

namespace A338045

/-- `Δ[a(floor(n/2))+C(n+2, 3)]` -/
def P5054709915737796512.Spec : Prop :=
  ∀ n, P5054709915737796512.a n = A338045 (n + 1)

theorem P5054709915737796512.correct : P5054709915737796512.Spec := by
  intro n
  simp only [A338045, Nat.add_sub_cancel]

end A338045

/-! ## A338045.P14993742754331695722

`∑{d}[2^val(n+1, 2), A000217((n+1)/#)]`
-/

namespace A338045.P14993742754331695722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338045.P14993742754331695722

namespace A338045

/-- `∑{d}[2^val(n+1, 2), A000217((n+1)/#)]` -/
def P14993742754331695722.Spec : Prop :=
  ∀ n, P14993742754331695722.a n = A338045 (n + 1)

end A338045

/-! ## A338045.P12356621179836040650

`∑{d}[A006519(n+1), A000217((n+1)/#)]`
-/

namespace A338045.P12356621179836040650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338045.P12356621179836040650

namespace A338045

/-- `∑{d}[A006519(n+1), A000217((n+1)/#)]` -/
def P12356621179836040650.Spec : Prop :=
  ∀ n, P12356621179836040650.a n = A338045 (n + 1)

end A338045

/-! ## A338045.P8710584642555816489

`∑{d}[A055975(n+1), A000217((n+1)/#)]`
-/

namespace A338045.P8710584642555816489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000217 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338045.P8710584642555816489

namespace A338045

/-- `∑{d}[A055975(n+1), A000217((n+1)/#)]` -/
def P8710584642555816489.Spec : Prop :=
  ∀ n, P8710584642555816489.a n = A338045 (n + 1)

end A338045

/-! ## A338045.P5825165119351070984

`∑{d}[n+1, A001511(#)*A007438((n+1)/#)]`
-/

namespace A338045.P5825165119351070984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A007438 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338045.P5825165119351070984

namespace A338045

/-- `∑{d}[n+1, A001511(#)*A007438((n+1)/#)]` -/
def P5825165119351070984.Spec : Prop :=
  ∀ n, P5825165119351070984.a n = A338045 (n + 1)

end A338045

/-! ## A338045.P14618481505342114356

`∑{d}[n+1, A007437(#)*A087003((n+1)/#)]`
-/

namespace A338045.P14618481505342114356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007437 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338045.P14618481505342114356

namespace A338045

/-- `∑{d}[n+1, A007437(#)*A087003((n+1)/#)]` -/
def P14618481505342114356.Spec : Prop :=
  ∀ n, P14618481505342114356.a n = A338045 (n + 1)

end A338045

/-! ## A338045.P4733099966931131489

`∑{d}[n+1, A057661(#)*A062570((n+1)/#)]`
-/

namespace A338045.P4733099966931131489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A057661 d * A062570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338045.P4733099966931131489

namespace A338045

/-- `∑{d}[n+1, A057661(#)*A062570((n+1)/#)]` -/
def P4733099966931131489.Spec : Prop :=
  ∀ n, P4733099966931131489.a n = A338045 (n + 1)

end A338045

/-! ## A338045.P5261860512516831215

`∑{d}[n+1, A000265(#)*A390804((n+1)/#)]`
-/

namespace A338045.P5261860512516831215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000265 d * A390804 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338045.P5261860512516831215

namespace A338045

/-- `∑{d}[n+1, A000265(#)*A390804((n+1)/#)]` -/
def P5261860512516831215.Spec : Prop :=
  ∀ n, P5261860512516831215.a n = A338045 (n + 1)

end A338045

/-! ## A338045.P13355816466279291248

`∑{d}[n+1, A129628(#)*A326828((n+1)/#)]`
-/

namespace A338045.P13355816466279291248
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A129628 d * A326828 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338045.P13355816466279291248

namespace A338045

/-- `∑{d}[n+1, A129628(#)*A326828((n+1)/#)]` -/
def P13355816466279291248.Spec : Prop :=
  ∀ n, P13355816466279291248.a n = A338045 (n + 1)

end A338045

/-! ## A338045.P5457906049879492566

`∑{d}[n+1, A326826(#)*A327276((n+1)/#)]`
-/

namespace A338045.P5457906049879492566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A326826 d * A327276 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338045.P5457906049879492566

namespace A338045

/-- `∑{d}[n+1, A326826(#)*A327276((n+1)/#)]` -/
def P5457906049879492566.Spec : Prop :=
  ∀ n, P5457906049879492566.a n = A338045 (n + 1)

end A338045

/-! ## A338045.P14859192843485762854

`∑{d}[n+1, A309731(#)*A349341((n+1)/#)]`
-/

namespace A338045.P14859192843485762854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309731 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338045.P14859192843485762854

namespace A338045

/-- `∑{d}[n+1, A309731(#)*A349341((n+1)/#)]` -/
def P14859192843485762854.Spec : Prop :=
  ∀ n, P14859192843485762854.a n = A338045 (n + 1)

end A338045

/-! ## A338045.P10620490566494862084

`∑{d}[n+1, A195094(#)]`
-/

namespace A338045.P10620490566494862084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A195094 d

end

end A338045.P10620490566494862084

namespace A338045

/-- `∑{d}[n+1, A195094(#)]` -/
def P10620490566494862084.Spec : Prop :=
  ∀ n, P10620490566494862084.a n = A338045 (n + 1)

end A338045

/-!
# A338046: G.f.: Sum_{k>=0} x^(2^k) / (1 - x^(2^k))^4.

The programs for A338046, the canonical program `A338046.P4955059318956623703` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338046 has offset 1).

The definition of A338046 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338046.P4955059318956623703

`∑{d}[A006519(n+1), A000292((n+1)/#)]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A338046

/-- `∑{d}[A006519(n+1), A000292((n+1)/#)]` -/
def P4955059318956623703.Spec : Prop :=
  ∀ n, P4955059318956623703.a n = A338046 (n + 1)

theorem P4955059318956623703.correct : P4955059318956623703.Spec := by
  intro n
  simp only [A338046, Nat.add_sub_cancel]

end A338046

/-! ## A338046.P199957842707287228

`∑{d}[A055975(n+1), A000292((n+1)/#)]`
-/

namespace A338046.P199957842707287228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000292 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338046.P199957842707287228

namespace A338046

/-- `∑{d}[A055975(n+1), A000292((n+1)/#)]` -/
def P199957842707287228.Spec : Prop :=
  ∀ n, P199957842707287228.a n = A338046 (n + 1)

end A338046

/-! ## A338046.P6684807138129740022

`∑{d}[A118827(n+1), A000292((n+1)/#)]`
-/

namespace A338046.P6684807138129740022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118827 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000292 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338046.P6684807138129740022

namespace A338046

/-- `∑{d}[A118827(n+1), A000292((n+1)/#)]` -/
def P6684807138129740022.Spec : Prop :=
  ∀ n, P6684807138129740022.a n = A338046 (n + 1)

end A338046

/-! ## A338046.P7948208525574458700

`∑{d}[n+1, A001511(#)*A117108((n+1)/#)]`
-/

namespace A338046.P7948208525574458700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A117108 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338046.P7948208525574458700

namespace A338046

/-- `∑{d}[n+1, A001511(#)*A117108((n+1)/#)]` -/
def P7948208525574458700.Spec : Prop :=
  ∀ n, P7948208525574458700.a n = A338046 (n + 1)

end A338046

/-! ## A338046.P3302942614789404375

`∑{d}[n+1, A343544(#)*A349341((n+1)/#)]`
-/

namespace A338046.P3302942614789404375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A343544 d * A349341 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338046.P3302942614789404375

namespace A338046

/-- `∑{d}[n+1, A343544(#)*A349341((n+1)/#)]` -/
def P3302942614789404375.Spec : Prop :=
  ∀ n, P3302942614789404375.a n = A338046 (n + 1)

end A338046

/-! ## A338046.P5857063008627484181

`∑{d}[n+1, A059358(#)*A087003((n+1)/#)]`
-/

namespace A338046.P5857063008627484181
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A059358 d * A087003 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A338046.P5857063008627484181

namespace A338046

/-- `∑{d}[n+1, A059358(#)*A087003((n+1)/#)]` -/
def P5857063008627484181.Spec : Prop :=
  ∀ n, P5857063008627484181.a n = A338046 (n + 1)

end A338046

/-!
# A338050: Fixed points in A336957.

The programs for A338050, there is no canonical definition to state claims against.
-/

/-! ## A338050.P15393070546664401809

`eq[0, A338051(n+1)]+1`
-/

namespace A338050.P15393070546664401809
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338051 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A338050.P15393070546664401809

/-! ## A338050.P15143011186775824722

`eq[n+1, A336957(n+1)]+1`
-/

namespace A338050.P15143011186775824722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A338050.P15143011186775824722

/-! ## A338050.P17756785484082313009

`eq[n, A336957(A028310(n))]`
-/

namespace A338050.P17756785484082313009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338050.P17756785484082313009

/-! ## A338050.P18383434820132380687

`eq[n, A337066(A329814(n+1))]`
-/

namespace A338050.P18383434820132380687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337066 (A329814 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338050.P18383434820132380687

/-! ## A338050.P11540392852752203087

`eq[A000007(n), A338051(A028310(n))]`
-/

namespace A338050.P11540392852752203087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338051 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338050.P11540392852752203087

/-!
# A338051: a(n) = A336957(n) - n.

The programs for A338051, there is no canonical definition to state claims against.
-/

/-! ## A338051.P5423856609387357100

`A336957(n+1)-(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A338051.P5423856609387357100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (n + 1) - (n + 1 : ℤ)

end

end A338051.P5423856609387357100

/-! ## A338051.P11432139211758679416

`A336957(ϕ²-(ϕ-n))-1-n`
-/

namespace A338051.P11432139211758679416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat - 1 - (n : ℤ)

end

end A338051.P11432139211758679416

/-! ## A338051.P10046959802984710051

`A001478(n+1)+A336957(n+1)`
-/

namespace A338051.P10046959802984710051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001478 (n + 1) + A336957 (n + 1)

end

end A338051.P10046959802984710051

/-! ## A338051.P3801556507756733110

`A023443(A336957(n+1))-n`
-/

namespace A338051.P3801556507756733110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A336957 (n + 1)).toNat - (n : ℤ)

end

end A338051.P3801556507756733110

/-! ## A338051.P13080349599976240901

`(A023443(A336957(n+1))+A001489(n))*A057427(n)`
-/

namespace A338051.P13080349599976240901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A023443 (A336957 (n + 1)).toNat + A001489 n) * A057427 n

end

end A338051.P13080349599976240901

/-!
# A338052: a(n) = A337645(n-1) - n.

The programs for A338052, there is no canonical definition to state claims against.
-/

/-! ## A338052.P14216699064376548937

`A337645(n+1)-(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A338052.P14216699064376548937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337645 (n + 1) - (n + 2 : ℤ)

end

end A338052.P14216699064376548937

/-! ## A338052.P89756326514646712

`2*A338058(n+1)-(n+2)`
-/

namespace A338052.P89756326514646712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A338058 (n + 1) - (n + 2 : ℤ)

end

end A338052.P89756326514646712

/-! ## A338052.P172025310176488557

`A004273(A338058(n+1))-(n+1)`
-/

namespace A338052.P172025310176488557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A338058 (n + 1)).toNat - (n + 1 : ℤ)

end

end A338052.P172025310176488557

/-! ## A338052.P5406998283109677831

`A004277(A338058(n+1))+A001489(n)-2`
-/

namespace A338052.P5406998283109677831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A338058 (n + 1)).toNat + (A001489 n - 2)

end

end A338052.P5406998283109677831

/-! ## A338052.P17685780562416076626

`A004277(A338058(n+1))+A001489(n+2)`
-/

namespace A338052.P17685780562416076626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A338058 (n + 1)).toNat + A001489 (n + 2)

end

end A338052.P17685780562416076626

/-!
# A338053: "Early" terms in A336957, in order of appearance.

The programs for A338053, there is no canonical definition to state claims against.
-/

/-! ## A338053.P15864317311611919728

`A336957(lt[n+1, A336957(n+1)]+1)`
-/

namespace A338053.P15864317311611919728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A338053.P15864317311611919728

/-! ## A338053.P14015959754900684473

`A336957(eq[0, floor((n+1)/A336957(n+1))]+1)`
-/

namespace A338053.P14015959754900684473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A336957 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A338053.P14015959754900684473

/-! ## A338053.P2430349721848590976

`A336957(∪[A338066(n+1), A042948(n+2)])`
-/

namespace A338053.P2430349721848590976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338066 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A338053.P2430349721848590976

/-! ## A338053.P6089128578409228739

`A336957(A052382(n+3)%A128356(2*(n+1)))`
-/

namespace A338053.P6089128578409228739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (Int.tmod (A052382 (n + 3)) (A128356 (2 * (n + 1)))).toNat

end

end A338053.P6089128578409228739

/-! ## A338053.P2982928665963399959

`A336957(comp[A010894(n)])`
-/

namespace A338053.P2982928665963399959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010894 (n + 21)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A338053.P2982928665963399959

/-!
# A338054: "Early" terms in A336957, arranged in increasing order.

The programs for A338054, there is no canonical definition to state claims against.
-/

/-! ## A338054.P9248350118468670199

`lt[A136400(A274293(n+3)), A063698(n)]`
-/

namespace A338054.P9248350118468670199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136400 (A274293 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063698 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338054.P9248350118468670199

/-! ## A338054.P1384044419268315957

`A024619(lt[A236961(2*(n+1)), A032563(3*n+1)])`
-/

namespace A338054.P1384044419268315957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236961 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032563 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338054.P1384044419268315957

/-! ## A338054.P16122677903418832141

`A325281(A057427(n)+A044917(n+1))`
-/

namespace A338054.P16122677903418832141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325281 (A057427 n + A044917 (n + 1)).toNat

end

end A338054.P16122677903418832141

/-! ## A338054.P14934751416787334870

`A325281(A187829(n+1)+A057427(n))`
-/

namespace A338054.P14934751416787334870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325281 (A187829 (n + 1) + A057427 n).toNat

end

end A338054.P14934751416787334870

/-! ## A338054.P2946941097317661055

`A325281(A187829(n+1)+char[A187829(n+1)])`
-/

namespace A338054.P2946941097317661055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325281 (A187829 (n + 1) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)).toNat

end

end A338054.P2946941097317661055

/-!
# A338055: Lexicographically earliest infinite sequence {a(n)} of distinct positive numbers such that, for n>2, a(n) has a common factor with a(n-1) involving only primes <= 11 but no such common factor with a(n-2) (primes > 11 play no role in this definition).

The programs for A338055, there is no canonical definition to state claims against.
-/

/-! ## A338055.P6454731218812181002

`or(A051175(A099594(n)), A336957(n+1))`
-/

namespace A338055.P6454731218812181002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051175 (A099594 n).toNat) (A336957 (n + 1))

end

end A338055.P6454731218812181002

/-! ## A338055.P4152066947686399325

`or(A185246(A004086(n)), A336957(n+1))`
-/

namespace A338055.P4152066947686399325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185246 (A004086 n).toNat) (A336957 (n + 1))

end

end A338055.P4152066947686399325

/-! ## A338055.P12342947299985329704

`A336957(n+1)+A002487(A090318(n+1))`
-/

namespace A338055.P12342947299985329704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (n + 1) + A002487 (A090318 (n + 1)).toNat

end

end A338055.P12342947299985329704

/-! ## A338055.P7889369152955904617

`A336957(A005555(n)%A270039(2*(n+2)))`
-/

namespace A338055.P7889369152955904617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (Int.tmod (A005555 n) (A270039 (2 * (n + 2)))).toNat

end

end A338055.P7889369152955904617

/-! ## A338055.P7268670910518026

`A002487(A090318(n+1))+A338051(n+1)+1+n`
-/

namespace A338055.P7268670910518026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A090318 (n + 1)).toNat + (A338051 (n + 1) + 1 + (n : ℤ))

end

end A338055.P7268670910518026

/-!
# A338058: A337645(n)/2.

The programs for A338058, there is no canonical definition to state claims against.
-/

/-! ## A338058.P10445073527982209100

`A337645(n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A338058.P10445073527982209100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A337645 (n + 1) : ℚ) / 2

end

end A338058.P10445073527982209100

/-! ## A338058.P356796608297560233

`(A338052(n+2)+n)/2+1`
-/

namespace A338058.P356796608297560233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A338052 (n + 2) + (n : ℤ) : ℚ) / 2 + 1

end

end A338058.P356796608297560233

/-! ## A338058.P9513827419527037733

`A001281(A337645(n+1))`
-/

namespace A338058.P9513827419527037733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A337645 (n + 1)).toNat

end

end A338058.P9513827419527037733

/-! ## A338058.P9911011776866090351

`A004526(A337645(n+1)+1)`
-/

namespace A338058.P9911011776866090351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A337645 (n + 1) + 1).toNat

end

end A338058.P9911011776866090351

/-! ## A338058.P14183658909530490034

`A008619(A337645(n+1)-1)`
-/

namespace A338058.P14183658909530490034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A337645 (n + 1) - 1).toNat

end

end A338058.P14183658909530490034

/-! ## A338058.P774168177133040501

`A000217(A337645(n+1)-1)%A337645(n+1)`
-/

namespace A338058.P774168177133040501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 (A337645 (n + 1) - 1).toNat) (A337645 (n + 1))

end

end A338058.P774168177133040501

/-!
# A338059: The Enots Wolley sequence A336957 with the missing prime powers interpolated.

The programs for A338059, there is no canonical definition to state claims against.
-/

/-! ## A338059.P11941538630070038112

`A291577(lt[A000045(n), A291530(n+1)])`
-/

namespace A338059.P11941538630070038112
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291530 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291577 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A338059.P11941538630070038112

/-!
# A338061: Trajectory of 3 under repeated application of the map x -> A338059(x).

The programs for A338061, there is no canonical definition to state claims against.
-/

/-! ## A338061.P10213128765090825796

`A338059(a(n-1))` with `a(0)=3`
-/

namespace A338061.P10213128765090825796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A338059 (a (n - 1)).toNat

end

end A338061.P10213128765090825796

/-!
# A338062: Numbers k such that the Enots Wolley sequence A336957(k) is odd.

The programs for A338062, the canonical program `A338062.P2458723429357841651` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338062 has offset 1).

The definition of A338062 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1063 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338062.P3980315776416029404

`lt[A040417(A336957(n+1)), 2]+1`
-/

namespace A338062.P3980315776416029404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040417 (A336957 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A338062.P3980315776416029404

namespace A338062

/-- `lt[A040417(A336957(n+1)), 2]+1` -/
def P3980315776416029404.Spec : Prop :=
  ∀ n, (P3980315776416029404.a n : ℤ) = A338062 (n + 1)

end A338062

/-! ## A338062.P9690627075592004486

`A336546(A235482(n+1))+A014601(n)`
-/

namespace A338062.P9690627075592004486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336546 (A235482 (n + 1)).toNat + A014601 n

end

end A338062.P9690627075592004486

namespace A338062

/-- `A336546(A235482(n+1))+A014601(n)` -/
def P9690627075592004486.Spec : Prop :=
  ∀ n, P9690627075592004486.a n = A338062 (n + 1)

end A338062

/-! ## A338062.P3231235444430848906

`A097031(A015931(n+1))+comp[or(2, n)-1]`
-/

namespace A338062.P3231235444430848906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097031 (A015931 (n + 1)).toNat + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A338062.P3231235444430848906

namespace A338062

/-- `A097031(A015931(n+1))+comp[or(2, n)-1]` -/
def P3231235444430848906.Spec : Prop :=
  ∀ n, P3231235444430848906.a n = A338062 (n + 1)

end A338062

/-! ## A338062.P918627866707978722

`A042948(n+1)%(A006521(n+1)+n+1)`
-/

namespace A338062.P918627866707978722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A042948 (n + 1)) (A006521 (n + 1) + (n + 1 : ℤ))

end

end A338062.P918627866707978722

namespace A338062

/-- `A042948(n+1)%(A006521(n+1)+n+1)` -/
def P918627866707978722.Spec : Prop :=
  ∀ n, P918627866707978722.a n = A338062 (n + 1)

end A338062

/-! ## A338062.P48731029734580207

`A014601(n)+A008480(A333242(n+1))`
-/

namespace A338062.P48731029734580207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 n + A008480 (A333242 (n + 1)).toNat

end

end A338062.P48731029734580207

namespace A338062

/-- `A014601(n)+A008480(A333242(n+1))` -/
def P48731029734580207.Spec : Prop :=
  ∀ n, P48731029734580207.a n = A338062 (n + 1)

end A338062

/-! ## A338062.P2458723429357841651

`A143731(A107759(2*(n+2)))+A014601(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A338062

/-- `A143731(A107759(2*(n+2)))+A014601(n)` -/
def P2458723429357841651.Spec : Prop :=
  ∀ n, P2458723429357841651.a n = A338062 (n + 1)

theorem P2458723429357841651.correct : P2458723429357841651.Spec := by
  intro n
  simp only [A338062, Nat.add_sub_cancel]

end A338062

/-! ## A338062.P6747290948484662905

`(A014601(n)+1)%A006521(n+3)`
-/

namespace A338062.P6747290948484662905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014601 n + 1) (A006521 (n + 3))

end

end A338062.P6747290948484662905

namespace A338062

/-- `(A014601(n)+1)%A006521(n+3)` -/
def P6747290948484662905.Spec : Prop :=
  ∀ n, P6747290948484662905.a n = A338062 (n + 1)

end A338062

/-! ## A338062.P15733258617031315759

`∑[A010684(n)*A057427(A094194(n+1))]`
-/

namespace A338062.P15733258617031315759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n * A057427 (A094194 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338062.P15733258617031315759

namespace A338062

/-- `∑[A010684(n)*A057427(A094194(n+1))]` -/
def P15733258617031315759.Spec : Prop :=
  ∀ n, P15733258617031315759.a n = A338062 (n + 1)

end A338062

/-! ## A338062.P13306383313639236750

`∑[A010684(n)]%A252719(n+1)`
-/

namespace A338062.P13306383313639236750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A252719 (n + 1))

end

end A338062.P13306383313639236750

namespace A338062

/-- `∑[A010684(n)]%A252719(n+1)` -/
def P13306383313639236750.Spec : Prop :=
  ∀ n, P13306383313639236750.a n = A338062 (n + 1)

end A338062

/-! ## A338062.P723694942016217787

`lt[A003963(A096861(n+1))/(n+1), 1-and(2, n)]`
-/

namespace A338062.P723694942016217787
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (A096861 (n + 1)).toNat : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A338062.P723694942016217787

namespace A338062

/-- `lt[A003963(A096861(n+1))/(n+1), 1-and(2, n)]` -/
def P723694942016217787.Spec : Prop :=
  ∀ n, (P723694942016217787.a n : ℤ) = A338062 (n + 1)

end A338062

/-! ## A338062.P13927067307653095731

`A014601(n+4)-A186684(A250120(2*n+1))`
-/

namespace A338062.P13927067307653095731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014601 (n + 4) - A186684 (A250120 (2 * n + 1)).toNat

end

end A338062.P13927067307653095731

namespace A338062

/-- `A014601(n+4)-A186684(A250120(2*n+1))` -/
def P13927067307653095731.Spec : Prop :=
  ∀ n, P13927067307653095731.a n = A338062 (n + 1)

end A338062

/-! ## A338062.P3231185096954726742

`record[or(2, A304750(n))-2]`
-/

namespace A338062.P3231185096954726742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A304750 n) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338062.P3231185096954726742

namespace A338062

/-- `record[or(2, A304750(n))-2]` -/
def P3231185096954726742.Spec : Prop :=
  ∀ n, P3231185096954726742.a n = A338062 (n + 1)

end A338062

/-! ## A338062.P15123013997877868243

`lt[A003963(A312561(n))/(n+1), 1-and(2, n)]`
-/

namespace A338062.P15123013997877868243
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003963 (A312561 n).toNat : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A338062.P15123013997877868243

namespace A338062

/-- `lt[A003963(A312561(n))/(n+1), 1-and(2, n)]` -/
def P15123013997877868243.Spec : Prop :=
  ∀ n, (P15123013997877868243.a n : ℤ) = A338062 (n + 1)

end A338062

/-! ## A338062.P8989882213504616174

`lt[A057110(A005112(n+1)), A319373(3*n+3)]`
-/

namespace A338062.P8989882213504616174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057110 (A005112 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319373 (3 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338062.P8989882213504616174

namespace A338062

/-- `lt[A057110(A005112(n+1)), A319373(3*n+3)]` -/
def P8989882213504616174.Spec : Prop :=
  ∀ n, (P8989882213504616174.a n : ℤ) = A338062 (n + 1)

end A338062

/-! ## A338062.P15186150419337652854

`lt[A353626(A005112(n+3)), A319373(3*n+3)]`
-/

namespace A338062.P15186150419337652854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353626 (A005112 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319373 (3 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338062.P15186150419337652854

namespace A338062

/-- `lt[A353626(A005112(n+3)), A319373(3*n+3)]` -/
def P15186150419337652854.Spec : Prop :=
  ∀ n, (P15186150419337652854.a n : ℤ) = A338062 (n + 1)

end A338062

/-! ## A338062.P3009579887348445253

`∑[and(3, A115638(n))]`
-/

namespace A338062.P3009579887348445253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (A115638 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338062.P3009579887348445253

namespace A338062

/-- `∑[and(3, A115638(n))]` -/
def P3009579887348445253.Spec : Prop :=
  ∀ n, P3009579887348445253.a n = A338062 (n + 1)

end A338062

/-! ## A338062.P15490918954381559943

`A000035(A003415(2*n))+2*n+1`
-/

namespace A338062.P15490918954381559943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A003415 (2 * n)).toNat + (2 * n + 1 : ℤ)

end

end A338062.P15490918954381559943

namespace A338062

/-- `A000035(A003415(2*n))+2*n+1` -/
def P15490918954381559943.Spec : Prop :=
  ∀ n, P15490918954381559943.a n = A338062 (n + 1)

end A338062

/-! ## A338062.P4881808161792495803

`A195150(A049591(n+1))+A014601(n)`
-/

namespace A338062.P4881808161792495803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195150 (A049591 (n + 1)).toNat + A014601 n

end

end A338062.P4881808161792495803

namespace A338062

/-- `A195150(A049591(n+1))+A014601(n)` -/
def P4881808161792495803.Spec : Prop :=
  ∀ n, P4881808161792495803.a n = A338062 (n + 1)

end A338062

/-! ## A338062.P1319640667559355138

`A123246(A060192(n))`
-/

namespace A338062.P1319640667559355138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123246 (A060192 n).toNat

end

end A338062.P1319640667559355138

namespace A338062

/-- `A123246(A060192(n))` -/
def P1319640667559355138.Spec : Prop :=
  ∀ n, P1319640667559355138.a n = A338062 (n + 1)

end A338062

/-!
# A338063: Odd terms in A336957 in order of appearance.

The programs for A338063, there is no canonical definition to state claims against.
-/

/-! ## A338063.P4913717233828478911

`A336957(A338062(n+1))`
-/

namespace A338063.P4913717233828478911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (A338062 (n + 1)).toNat

end

end A338063.P4913717233828478911

/-! ## A338063.P14097197683161077284

`filter[A336957(n+1), A000035(#)]`
-/

namespace A338063.P14097197683161077284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A338063.P14097197683161077284

/-! ## A338063.P15981667377664569754

`A336957(A008615(6*∑[3^and(1, n)]+1))`
-/

namespace A338063.P15981667377664569754
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.land 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (A008615 (6 * (∑ j ∈ Finset.range (n + 1), f1 j) + 1)).toNat

end

end A338063.P15981667377664569754

/-! ## A338063.P14638807961673301083

`A336957(A008615(∑[(3-(-1)^n)²+2]+1))`
-/

namespace A338063.P14638807961673301083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - (-1) ^ n) ^ 2 + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (A008615 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat).toNat

end

end A338063.P14638807961673301083

/-! ## A338063.P16387126000361712572

`A336957(record[A124741(2*n+1)]-n)`
-/

namespace A338063.P16387126000361712572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124741 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)).toNat

end

end A338063.P16387126000361712572

/-! ## A338063.P6101815716542426965

`A336957(A049332(n)-A005803(n))`
-/

namespace A338063.P6101815716542426965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (A049332 n - A005803 n).toNat

end

end A338063.P6101815716542426965

/-! ## A338063.P6831075587879543554

`A336957(∑[A114567(n²)])`
-/

namespace A338063.P6831075587879543554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114567 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338063.P6831075587879543554

/-! ## A338063.P16043762410037923195

`A336957(record[A003988(2*n+1)])`
-/

namespace A338063.P16043762410037923195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003988 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338063.P16043762410037923195

/-! ## A338063.P12611449683781302272

`A336957(record[A010766(2*n+1)])`
-/

namespace A338063.P12611449683781302272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338063.P12611449683781302272

/-! ## A338063.P4120008842200584431

`A336957(record[A126988(2*n+1)])`
-/

namespace A338063.P4120008842200584431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338063.P4120008842200584431

/-!
# A338065: Even terms in A336957, divided by 2, in order of appearance.

The programs for A338065, there is no canonical definition to state claims against.
-/

/-! ## A338065.P15580843120456359991

`A049084(p?[A073846(A336957(n+1))])`
-/

namespace A338065.P15580843120456359991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A336957 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338065.P15580843120456359991

/-! ## A338065.P3312598685488234972

`A075167(p?[A073846(A336957(n+1))])`
-/

namespace A338065.P3312598685488234972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A336957 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075167 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338065.P3312598685488234972

/-! ## A338065.P2309151872167860228

`A336957(record[A003988(2*(n+1))])/2`
-/

namespace A338065.P2309151872167860228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003988 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336957 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A338065.P2309151872167860228

/-! ## A338065.P13473536083588461896

`A336957(record[A010766(2*(n+1))])/2`
-/

namespace A338065.P13473536083588461896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336957 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A338065.P13473536083588461896

/-! ## A338065.P12704907584326781652

`A336957(record[A126988(2*(n+1))])/2`
-/

namespace A338065.P12704907584326781652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (2 * (n + 1))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336957 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 2

end

end A338065.P12704907584326781652

/-!
# A338066: Numbers k such that A336957(k) is even and greater than k.

The programs for A338066, there is no canonical definition to state claims against.
-/

/-! ## A338066.P136469774837303967

`A337066(2*A338067(n+1))`
-/

namespace A338066.P136469774837303967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337066 (2 * A338067 (n + 1)).toNat

end

end A338066.P136469774837303967

/-! ## A338066.P2942481939378246008

`A337066(A338067(n+1)+A338067(n+1))`
-/

namespace A338066.P2942481939378246008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337066 (A338067 (n + 1) + A338067 (n + 1)).toNat

end

end A338066.P2942481939378246008

/-! ## A338066.P8730187779144582447

`A337276(A338067(n+1))`
-/

namespace A338066.P8730187779144582447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337276 (A338067 (n + 1)).toNat

end

end A338066.P8730187779144582447

/-! ## A338066.P14105365114481948093

`record[or(2, A194986(A195083(n+1)))]`
-/

namespace A338066.P14105365114481948093
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A194986 (A195083 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338066.P14105365114481948093

/-! ## A338066.P8150644363869690851

`lt[1-and(2, n), A274455(A182097(n+2)+3)%2]`
-/

namespace A338066.P8150644363869690851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274455 (A182097 (n + 2) + 3).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338066.P8150644363869690851

/-!
# A338067: Even terms A336957(k) which are greater than k, divided by 2, in order of appearance.

The programs for A338067, there is no canonical definition to state claims against.
-/

/-! ## A338067.P11115224473304990997

`A336957(A338066(n+1))/2`
-/

namespace A338067.P11115224473304990997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336957 (A338066 (n + 1)).toNat : ℚ) / 2

end

end A338067.P11115224473304990997

/-! ## A338067.P15036206675451493936

`2^A008683(A181758(n+1))*A336957(A338066(n+1))`
-/

namespace A338067.P15036206675451493936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A181758 (n + 1)).toNat : ℤ) * (A336957 (A338066 (n + 1)).toNat : ℚ)

end

end A338067.P15036206675451493936

/-!
# A338068: Numbers k such that A336957(k) is even and less than k.

The programs for A338068, there is no canonical definition to state claims against.
-/

/-! ## A338068.P1466690716911397021

`A337066(2*A338069(n+1))`
-/

namespace A338068.P1466690716911397021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337066 (2 * A338069 (n + 1)).toNat

end

end A338068.P1466690716911397021

/-! ## A338068.P2680117294268123802

`lt[A338051(n+1), 0]+1`
-/

namespace A338068.P2680117294268123802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338051 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A338068.P2680117294268123802

/-! ## A338068.P16106555232514571508

`lt[A336957(round(acot(n)+n)), n]`
-/

namespace A338068.P16106555232514571508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A338068.P16106555232514571508

/-! ## A338068.P5871154021639128584

`lt[A336957(n+1), n+1]+1`
-/

namespace A338068.P5871154021639128584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A338068.P5871154021639128584

/-! ## A338068.P9895575255653391524

`lt[A336957(A028310(n)), n]`
-/

namespace A338068.P9895575255653391524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (A028310 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A338068.P9895575255653391524

/-! ## A338068.P5349318652407803418

`lt[A336957(A233583(n+1)), n]`
-/

namespace A338068.P5349318652407803418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (A233583 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A338068.P5349318652407803418

/-!
# A338069: Even terms A336957(k) which are less than k, divided by 2, in order of appearance.

The programs for A338069, there is no canonical definition to state claims against.
-/

/-! ## A338069.P7998978373336690612

`A336957(A338068(n+1))/2`
-/

namespace A338069.P7998978373336690612
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336957 (A338068 (n + 1)).toNat : ℚ) / 2

end

end A338069.P7998978373336690612

/-! ## A338069.P141842827767873798

`floor(A336957(A338068(Δ[n²]-n))/2)`
-/

namespace A338069.P141842827767873798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A336957 (A338068 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat).toNat : ℚ) / 2⌋

end

end A338069.P141842827767873798

/-! ## A338069.P1534913260136191540

`A336957(lt[A338051(n+1), 0]+1)/2`
-/

namespace A338069.P1534913260136191540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338051 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336957 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) : ℚ) / 2

end

end A338069.P1534913260136191540

/-! ## A338069.P4362991942464435920

`ceil(A336957(A338068(2*n-(n-1)))/2)`
-/

namespace A338069.P4362991942464435920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A336957 (A338068 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat).toNat : ℚ) / 2⌉

end

end A338069.P4362991942464435920

/-! ## A338069.P5595646624252246565

`A336957(lt[A336957(n+1), n+1]+1)/2`
-/

namespace A338069.P5595646624252246565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336957 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1) : ℚ) / 2

end

end A338069.P5595646624252246565

/-!
# A338070: Numbers k such that w(k-2), w(k-1), and w(k) are all odd, where w is A336957.

The programs for A338070, there is no canonical definition to state claims against.
-/

/-! ## A338070.P2576132831586636479

`A337644(n+1)+2`
-/

namespace A338070.P2576132831586636479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337644 (n + 1) + 2

end

end A338070.P2576132831586636479

/-!
# A338071: Values of w(k) when w(k-2), w(k-1), and w(k) are all odd, where w is A336957.

The programs for A338071, there is no canonical definition to state claims against.
-/

/-! ## A338071.P7951895810834609172

`A336957(A338070(n+1))`
-/

namespace A338071.P7951895810834609172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (A338070 (n + 1)).toNat

end

end A338071.P7951895810834609172

/-! ## A338071.P7428753407713951326

`A336957(A337644(n+1)+2)`
-/

namespace A338071.P7428753407713951326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336957 (A337644 (n + 1) + 2).toNat

end

end A338071.P7428753407713951326

/-! ## A338071.P3342751147830248213

`A338070(n+1)+A338051(A337644(n+1)+2)`
-/

namespace A338071.P3342751147830248213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338070 (n + 1) + A338051 (A337644 (n + 1) + 2).toNat

end

end A338071.P3342751147830248213

/-!
# A338072: Concatenation of the digits of A083758.

The programs for A338072, there is no canonical definition to state claims against.
-/

/-! ## A338072.P8817440340330645773

`A104705(A364255(n)+A295531(n+1))`
-/

namespace A338072.P8817440340330645773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104705 (A364255 n + A295531 (n + 1)).toNat

end

end A338072.P8817440340330645773

/-!
# A338073: Rearrangement of positive integers except 3 defined by A083758.

The programs for A338073, there is no canonical definition to state claims against.
-/

/-! ## A338073.P14795856623950069728

`A000720(A083758(n+1))`
-/

namespace A338073.P14795856623950069728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A083758 (n + 1)).toNat

end

end A338073.P14795856623950069728

/-! ## A338073.P17600674911504889298

`A003963(p?[A083758(n+1)])`
-/

namespace A338073.P17600674911504889298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338073.P17600674911504889298

/-! ## A338073.P6917418999813178362

`A026233(p?[A083758(n+1)])`
-/

namespace A338073.P6917418999813178362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338073.P6917418999813178362

/-! ## A338073.P11796720380992867095

`A026238(p?[A083758(n+1)])`
-/

namespace A338073.P11796720380992867095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338073.P11796720380992867095

/-! ## A338073.P15448245974649090886

`A049084(p?[A083758(n+1)])`
-/

namespace A338073.P15448245974649090886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338073.P15448245974649090886

/-! ## A338073.P13916108996477005540

`A058933(p?[A083758(n+1)])`
-/

namespace A338073.P13916108996477005540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338073.P13916108996477005540

/-! ## A338073.P3847516848114404377

`A058933(A083758(-xor(n, -1)))`
-/

namespace A338073.P3847516848114404377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (A083758 (-Int.xor (n : ℤ) (-1)).toNat).toNat

end

end A338073.P3847516848114404377

/-! ## A338073.P13270792596451457123

`A003963(∏{p}[A083758(n+1), #])`
-/

namespace A338073.P13270792596451457123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A338073.P13270792596451457123

/-! ## A338073.P8932064927375522292

`A026238(∏{p}[A083758(n+1), #])`
-/

namespace A338073.P8932064927375522292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A338073.P8932064927375522292

/-! ## A338073.P15232708758951983431

`A058933(∏{p}[A083758(n+1), #])`
-/

namespace A338073.P15232708758951983431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083758 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A338073.P15232708758951983431

/-!
# A338074: Numbers k such that A336957(k) is twice a prime.

The programs for A338074, there is no canonical definition to state claims against.
-/

/-! ## A338074.P17892083567665476595

`eq[1, char[A337275(n+1)]]`
-/

namespace A338074.P17892083567665476595
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337275 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338074.P17892083567665476595

/-! ## A338074.P4433412759376680026

`eq[1, char[A337066(A100484(n+1))]]`
-/

namespace A338074.P4433412759376680026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337066 (A100484 (n + 1)).toNat

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338074.P4433412759376680026

/-! ## A338074.P18355907713079300967

`lt[A000007(n), char[A337275(n+1)]]`
-/

namespace A338074.P18355907713079300967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337275 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A338074.P18355907713079300967

/-! ## A338074.P10555657960419020284

`A337276(p?[A338065(n+1)])`
-/

namespace A338074.P10555657960419020284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338065 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337276 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A338074.P10555657960419020284

/-! ## A338074.P9617968501000954778

`record[A337276(p?[A337007(2*n+1)])]`
-/

namespace A338074.P9617968501000954778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337007 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337276 (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338074.P9617968501000954778

/-!
# A338076: Diagonal terms in the expansion of 1/(1-x-2*y-3*z).

The programs for A338076, there is no canonical definition to state claims against.
-/

/-! ## A338076.P15844133951114354897

`6^n*A006480(n)`
-/

namespace A338076.P15844133951114354897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) * A006480 n

end

end A338076.P15844133951114354897

/-! ## A338076.P5659752221602043654

`6^n*∑[n+1]*A324151(n)`
-/

namespace A338076.P5659752221602043654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((6 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℤ) * A324151 n

end

end A338076.P5659752221602043654

/-! ## A338076.P6320469049841239384

`record[A119301(n)]*A119309(n)`
-/

namespace A338076.P6320469049841239384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119301 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A119309 n

end

end A338076.P6320469049841239384

/-! ## A338076.P79412405450797023

`A000400(n)*A104684((n+1)*2*n)`
-/

namespace A338076.P79412405450797023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n * A104684 ((n + 1) * (2 * n))

end

end A338076.P79412405450797023

/-! ## A338076.P15335333013184304565

`A006480(n)*A013613(A000096(n))`
-/

namespace A338076.P15335333013184304565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006480 n * A013613 (A000096 n).toNat

end

end A338076.P15335333013184304565

/-!
# A338077: Diagonal terms in the expansion of (1+x*y+y*z+z*x)/(1-x-y-z).

The programs for A338077, there is no canonical definition to state claims against.
-/

/-! ## A338077.P6905201558703302416

`A029600(A022267(n))*A029651(n)`
-/

namespace A338077.P6905201558703302416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029600 (A022267 n).toNat * A029651 n

end

end A338077.P6905201558703302416

/-!
# A338079: Odd composite integers m such that A086902(m) == 7 (mod m).

The programs for A338079, there is no canonical definition to state claims against.
-/

/-! ## A338079.P2887459017830671344

`A337630(n+1)-A351254(A342181(n))`
-/

namespace A338079.P2887459017830671344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337630 (n + 1) - A351254 (A342181 n).toNat

end

end A338079.P2887459017830671344

/-!
# A338082: Odd composite integers m such that A056854(m) == 7 (mod m).

The programs for A338082, there is no canonical definition to state claims against.
-/

/-! ## A338082.P4709571809175682257

`record[gcd(A276086(2*(n+2)), A303217(n+5))]`
-/

namespace A338082.P4709571809175682257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (2 * (n + 2))) (A303217 (n + 5))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338082.P4709571809175682257

/-!
# A338083: Primes p such that p+2 is prime and the sum of prime factors of p+1 (taken with repetition) is prime.

The programs for A338083, there is no canonical definition to state claims against.
-/

/-! ## A338083.P15027574042443489188

`∩[A001359(n+1), A127269(n+1)]`
-/

namespace A338083.P15027574042443489188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338083.P15027574042443489188

/-! ## A338083.P7833030451254619914

`∩[A054799(n+1), A127269(n+1)]`
-/

namespace A338083.P7833030451254619914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338083.P7833030451254619914

/-! ## A338083.P12735018138596930308

`∩[A111166(n+1), A127269(n+1)]`
-/

namespace A338083.P12735018138596930308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111166 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338083.P12735018138596930308

/-! ## A338083.P15501007128452264022

`∩[A124588(n+1), A127269(n+1)]`
-/

namespace A338083.P15501007128452264022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338083.P15501007128452264022

/-! ## A338083.P15154536462120007966

`∩[A127269(n+1), A181747(n+1)]`
-/

namespace A338083.P15154536462120007966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338083.P15154536462120007966

/-! ## A338083.P15310377121324650438

`∩[A063700(n+1), A127269(n+1)]`
-/

namespace A338083.P15310377121324650438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338083.P15310377121324650438

/-! ## A338083.P705822911260828376

`∩[A127269(n+1), A280255(n+1)]`
-/

namespace A338083.P705822911260828376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338083.P705822911260828376

/-! ## A338083.P8602219449464536478

`∩[A063693(n+1), A127269(n+1)]`
-/

namespace A338083.P8602219449464536478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338083.P8602219449464536478

/-! ## A338083.P6605288954997954377

`∩[A127269(n+1), A378983(n+1)]`
-/

namespace A338083.P6605288954997954377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338083.P6605288954997954377

/-! ## A338083.P17673567708976486169

`∩[A127269(n+1), A394509(n+1)]`
-/

namespace A338083.P17673567708976486169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338083.P17673567708976486169

/-! ## A338083.P16407251915796779934

`∩[A127269(n+1), A395788(n+1)]`
-/

namespace A338083.P16407251915796779934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338083.P16407251915796779934

/-! ## A338083.P9762272862815398584

`∩[A073534(n+1), A127269(n+1)]`
-/

namespace A338083.P9762272862815398584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338083.P9762272862815398584

/-! ## A338083.P18189834067909414676

`∩[A127269(n+1), A280590(n+1)]`
-/

namespace A338083.P18189834067909414676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338083.P18189834067909414676

/-! ## A338083.P12268482841772335323

`∩[A001838(n+1), A127269(n+1)]`
-/

namespace A338083.P12268482841772335323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338083.P12268482841772335323

/-! ## A338083.P15007879735632913154

`∩[A127269(n+1), A274212(n+1)]`
-/

namespace A338083.P15007879735632913154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127269 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338083.P15007879735632913154

/-! ## A338083.P12558820618245390103

`∩[A066147(n+1), A127269(n+1)]`
-/

namespace A338083.P12558820618245390103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338083.P12558820618245390103

/-! ## A338083.P11773005551635295572

`∩[A072282(n+1), A127269(n+1)]`
-/

namespace A338083.P11773005551635295572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072282 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338083.P11773005551635295572

/-! ## A338083.P14742680369862841191

`∩[A065873(n+1), A127269(n+1)]`
-/

namespace A338083.P14742680369862841191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065873 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127269 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A338083.P14742680369862841191

/-! ## A338083.P10534167086426697619

`p?[A001222(A078577(n+1))*A001359(n+1)]`
-/

namespace A338083.P10534167086426697619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A078577 (n + 1)).toNat * A001359 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338083.P10534167086426697619

/-! ## A338083.P10395081237187835771

`p?[A001222(A078577(n+1))*A111166(n+1)]`
-/

namespace A338083.P10395081237187835771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A078577 (n + 1)).toNat * A111166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A338083.P10395081237187835771

/-!
# A338084: Number of equivalence classes of X-based filling of diagonals in a diagonal Latin square of order 2n (or 2n+1).

The programs for A338084, there is no canonical definition to state claims against.
-/

/-! ## A338084.P4308759180747603986

`A309283(2*n)`
-/

namespace A338084.P4308759180747603986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309283 (2 * n)

end

end A338084.P4308759180747603986

/-! ## A338084.P7139611460108748151

`A309283(Δ[n²])^ceil(acot(n))`
-/

namespace A338084.P7139611460108748151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A309283 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A338084.P7139611460108748151

/-! ## A338084.P17733997983208028758

`and(-1, A309283(comp[or(2, n)-1]))`
-/

namespace A338084.P17733997983208028758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A309283 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n))

end

end A338084.P17733997983208028758

/-!
# A338086: Duplicate the ternary digits of n, so each 0, 1 or 2 becomes 00, 11 or 22 respectively.

The programs for A338086, the canonical program `A338086.P4709198276400586346` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338086 has offset 0).

The definition of A338086 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A037314, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A338086.P4709198276400586346

`4*A037314(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A338086

/-- `4*A037314(n)` -/
def P4709198276400586346.Spec : Prop :=
  ∀ n, P4709198276400586346.a n = A338086 n

theorem P4709198276400586346.correct : P4709198276400586346.Spec := by
  intro n
  simp only [A338086]

end A338086

/-! ## A338086.P9407267163303676519

`4*A037463(A023717(n))`
-/

namespace A338086.P9407267163303676519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A037463 (A023717 n).toNat

end

end A338086.P9407267163303676519

namespace A338086

/-- `4*A037463(A023717(n))` -/
def P9407267163303676519.Spec : Prop :=
  ∀ n, P9407267163303676519.a n = A338086 n

end A338086

/-! ## A338086.P15144367085041651422

`4*A037463(record[n-A292373(n)²])`
-/

namespace A338086.P15144367085041651422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A292373 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A037463 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A338086.P15144367085041651422

namespace A338086

/-- `4*A037463(record[n-A292373(n)²])` -/
def P15144367085041651422.Spec : Prop :=
  ∀ n, P15144367085041651422.a n = A338086 n

end A338086

/-! ## A338086.P7555099777051440933

`A037314(n)/(A186039(n)/2)²`
-/

namespace A338086.P7555099777051440933
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037314 n : ℚ) / ((A186039 n : ℚ) / 2) ^ 2

end

end A338086.P7555099777051440933

namespace A338086

/-- `A037314(n)/(A186039(n)/2)²` -/
def P7555099777051440933.Spec : Prop :=
  ∀ n, P7555099777051440933.a n = (A338086 n : ℚ)

end A338086

/-! ## A338086.P4456072593091708375

`4*A037472(A037454(n))`
-/

namespace A338086.P4456072593091708375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A037472 (A037454 n).toNat

end

end A338086.P4456072593091708375

namespace A338086

/-- `4*A037472(A037454(n))` -/
def P4456072593091708375.Spec : Prop :=
  ∀ n, P4456072593091708375.a n = A338086 n

end A338086

/-! ## A338086.P11991126286695237296

`A037314(n)/(2^A008683(A125256(n+2)))²`
-/

namespace A338086.P11991126286695237296
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037314 n : ℚ) / ((2 : ℚ) ^ (A008683 (A125256 (n + 2)).toNat : ℤ)) ^ 2

end

end A338086.P11991126286695237296

namespace A338086

/-- `A037314(n)/(2^A008683(A125256(n+2)))²` -/
def P11991126286695237296.Spec : Prop :=
  ∀ n, P11991126286695237296.a n = (A338086 n : ℚ)

end A338086

/-! ## A338086.P2678146795492585619

`record[4*A065369(n)]`
-/

namespace A338086.P2678146795492585619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A065369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338086.P2678146795492585619

namespace A338086

/-- `record[4*A065369(n)]` -/
def P2678146795492585619.Spec : Prop :=
  ∀ n, P2678146795492585619.a n = A338086 n

end A338086

/-! ## A338086.P10905948010370481718

`4*A037475(A037455(n))`
-/

namespace A338086.P10905948010370481718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A037475 (A037455 n).toNat

end

end A338086.P10905948010370481718

namespace A338086

/-- `4*A037475(A037455(n))` -/
def P10905948010370481718.Spec : Prop :=
  ∀ n, P10905948010370481718.a n = A338086 n

end A338086

/-! ## A338086.P4651025458098310929

`4*A037477(A037456(n))`
-/

namespace A338086.P4651025458098310929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A037477 (A037456 n).toNat

end

end A338086.P4651025458098310929

namespace A338086

/-- `4*A037477(A037456(n))` -/
def P4651025458098310929.Spec : Prop :=
  ∀ n, P4651025458098310929.a n = A338086 n

end A338086

/-! ## A338086.P6260646373014917482

`2*eq[A163528(2*n), A163529(2*n)]`
-/

namespace A338086.P6260646373014917482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338086.P6260646373014917482

namespace A338086

/-- `2*eq[A163528(2*n), A163529(2*n)]` -/
def P6260646373014917482.Spec : Prop :=
  ∀ n, (P6260646373014917482.a n : ℤ) = A338086 n

end A338086

/-! ## A338086.P18239611493628850286

`A008586(A037314(n))`
-/

namespace A338086.P18239611493628850286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A037314 n).toNat

end

end A338086.P18239611493628850286

namespace A338086

/-- `A008586(A037314(n))` -/
def P18239611493628850286.Spec : Prop :=
  ∀ n, P18239611493628850286.a n = A338086 n

end A338086

/-! ## A338086.P15306738446314699677

`eq[A163528(n), A163529(n)]`
-/

namespace A338086.P15306738446314699677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163528 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163529 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338086.P15306738446314699677

namespace A338086

/-- `eq[A163528(n), A163529(n)]` -/
def P15306738446314699677.Spec : Prop :=
  ∀ n, (P15306738446314699677.a n : ℤ) = A338086 n

end A338086

/-! ## A338086.P14780769576165865940

`4*A163332(A163334(∑[n]))`
-/

namespace A338086.P14780769576165865940
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A163332 (A163334 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A338086.P14780769576165865940

namespace A338086

/-- `4*A163332(A163334(∑[n]))` -/
def P14780769576165865940.Spec : Prop :=
  ∀ n, P14780769576165865940.a n = A338086 n

end A338086

/-! ## A338086.P14010652028711948342

`record[4*A105186(A037463(n))]`
-/

namespace A338086.P14010652028711948342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A105186 (A037463 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338086.P14010652028711948342

namespace A338086

/-- `record[4*A105186(A037463(n))]` -/
def P14010652028711948342.Spec : Prop :=
  ∀ n, P14010652028711948342.a n = A338086 n

end A338086

/-! ## A338086.P242328044902496135

`record[4*A105186(A037468(n))]`
-/

namespace A338086.P242328044902496135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A105186 (A037468 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A338086.P242328044902496135

namespace A338086

/-- `record[4*A105186(A037468(n))]` -/
def P242328044902496135.Spec : Prop :=
  ∀ n, P242328044902496135.a n = A338086 n

end A338086

/-! ## A338086.P4260809569604027711

`2*A005843(eq[n, A065369(n)])`
-/

namespace A338086.P4260809569604027711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065369 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338086.P4260809569604027711

namespace A338086

/-- `2*A005843(eq[n, A065369(n)])` -/
def P4260809569604027711.Spec : Prop :=
  ∀ n, P4260809569604027711.a n = A338086 n

end A338086

/-! ## A338086.P12586605713628599860

`eq[2*A163528(n), A163530(n)]`
-/

namespace A338086.P12586605713628599860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163528 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338086.P12586605713628599860

namespace A338086

/-- `eq[2*A163528(n), A163530(n)]` -/
def P12586605713628599860.Spec : Prop :=
  ∀ n, (P12586605713628599860.a n : ℤ) = A338086 n

end A338086

/-! ## A338086.P262736140399587688

`eq[2*A163529(n), A163530(n)]`
-/

namespace A338086.P262736140399587688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163529 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163530 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338086.P262736140399587688

namespace A338086

/-- `eq[2*A163529(n), A163530(n)]` -/
def P262736140399587688.Spec : Prop :=
  ∀ n, (P262736140399587688.a n : ℤ) = A338086 n

end A338086

/-!
# A338087: a(n) is the smallest prime number which can be represented as x^2 + h*y^2 with x > 0 and y > 0 for each h in the first n Heegner numbers (A003173).

The programs for A338087, there is no canonical definition to state claims against.
-/

/-! ## A338087.P5425148539613608588

`A056896(∏[A081349(char[1]+n)])`
-/

namespace A338087.P5425148539613608588
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081349 ((if ∃ j, f2 j = n then 1 else 0) + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056896 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338087.P5425148539613608588

/-!
# A338088: Smallest prime numbers which can be represented as x^2 + h*y^2 with x > 0 for every h in the first n idoneal numbers.

The programs for A338088, there is no canonical definition to state claims against.
-/

/-! ## A338088.P11328111753693757741

`A155715(A137721(n+1)%A057185(n+1))`
-/

namespace A338088.P11328111753693757741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155715 (Int.tmod (A137721 (n + 1)) (A057185 (n + 1))).toNat

end

end A338088.P11328111753693757741

/-! ## A338088.P12847135545258025863

`A155715(A043315(n+1)%A155717(n+1))`
-/

namespace A338088.P12847135545258025863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155715 (Int.tmod (A043315 (n + 1)) (A155717 (n + 1))).toNat

end

end A338088.P12847135545258025863

/-!
# A338089: Minimal number of moves for the cyclic variant of Hanoi's tower for 4 pegs and n disks, with the final peg three steps away.

The programs for A338089, there is no canonical definition to state claims against.
-/

/-! ## A338089.P17491714486014459345

`a(n-1)+a(n-2)+a(n-3)-2*a(n-5)` with `a(0)=3, a(1)=10, a(2)=21, a(3)=40, a(4)=75, a(5)=134, a(6)=233, a(7)=400, a(8)=683`
-/

namespace A338089.P17491714486014459345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 10, 21, 40, 75, 134, 233, 400, 683] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) - 2 * a (n - 5)

end

end A338089.P17491714486014459345

/-! ## A338089.P7382164003777411659

`∑[or(3, A241151(A279378(n+2)))]`
-/

namespace A338089.P7382164003777411659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 3 (A241151 (A279378 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338089.P7382164003777411659

/-! ## A338089.P2814347004976911025

`∑[A241151(A279378(n+2)+A241151(n+3))]`
-/

namespace A338089.P2814347004976911025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241151 (A279378 (n + 2) + A241151 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338089.P2814347004976911025

/-!
# A338090: Numbers having at least one 8 in their representation in base 9.

The programs for A338090, the canonical program `A338090.P15372758782362634063` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A338090 has offset 1).

The definition of A338090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A338090.P11026578075395961026

`comp[A037477(n)]*A040534(A196499(n+1))`
-/

namespace A338090.P11026578075395961026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) * A040534 (A196499 (n + 1)).toNat

end

end A338090.P11026578075395961026

namespace A338090

/-- `comp[A037477(n)]*A040534(A196499(n+1))` -/
def P11026578075395961026.Spec : Prop :=
  ∀ n, P11026578075395961026.a n = A338090 (n + 1)

end A338090

/-! ## A338090.P15372758782362634063

`comp[A037477(n)]%A000969(2*n+3)`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A338090

/-- `comp[A037477(n)]%A000969(2*n+3)` -/
def P15372758782362634063.Spec : Prop :=
  ∀ n, P15372758782362634063.a n = A338090 (n + 1)

theorem P15372758782362634063.correct : P15372758782362634063.Spec := by
  intro n
  simp only [A338090, Nat.add_sub_cancel]

end A338090

/-! ## A338090.P7207779061305497552

`(A175070(A196127(2*(n+2))+1)+1)*comp[A037477(n)]`
-/

namespace A338090.P7207779061305497552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A175070 (A196127 (2 * (n + 2)) + 1).toNat + 1) * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A338090.P7207779061305497552

namespace A338090

/-- `(A175070(A196127(2*(n+2))+1)+1)*comp[A037477(n)]` -/
def P7207779061305497552.Spec : Prop :=
  ∀ n, P7207779061305497552.a n = A338090 (n + 1)

end A338090

/-! ## A338090.P18069630257777902227

`eq[8, A190598(n)]`
-/

namespace A338090.P18069630257777902227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190598 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A338090.P18069630257777902227

namespace A338090

/-- `eq[8, A190598(n)]` -/
def P18069630257777902227.Spec : Prop :=
  ∀ n, (P18069630257777902227.a n : ℤ) = A338090 (n + 1)

end A338090

/-! ## A338090.P3037778437986034613

`eq[8, dr(A319657(n))]`
-/

namespace A338090.P3037778437986034613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A319657 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A338090.P3037778437986034613

namespace A338090

/-- `eq[8, dr(A319657(n))]` -/
def P3037778437986034613.Spec : Prop :=
  ∀ n, (P3037778437986034613.a n : ℤ) = A338090 (n + 1)

end A338090

/-! ## A338090.P7934841195388114821

`A028310(comp[A037477(n)])`
-/

namespace A338090.P7934841195388114821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A338090.P7934841195388114821

namespace A338090

/-- `A028310(comp[A037477(n)])` -/
def P7934841195388114821.Spec : Prop :=
  ∀ n, P7934841195388114821.a n = A338090 (n + 1)

end A338090

/-! ## A338090.P12992819584198193623

`lt[0, A292373(A289814(n))]`
-/

namespace A338090.P12992819584198193623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292373 (A289814 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338090.P12992819584198193623

namespace A338090

/-- `lt[0, A292373(A289814(n))]` -/
def P12992819584198193623.Spec : Prop :=
  ∀ n, (P12992819584198193623.a n : ℤ) = A338090 (n + 1)

end A338090

/-! ## A338090.P2873968206198125467

`lt[A030108(A319657(n)+1), A319657(n)]`
-/

namespace A338090.P2873968206198125467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030108 (A319657 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338090.P2873968206198125467

namespace A338090

/-- `lt[A030108(A319657(n)+1), A319657(n)]` -/
def P2873968206198125467.Spec : Prop :=
  ∀ n, (P2873968206198125467.a n : ℤ) = A338090 (n + 1)

end A338090

/-! ## A338090.P2670265379938789704

`lt[A319657(A319657(n)+1), A319657(n)]`
-/

namespace A338090.P2670265379938789704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 (A319657 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319657 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338090.P2670265379938789704

namespace A338090

/-- `lt[A319657(A319657(n)+1), A319657(n)]` -/
def P2670265379938789704.Spec : Prop :=
  ∀ n, (P2670265379938789704.a n : ℤ) = A338090 (n + 1)

end A338090

/-! ## A338090.P12230379821062751917

`A068505(A283611(n+1))`
-/

namespace A338090.P12230379821062751917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (A283611 (n + 1)).toNat

end

end A338090.P12230379821062751917

namespace A338090

/-- `A068505(A283611(n+1))` -/
def P12230379821062751917.Spec : Prop :=
  ∀ n, P12230379821062751917.a n = A338090 (n + 1)

end A338090

/-! ## A338090.P4498236593491229791

`lt[7, A054055(A007095(n))]`
-/

namespace A338090.P4498236593491229791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A007095 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A338090.P4498236593491229791

namespace A338090

/-- `lt[7, A054055(A007095(n))]` -/
def P4498236593491229791.Spec : Prop :=
  ∀ n, (P4498236593491229791.a n : ℤ) = A338090 (n + 1)

end A338090

/-! ## A338090.P8365084363227166938

`A068505(eq[8, A054055(n)])`
-/

namespace A338090.P8365084363227166938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068505 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A338090.P8365084363227166938

namespace A338090

/-- `A068505(eq[8, A054055(n)])` -/
def P8365084363227166938.Spec : Prop :=
  ∀ n, P8365084363227166938.a n = A338090 (n + 1)

end A338090

/-! ## A338090.P18160114169298803127

`lt[A004184(A052413(n+1)), n]`
-/

namespace A338090.P18160114169298803127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004184 (A052413 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A338090.P18160114169298803127

namespace A338090

/-- `lt[A004184(A052413(n+1)), n]` -/
def P18160114169298803127.Spec : Prop :=
  ∀ n, (P18160114169298803127.a n : ℤ) = A338090 (n + 1)

end A338090

/-! ## A338090.P14485632864365877675

`A028904(A283611(n+1)+1)-1`
-/

namespace A338090.P14485632864365877675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (A283611 (n + 1) + 1).toNat - 1

end

end A338090.P14485632864365877675

namespace A338090

/-- `A028904(A283611(n+1)+1)-1` -/
def P14485632864365877675.Spec : Prop :=
  ∀ n, P14485632864365877675.a n = A338090 (n + 1)

end A338090

/-! ## A338090.P4339006122534509488

`lt[A004183(A007095(n)), A222254(n)]`
-/

namespace A338090.P4339006122534509488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004183 (A007095 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A338090.P4339006122534509488

namespace A338090

/-- `lt[A004183(A007095(n)), A222254(n)]` -/
def P4339006122534509488.Spec : Prop :=
  ∀ n, (P4339006122534509488.a n : ℤ) = A338090 (n + 1)

end A338090

/-! ## A338090.P15226865296720047256

`comp[A037477(n)]%A037518(n+2)`
-/

namespace A338090.P15226865296720047256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037477 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) (A037518 (n + 2))

end

end A338090.P15226865296720047256

namespace A338090

/-- `comp[A037477(n)]%A037518(n+2)` -/
def P15226865296720047256.Spec : Prop :=
  ∀ n, P15226865296720047256.a n = A338090 (n + 1)

end A338090

/-!
# A338092: a(n) = A337226(A338091(n)); the unique A337226(k) such that A337226(k) = A337226(k + n).

The programs for A338092, there is no canonical definition to state claims against.
-/

/-! ## A338092.P5690213589222222233

`A337226(A338091(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A338092.P5690213589222222233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337226 (A338091 (n + 1)).toNat

end

end A338092.P5690213589222222233

/-! ## A338092.P16790679211694443585

`gcd(A088462(n+1), A326854(A219209(n)))`
-/

namespace A338092.P16790679211694443585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A088462 (n + 1)) (A326854 (A219209 n).toNat)

end

end A338092.P16790679211694443585

/-! ## A338092.P10752980256729414430

`gcd(A000720(n+1), A244223(A011782(n)))`
-/

namespace A338092.P10752980256729414430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000720 (n + 1)) (A244223 (A011782 n).toNat)

end

end A338092.P10752980256729414430

/-! ## A338092.P6626300150459683625

`A175025(A344759(n+1)+∑[A002865(n)])`
-/

namespace A338092.P6626300150459683625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175025 (A344759 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A338092.P6626300150459683625

/-!
# A338094: Number of ways to write 2*n + 1 as x^2 + y^2 + z^2 + w^2 with x + y a positive power of two, where x, y, z, w are nonnegative integers with x <= y and z <= w.

The programs for A338094, there is no canonical definition to state claims against.
-/

/-! ## A338094.P2241508513606059683

`A001221(A315703(n)+A029539(n+1))`
-/

namespace A338094.P2241508513606059683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A315703 n + A029539 (n + 1)).toNat

end

end A338094.P2241508513606059683

/-! ## A338094.P13121175160315981631

`A001221(2^(n+1)-A069768(n))`
-/

namespace A338094.P13121175160315981631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((2 ^ (n + 1) : ℤ) - A069768 n).toNat

end

end A338094.P13121175160315981631

/-! ## A338094.P17735313241108006802

`A001221(2^(n+1)-A122354(n))`
-/

namespace A338094.P17735313241108006802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((2 ^ (n + 1) : ℤ) - A122354 n).toNat

end

end A338094.P17735313241108006802

/-! ## A338094.P10714111200926531235

`A001221(A000079(n+1)-A086425(n))`
-/

namespace A338094.P10714111200926531235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000079 (n + 1) - A086425 n).toNat

end

end A338094.P10714111200926531235

/-! ## A338094.P13892735160465847021

`A001221(A000079(n+1)-A122301(n))`
-/

namespace A338094.P13892735160465847021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A000079 (n + 1) - A122301 n).toNat

end

end A338094.P13892735160465847021

/-!
# A338096: Number of ways to write 2*n+1 as x^2 + y^2 + z^2 + w^2 with x + 2*y + 3*z a positive power of two, where x, y, z, w are nonnegative integers.

The programs for A338096, there is no canonical definition to state claims against.
-/

/-! ## A338096.P14935337677723549225

`A051010(A055469(n+5)+A026624(n))`
-/

namespace A338096.P14935337677723549225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051010 (A055469 (n + 5) + A026624 n).toNat

end

end A338096.P14935337677723549225

/-!
# A338097: Number of ON cells after n generations of cellular automaton based on a hexagonal grid and starting with two adjacent ON cells where an OFF cell is turned ON if exactly two of its six neighbors are ON.

The programs for A338097, there is no canonical definition to state claims against.
-/

/-! ## A338097.P14670730932770296944

`∑[A338098(n)]`
-/

namespace A338097.P14670730932770296944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338098 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A338097.P14670730932770296944

/-! ## A338097.P6648610230935431321

`2*eq[∑{e}[n+1, #], A178691(2*n+1)]`
-/

namespace A338097.P6648610230935431321
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178691 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A338097.P6648610230935431321

/-! ## A338097.P9776827455129329081

`A005843(eq[∑{e}[n+1, #], A178691(2*n+1)])`
-/

namespace A338097.P9776827455129329081
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178691 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n)

end

end A338097.P9776827455129329081

/-! ## A338097.P2324711112829012292

`A156726(A102856(n+1)+A001463(n+1))`
-/

namespace A338097.P2324711112829012292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156726 (A102856 (n + 1) + A001463 (n + 1)).toNat

end

end A338097.P2324711112829012292

/-! ## A338097.P5999030808592775708

`A051532(2*n+1)+A033999(A018020(n))`
-/

namespace A338097.P5999030808592775708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051532 (2 * n + 1) + A033999 (A018020 n).toNat

end

end A338097.P5999030808592775708

/-!
# A338098: First differences of A338097.

The programs for A338098, there is no canonical definition to state claims against.
-/

/-! ## A338098.P8522157336148091851

`Δ[A338097(A057428(n)+n)]`
-/

namespace A338098.P8522157336148091851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338097 (A057428 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338098.P8522157336148091851

/-! ## A338098.P1058016658610092073

`Δ[A338097(A004273(n)-n)]`
-/

namespace A338098.P1058016658610092073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338097 (A004273 n - (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338098.P1058016658610092073

/-! ## A338098.P11578777032822151117

`Δ[A338097(n-A057427(n))]`
-/

namespace A338098.P11578777032822151117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338097 ((n : ℤ) - A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338098.P11578777032822151117

/-! ## A338098.P5032907604077861904

`Δ[A338097(n-A057428(n)²)]`
-/

namespace A338098.P5032907604077861904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338097 ((n : ℤ) - A057428 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338098.P5032907604077861904

/-! ## A338098.P9444562608961947628

`Δ[A338097(A023443(n)*A057427(n))]`
-/

namespace A338098.P9444562608961947628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338097 (A023443 n * A057427 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338098.P9444562608961947628

/-! ## A338098.P9739818269801838720

`A338097(n)-A338097(A057428(n)+n)`
-/

namespace A338098.P9739818269801838720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338097 n - A338097 (A057428 n + (n : ℤ)).toNat

end

end A338098.P9739818269801838720

/-! ## A338098.P14825584895541358056

`A338097(n)-A338097(A004273(n)-n)`
-/

namespace A338098.P14825584895541358056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338097 n - A338097 (A004273 n - (n : ℤ)).toNat

end

end A338098.P14825584895541358056

/-! ## A338098.P4265235620066693749

`A338097(n)-A338097(n-A057427(n))`
-/

namespace A338098.P4265235620066693749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338097 n - A338097 ((n : ℤ) - A057427 n).toNat

end

end A338098.P4265235620066693749

/-! ## A338098.P17543896105398355770

`Δ[A338097(n-(A121855(n)-A121854(n)))]`
-/

namespace A338098.P17543896105398355770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338097 ((n : ℤ) - (A121855 n - A121854 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338098.P17543896105398355770

/-! ## A338098.P8021499496592685886

`Δ[A338097(A004526(A004275(n)))]`
-/

namespace A338098.P8021499496592685886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338097 (A004526 (A004275 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338098.P8021499496592685886

/-! ## A338098.P647640626306537333

`A338097(n)-A338097(log2(A011782(n)))`
-/

namespace A338098.P647640626306537333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338097 n - A338097 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

end

end A338098.P647640626306537333

/-! ## A338098.P7171726087919971660

`Δ[A338097(log2(A011782(n)))]`
-/

namespace A338098.P7171726087919971660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338097 (SequenceMachineLib.roundAway (Real.logb 2 (A011782 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A338098.P7171726087919971660

/-!
# A338099: Number of pairs of 2 X 2 matrices (X,Y) over Z/nZ such that X*Y = 0 and Y*X <> 0.

The programs for A338099, there is no canonical definition to state claims against.
-/

/-! ## A338099.P3403405753267247635

`n*A291719(A154832(n+3))`
-/

namespace A338099.P3403405753267247635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A291719 (A154832 (n + 3)).toNat

end

end A338099.P3403405753267247635

