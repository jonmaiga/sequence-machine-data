import SequenceMachineLib
import Mathlib.Tactic
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
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
import Seq.B010.C000
import Seq.B011.C000
import Seq.B012.C000
import Seq.B013.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A260901: a(n) is the smallest composite k such that d(2)/d(1) + d(3)/d(2) + ... + d(q)/d(q-1) = prime(n), where d(1) < d(2) < ... < d(q) are the q divisors of k, or 0 if no such k exists.

The programs for A260901, there is no canonical definition to state claims against.
-/

/-! ## A260901.P11286943370389416420

`A360251(n)*A360260(A360298(n+5))`
-/

namespace A260901.P11286943370389416420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360251 n * A360260 (A360298 (n + 5)).toNat

end

end A260901.P11286943370389416420

/-! ## A260901.P5284937572563018052

`A349824(A159915(n)^A273751(n+1))`
-/

namespace A260901.P5284937572563018052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349824 (SequenceMachineLib.roundAway ((A159915 n : ℚ) ^ (A273751 (n + 1) : ℤ))).toNat

end

end A260901.P5284937572563018052

/-! ## A260901.P5923008373006470850

`A110477(A100102(n))%A110477(n+1)`
-/

namespace A260901.P5923008373006470850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110477 (A100102 n).toNat) (A110477 (n + 1))

end

end A260901.P5923008373006470850

/-!
# A260902: a(n) = (-5*(-1)^n + Sum_{k>=0} 2*A000108(k)*k^n/5^k)/sqrt(5), where A000108 are Catalan numbers.

The programs for A260902, there is no canonical definition to state claims against.
-/

/-! ## A260902.P16863256108495150647

`A056239(n+1)+A096206(n+3)-2`
-/

namespace A260902.P16863256108495150647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (n + 1) + (A096206 (n + 3) - 2)

end

end A260902.P16863256108495150647

/-!
# A260905: Totients of the Blum integers.

The programs for A260905, the canonical program `A260905.P13307699566017813333` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260905 has offset 1).

The definition of A260905 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A195758, A195759, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A260905.P13307699566017813333

`(A195758(n+1)-1)*(A195759(n+1)-1)`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A260905

/-- `(A195758(n+1)-1)*(A195759(n+1)-1)` -/
def P13307699566017813333.Spec : Prop :=
  ∀ n, P13307699566017813333.a n = A260905 (n + 1)

theorem P13307699566017813333.correct : P13307699566017813333.Spec := by
  intro n
  simp only [A260905, Nat.add_sub_cancel]

end A260905

/-! ## A260905.P4936841186291498917

`A000010(A016105(n+1))`
-/

namespace A260905.P4936841186291498917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A016105 (n + 1)).toNat

end

end A260905.P4936841186291498917

namespace A260905

/-- `A000010(A016105(n+1))` -/
def P4936841186291498917.Spec : Prop :=
  ∀ n, P4936841186291498917.a n = A260905 (n + 1)

end A260905

/-! ## A260905.P2404842453689915431

`A000010(A195758(n+1))*A000010(A195759(n+1))`
-/

namespace A260905.P2404842453689915431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A195758 (n + 1)).toNat * A000010 (A195759 (n + 1)).toNat

end

end A260905.P2404842453689915431

namespace A260905

/-- `A000010(A195758(n+1))*A000010(A195759(n+1))` -/
def P2404842453689915431.Spec : Prop :=
  ∀ n, P2404842453689915431.a n = A260905 (n + 1)

end A260905

/-! ## A260905.P14633511137821180024

`A000010(A195758(n+1)*A195759(n+1))`
-/

namespace A260905.P14633511137821180024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A195758 (n + 1) * A195759 (n + 1)).toNat

end

end A260905.P14633511137821180024

namespace A260905

/-- `A000010(A195758(n+1)*A195759(n+1))` -/
def P14633511137821180024.Spec : Prop :=
  ∀ n, P14633511137821180024.a n = A260905 (n + 1)

end A260905

/-! ## A260905.P10750247083195086923

`A000010(lcm(A195758(n+1), A195759(n+1)))`
-/

namespace A260905.P10750247083195086923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.lcm (A195758 (n + 1)) (A195759 (n + 1)))

end

end A260905.P10750247083195086923

namespace A260905

/-- `A000010(lcm(A195758(n+1), A195759(n+1)))` -/
def P10750247083195086923.Spec : Prop :=
  ∀ n, P10750247083195086923.a n = A260905 (n + 1)

end A260905

/-! ## A260905.P18391826723886546048

`A329643(A006881(n+1))+A033879(A016105(n+1))`
-/

namespace A260905.P18391826723886546048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329643 (A006881 (n + 1)).toNat + A033879 (A016105 (n + 1)).toNat

end

end A260905.P18391826723886546048

namespace A260905

/-- `A329643(A006881(n+1))+A033879(A016105(n+1))` -/
def P18391826723886546048.Spec : Prop :=
  ∀ n, P18391826723886546048.a n = A260905 (n + 1)

end A260905

/-! ## A260905.P9780779602939143384

`A103222(or(1, A016105(n+1)))`
-/

namespace A260905.P9780779602939143384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103222 (Int.lor 1 (A016105 (n + 1))).toNat

end

end A260905.P9780779602939143384

namespace A260905

/-- `A103222(or(1, A016105(n+1)))` -/
def P9780779602939143384.Spec : Prop :=
  ∀ n, P9780779602939143384.a n = A260905 (n + 1)

end A260905

/-! ## A260905.P12367502565546661565

`A103222(2*A016105(n+1))`
-/

namespace A260905.P12367502565546661565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103222 (2 * A016105 (n + 1)).toNat

end

end A260905.P12367502565546661565

namespace A260905

/-- `A103222(2*A016105(n+1))` -/
def P12367502565546661565.Spec : Prop :=
  ∀ n, P12367502565546661565.a n = A260905 (n + 1)

end A260905

/-!
# A260906: Numbers n such that 3*n and n^3 have the same digit sum.

The programs for A260906, there is no canonical definition to state claims against.
-/

/-! ## A260906.P6925264875553821875

`eq[A004164(n), A007953(3*n)]`
-/

namespace A260906.P6925264875553821875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260906.P6925264875553821875

/-! ## A260906.P6409158742733777001

`eq[A000578(A004164(n)), A118880(3*n)]`
-/

namespace A260906.P6409158742733777001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A004164 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118880 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260906.P6409158742733777001

/-! ## A260906.P15378297352961936392

`eq[A001281(A169805(3*n)), A004164(n)]`
-/

namespace A260906.P15378297352961936392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A169805 (3 * n)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260906.P15378297352961936392

/-!
# A260907: Numbers n such that prime(n) + prime(n+1) + prime(n+2) is not a prime.

The programs for A260907, there is no canonical definition to state claims against.
-/

/-! ## A260907.P13852096064806368514

`comp[A072225(n+1)-1]+1`
-/

namespace A260907.P13852096064806368514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072225 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A260907.P13852096064806368514

/-! ## A260907.P2232259267967166731

`A000720(A174742(n+1))`
-/

namespace A260907.P2232259267967166731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A174742 (n + 1)).toNat

end

end A260907.P2232259267967166731

/-! ## A260907.P8586899835168880330

`lt[2, A000005(A034961(n+1))]+1`
-/

namespace A260907.P8586899835168880330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A034961 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A260907.P8586899835168880330

/-! ## A260907.P871845483435999442

`A003963(p?[A174742(n+1)])`
-/

namespace A260907.P871845483435999442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A260907.P871845483435999442

/-! ## A260907.P3317984097659041108

`A026233(p?[A174742(n+1)])`
-/

namespace A260907.P3317984097659041108
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A260907.P3317984097659041108

/-! ## A260907.P2610592312161757218

`A026238(p?[A174742(n+1)])`
-/

namespace A260907.P2610592312161757218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A260907.P2610592312161757218

/-! ## A260907.P3063411503203513161

`A049084(p?[A174742(n+1)])`
-/

namespace A260907.P3063411503203513161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174742 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A260907.P3063411503203513161

/-!
# A260909: Denominator of 1/det(M) where M is the n X n matrix with M[i,j] = 1/gcd(i,j).

The programs for A260909, there is no canonical definition to state claims against.
-/

/-! ## A260909.P8961355925530393711

`2^A129308(A014395(n))`
-/

namespace A260909.P8961355925530393711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A129308 (A014395 n).toNat : ℤ)

end

end A260909.P8961355925530393711

/-! ## A260909.P7507812616966299958

`A050361((n+2)^A054911(n))`
-/

namespace A260909.P7507812616966299958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (SequenceMachineLib.roundAway ((n + 2 : ℚ) ^ (A054911 n : ℤ))).toNat

end

end A260909.P7507812616966299958

/-! ## A260909.P4321090331687978494

`A050361((n+2)^A087897(n))`
-/

namespace A260909.P4321090331687978494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (SequenceMachineLib.roundAway ((n + 2 : ℚ) ^ (A087897 n : ℤ))).toNat

end

end A260909.P4321090331687978494

/-! ## A260909.P16393344396479845650

`ceil(A182105(p?[A098527(n)])/2)`
-/

namespace A260909.P16393344396479845650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098527 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A182105 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 2⌉

end

end A260909.P16393344396479845650

/-! ## A260909.P6121780709911913904

`ceil(2^floor(n/2)/A165825(A076209(n+1)))`
-/

namespace A260909.P6121780709911913904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) / (A165825 (A076209 (n + 1)).toNat : ℚ)⌉

end

end A260909.P6121780709911913904

/-!
# A260910: Triangle read by rows: Fresenius numbers of n and A077664(n,k), k = 1..n.

The programs for A260910, there is no canonical definition to state claims against.
-/

/-! ## A260910.P12151796608406962677

`(A077664(n+1)-1)*A003056(n)-1`
-/

namespace A260910.P12151796608406962677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A077664 (n + 1) - 1) * A003056 n - 1

end

end A260910.P12151796608406962677

/-!
# A260911: Least positive integer k < prime(n) such that there are 0 < i < j < k for which i^2 + j^2 = k^2 and i,j,k are all quadratic residues modulo prime(n), or 0 if no such k exists.

The programs for A260911, there is no canonical definition to state claims against.
-/

/-! ## A260911.P2802025185262243557

`A010059(A078678(n))*A014192(n+1)`
-/

namespace A260911.P2802025185262243557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010059 (A078678 n).toNat * A014192 (n + 1)

end

end A260911.P2802025185262243557

/-! ## A260911.P8803396436072158561

`C(A014192(n+1), A058603(A051715(n)))`
-/

namespace A260911.P8803396436072158561
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A014192 (n + 1)).toNat (A058603 (A051715 n).toNat).toNat

end

end A260911.P8803396436072158561

/-! ## A260911.P3501928723543826034

`A014192(n+1)*A056170(A087110(n+1))`
-/

namespace A260911.P3501928723543826034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1) * A056170 (A087110 (n + 1)).toNat

end

end A260911.P3501928723543826034

/-! ## A260911.P9815976313502542655

`A014192(n+1)*A341027(A029984(n+2))`
-/

namespace A260911.P9815976313502542655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014192 (n + 1) * A341027 ((A029984 (n + 2)).toNat + 220)

end

end A260911.P9815976313502542655

/-!
# A260912: Sum over the genera g of the number of immersions of an unoriented circle with n crossings in an unoriented surface of genus g.

The programs for A260912, there is no canonical definition to state claims against.
-/

/-! ## A260912.P2364196289671280212

`A169782(C(∑[n+1], n))`
-/

namespace A260912.P2364196289671280212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169782 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) n)

end

end A260912.P2364196289671280212

/-!
# A260913: Coefficients in asymptotic expansion of sequence A059439.

The programs for A260913, there is no canonical definition to state claims against.
-/

/-! ## A260913.P9056345994132619849

`A260503(n+1)-A261214(n+1)`
-/

namespace A260913.P9056345994132619849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260503 (n + 1) - A261214 (n + 1)

end

end A260913.P9056345994132619849

/-!
# A260916: Expansion of Product_{k>=1} ((1+x^k)/(1-x^k))^(Fibonacci(k)).

The programs for A260916, there is no canonical definition to state claims against.
-/

/-! ## A260916.P16401161772851240772

`A000079(A032555(n+1))-A098151(n)`
-/

namespace A260916.P16401161772851240772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A032555 (n + 1)).toNat - A098151 n

end

end A260916.P16401161772851240772

/-! ## A260916.P9290071930824566962

`A206427(A034856(n+1))-A098151(n)`
-/

namespace A260916.P9290071930824566962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206427 (A034856 (n + 1)).toNat - A098151 n

end

end A260916.P9290071930824566962

/-! ## A260916.P8171143297935304988

`A206427(A034856(n+1))-A293422(n+1)`
-/

namespace A260916.P8171143297935304988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206427 (A034856 (n + 1)).toNat - A293422 (n + 1)

end

end A260916.P8171143297935304988

/-! ## A260916.P13274601848041028852

`(A118645(n)+1)*A020639((n+1)!)`
-/

namespace A260916.P13274601848041028852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A118645 n + 1) * A020639 (Nat.factorial (n + 1))

end

end A260916.P13274601848041028852

/-!
# A260917: Expansion of 1/(1 - x - x^2 - x^3 + x^6 + x^7).

The programs for A260917, the canonical program `A260917.P16666599542385078603` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260917 has offset 0).

The definition of A260917 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-x-x^2-x^3+x^6+x^7))` (program `A260917.P16666599542385078603`, by `A260917.P16666599542385078603.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A260917.P16666599542385078603

`ogf(1/(1-x-x^2-x^3+x^6+x^7))`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A260917

/-- `ogf(1/(1-x-x^2-x^3+x^6+x^7))` -/
def P16666599542385078603.Spec : Prop :=
  ∀ n, P16666599542385078603.a n = A260917 n

theorem P16666599542385078603.correct : P16666599542385078603.Spec := by
  intro n
  simp only [A260917]

end A260917

/-! ## A260917.P8386250269059786282

`a(n-1)+a(n-2)+a(n-3)-a(n-6)-a(n-7)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=4, a(4)=7, a(5)=13, a(6)=23`
-/

namespace A260917.P8386250269059786282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 4, 7, 13, 23] fun n a =>
  a (n - 1) + a (n - 2) + a (n - 3) - a (n - 6) - a (n - 7)

end

end A260917.P8386250269059786282

namespace A260917

/-- `a(n-1)+a(n-2)+a(n-3)-a(n-6)-a(n-7)` -/
def P8386250269059786282.Spec : Prop :=
  ∀ n, P8386250269059786282.a n = A260917 n

end A260917

/-! ## A260917.P12109628424632519023

`A100196(floor(sqrt(A081671(n))))`
-/

namespace A260917.P12109628424632519023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (Int.sqrt (A081671 n)).toNat

end

end A260917.P12109628424632519023

namespace A260917

/-- `A100196(floor(sqrt(A081671(n))))` -/
def P12109628424632519023.Spec : Prop :=
  ∀ n, P12109628424632519023.a n = A260917 n

end A260917

/-! ## A260917.P5101456004175796092

`A100196(A238437(n)+A238436(n))`
-/

namespace A260917.P5101456004175796092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A238437 n + A238436 n).toNat

end

end A260917.P5101456004175796092

namespace A260917

/-- `A100196(A238437(n)+A238436(n))` -/
def P5101456004175796092.Spec : Prop :=
  ∀ n, P5101456004175796092.a n = A260917 n

end A260917

/-! ## A260917.P17306948638972507985

`A100196(A052921(n)+A000393(n+1))`
-/

namespace A260917.P17306948638972507985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A052921 n + A000393 (n + 1)).toNat

end

end A260917.P17306948638972507985

namespace A260917

/-- `A100196(A052921(n)+A000393(n+1))` -/
def P17306948638972507985.Spec : Prop :=
  ∀ n, P17306948638972507985.a n = A260917 n

end A260917

/-!
# A260918: Number of squares of all sizes in polyominoes obtained by union of two pyramidal figures (A092498) with intersection equals A002623.

The programs for A260918, the canonical program `A260918.P2332917340007960814` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260918 has offset 0).

The definition of A260918 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260918.P2332917340007960814

`∑[∑[∑[gcd(3, n)+a(n-1)%2]]]` with `a(0)=0`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A260918

/-- `∑[∑[∑[gcd(3, n)+a(n-1)%2]]]` -/
def P2332917340007960814.Spec : Prop :=
  ∀ n, (P2332917340007960814.a n : ℤ) = A260918 n

theorem P2332917340007960814.correct : P2332917340007960814.Spec := by
  intro n
  simp only [A260918]

end A260918

/-! ## A260918.P1520029608144095768

`∑[n²+A036410(n)-1]`
-/

namespace A260918.P1520029608144095768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + (A036410 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260918.P1520029608144095768

namespace A260918

/-- `∑[n²+A036410(n)-1]` -/
def P1520029608144095768.Spec : Prop :=
  ∀ n, P1520029608144095768.a n = A260918 n

end A260918

/-! ## A260918.P9776213730928176958

`∑[∑[A047464(n+1)]-A002620(n+1)]`
-/

namespace A260918.P9776213730928176958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047464 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A002620 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260918.P9776213730928176958

namespace A260918

/-- `∑[∑[A047464(n+1)]-A002620(n+1)]` -/
def P9776213730928176958.Spec : Prop :=
  ∀ n, P9776213730928176958.a n = A260918 n

end A260918

/-! ## A260918.P16444179417948145727

`∑[∑[A047623(n+1)-A008619(n+1)]]`
-/

namespace A260918.P16444179417948145727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047623 (n + 1) - A008619 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260918.P16444179417948145727

namespace A260918

/-- `∑[∑[A047623(n+1)-A008619(n+1)]]` -/
def P16444179417948145727.Spec : Prop :=
  ∀ n, P16444179417948145727.a n = A260918 n

end A260918

/-! ## A260918.P18118931525882455669

`∑[A230059(n+2)+n²]`
-/

namespace A260918.P18118931525882455669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230059 (n + 2) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260918.P18118931525882455669

namespace A260918

/-- `∑[A230059(n+2)+n²]` -/
def P18118931525882455669.Spec : Prop :=
  ∀ n, P18118931525882455669.a n = A260918 n

end A260918

/-! ## A260918.P6342346768406053066

`∑[A212901(n)]-A212247(n+1)`
-/

namespace A260918.P6342346768406053066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212901 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A212247 (n + 1)

end

end A260918.P6342346768406053066

namespace A260918

/-- `∑[A212901(n)]-A212247(n+1)` -/
def P6342346768406053066.Spec : Prop :=
  ∀ n, P6342346768406053066.a n = A260918 n

end A260918

/-! ## A260918.P16080292169283808690

`A212980(n+1)-A061866(n+1)`
-/

namespace A260918.P16080292169283808690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212980 (n + 1) - A061866 (n + 1)

end

end A260918.P16080292169283808690

namespace A260918

/-- `A212980(n+1)-A061866(n+1)` -/
def P16080292169283808690.Spec : Prop :=
  ∀ n, P16080292169283808690.a n = A260918 n

end A260918

/-! ## A260918.P1839188334999900390

`A258440(n+1)-(A045943(n+1)+A002620(n+1))`
-/

namespace A260918.P1839188334999900390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258440 (n + 1) - (A045943 (n + 1) + A002620 (n + 1))

end

end A260918.P1839188334999900390

namespace A260918

/-- `A258440(n+1)-(A045943(n+1)+A002620(n+1))` -/
def P1839188334999900390.Spec : Prop :=
  ∀ n, P1839188334999900390.a n = A260918 n

end A260918

/-! ## A260918.P17832106451321968989

`2*A181120(2*n+1)-A173196(n+1)`
-/

namespace A260918.P17832106451321968989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A181120 (2 * n + 1) - A173196 (n + 1)

end

end A260918.P17832106451321968989

namespace A260918

/-- `2*A181120(2*n+1)-A173196(n+1)` -/
def P17832106451321968989.Spec : Prop :=
  ∀ n, P17832106451321968989.a n = A260918 n

end A260918

/-! ## A260918.P12255651367368540916

`∑[∑[A004526(A047354(n+1))+n]]`
-/

namespace A260918.P12255651367368540916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A047354 (n + 1)).toNat + (n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260918.P12255651367368540916

namespace A260918

/-- `∑[∑[A004526(A047354(n+1))+n]]` -/
def P12255651367368540916.Spec : Prop :=
  ∀ n, P12255651367368540916.a n = A260918 n

end A260918

/-!
# A260919: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00010101 00101011 or 01010101.

The programs for A260919, there is no canonical definition to state claims against.
-/

/-! ## A260919.P10669280829116651668

`A260927(∑[4*n]+1)`
-/

namespace A260919.P10669280829116651668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260919.P10669280829116651668

/-! ## A260919.P8139953532184259700

`A260927(A001844(n))+char[24]`
-/

namespace A260919.P8139953532184259700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A260919.P8139953532184259700

/-! ## A260919.P3020579242084502457

`record[A003982(n)*A260927(n+1)]`
-/

namespace A260919.P3020579242084502457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A260927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260919.P3020579242084502457

/-! ## A260919.P15972999624086722941

`record[gcd(A049581(n), A260927(n+1))]`
-/

namespace A260919.P15972999624086722941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049581 n) (A260927 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260919.P15972999624086722941

/-! ## A260919.P23804983054157484

`record[A203994(n+1)*A260927(n+1)]`
-/

namespace A260919.P23804983054157484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203994 (n + 1) * A260927 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260919.P23804983054157484

/-!
# A260920: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00010101 00101011 or 01010101.

The programs for A260920, there is no canonical definition to state claims against.
-/

/-! ## A260920.P894762368539252150

`A260927(∑[n]+1)`
-/

namespace A260920.P894762368539252150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260920.P894762368539252150

/-! ## A260920.P9073410383325272376

`record[A260927(A056534(n+1))]`
-/

namespace A260920.P9073410383325272376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A056534 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260920.P9073410383325272376

/-! ## A260920.P16894017073136773529

`A260927(A000124(n))*A262681(n)`
-/

namespace A260920.P16894017073136773529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A000124 n).toNat * A262681 n

end

end A260920.P16894017073136773529

/-! ## A260920.P4233669301270085637

`A260927(A000124(n))%A260921(n+1)`
-/

namespace A260920.P4233669301270085637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260927 (A000124 n).toNat) (A260921 (n + 1))

end

end A260920.P4233669301270085637

/-! ## A260920.P13867801284255176032

`xor(A000007(n+1), A260927(A000124(n)))`
-/

namespace A260920.P13867801284255176032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (n + 1)) (A260927 (A000124 n).toNat)

end

end A260920.P13867801284255176032

/-!
# A260921: Number of (n+2) X (2+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00010101 00101011 or 01010101.

The programs for A260921, there is no canonical definition to state claims against.
-/

/-! ## A260921.P6580838639576144987

`A260927(∑[n+1]+2)`
-/

namespace A260921.P6580838639576144987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A260921.P6580838639576144987

/-! ## A260921.P13438693918790917849

`and(1, n)!*A260927(A000096(n+1))`
-/

namespace A260921.P13438693918790917849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Nat.land 1 n) : ℤ) * A260927 (A000096 (n + 1)).toNat

end

end A260921.P13438693918790917849

/-! ## A260921.P6858841666939348343

`A260927(A000096(n+1))*A262681(n)`
-/

namespace A260921.P6858841666939348343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A000096 (n + 1)).toNat * A262681 n

end

end A260921.P6858841666939348343

/-! ## A260921.P7196134276522794752

`A007318(C(2, n))*A260927(A000096(n+1))`
-/

namespace A260921.P7196134276522794752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A260927 (A000096 (n + 1)).toNat

end

end A260921.P7196134276522794752

/-! ## A260921.P4714960216167936823

`A008683(A006094(n+1))*A260927(A000096(n+1))`
-/

namespace A260921.P4714960216167936823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006094 (n + 1)).toNat * A260927 (A000096 (n + 1)).toNat

end

end A260921.P4714960216167936823

/-!
# A260922: Number of (n+2)X(3+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00010101 00101011 or 01010101.

The programs for A260922, there is no canonical definition to state claims against.
-/

/-! ## A260922.P5347032743321772599

`A260927(∑[n+2]+4)`
-/

namespace A260922.P5347032743321772599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A260922.P5347032743321772599

/-! ## A260922.P14373338027339216443

`A260927(A167614(n+1))*A262681(n)`
-/

namespace A260922.P14373338027339216443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A167614 (n + 1)).toNat * A262681 n

end

end A260922.P14373338027339216443

/-! ## A260922.P8871968723238265749

`lcm(A000034(n), A260927(A167614(n+1)))`
-/

namespace A260922.P8871968723238265749
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 n) (A260927 (A167614 (n + 1)).toNat)

end

end A260922.P8871968723238265749

/-! ## A260922.P16229325006002569041

`A260927(A167614(n+1))%A156572(n+1)`
-/

namespace A260922.P16229325006002569041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260927 (A167614 (n + 1)).toNat) (A156572 (n + 1))

end

end A260922.P16229325006002569041

/-! ## A260922.P187555348245934656

`xor(A000007(n+1), A260927(A167614(n+1)))`
-/

namespace A260922.P187555348245934656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000007 (n + 1)) (A260927 (A167614 (n + 1)).toNat)

end

end A260922.P187555348245934656

/-!
# A260923: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00010101 00101011 or 01010101.

The programs for A260923, there is no canonical definition to state claims against.
-/

/-! ## A260923.P15775718022781476698

`A260927(A374004(n+1))`
-/

namespace A260923.P15775718022781476698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A374004 (n + 1)).toNat

end

end A260923.P15775718022781476698

/-! ## A260923.P2662001110045762105

`A260927(A052905(n)+9)`
-/

namespace A260923.P2662001110045762105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A052905 n + 9).toNat

end

end A260923.P2662001110045762105

/-! ## A260923.P9923187213244822606

`A260927(A055999(n)+10)`
-/

namespace A260923.P9923187213244822606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A055999 n + 10).toNat

end

end A260923.P9923187213244822606

/-! ## A260923.P1556909637371857414

`A260927(Δ[A006503(n)]+7)`
-/

namespace A260923.P1556909637371857414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006503 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (f1 (n + 1) - f1 n + 7).toNat

end

end A260923.P1556909637371857414

/-! ## A260923.P17090875668246900630

`A260927(A167614(n+2)+1)`
-/

namespace A260923.P17090875668246900630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A167614 (n + 2) + 1).toNat

end

end A260923.P17090875668246900630

/-!
# A260924: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00010101 00101011 or 01010101.

The programs for A260924, there is no canonical definition to state claims against.
-/

/-! ## A260924.P16161107379909361724

`A260927(A374005(n+1))`
-/

namespace A260924.P16161107379909361724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A374005 (n + 1)).toNat

end

end A260924.P16161107379909361724

/-! ## A260924.P7251918354364678796

`A260927(A167499(n+3))`
-/

namespace A260924.P7251918354364678796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A167499 (n + 3)).toNat

end

end A260924.P7251918354364678796

/-! ## A260924.P5715920069668747441

`A260927(A056000(n)+15)`
-/

namespace A260924.P5715920069668747441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A056000 n + 15).toNat

end

end A260924.P5715920069668747441

/-! ## A260924.P3813116193995427672

`A260927(A000124(n+5)-(n+1))`
-/

namespace A260924.P3813116193995427672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A000124 (n + 5) - (n + 1 : ℤ)).toNat

end

end A260924.P3813116193995427672

/-! ## A260924.P18410840766998115511

`A260927(A052905(n+3)-(2*n+1))`
-/

namespace A260924.P18410840766998115511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A052905 (n + 3) - (2 * n + 1 : ℤ)).toNat

end

end A260924.P18410840766998115511

/-!
# A260925: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00010101 00101011 or 01010101.

The programs for A260925, there is no canonical definition to state claims against.
-/

/-! ## A260925.P17693794631860066120

`A260927(A374007(n+1))`
-/

namespace A260925.P17693794631860066120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A374007 (n + 1)).toNat

end

end A260925.P17693794631860066120

/-! ## A260925.P13907365813335393289

`A260927(A167499(n+4)+1)`
-/

namespace A260925.P13907365813335393289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A167499 (n + 4) + 1).toNat

end

end A260925.P13907365813335393289

/-! ## A260925.P1080221121759746407

`A260927(A000217(n+5)+6)`
-/

namespace A260925.P1080221121759746407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A000217 (n + 5) + 6).toNat

end

end A260925.P1080221121759746407

/-! ## A260925.P5413118028736248009

`A260927(A000124(n+6)-6)`
-/

namespace A260925.P5413118028736248009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A000124 (n + 6) - 6).toNat

end

end A260925.P5413118028736248009

/-! ## A260925.P1806607356947154717

`A260927(A167614(n+5)-8)`
-/

namespace A260925.P1806607356947154717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A167614 (n + 5) - 8).toNat

end

end A260925.P1806607356947154717

/-!
# A260926: Number of (n+2) X (7+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00010101 00101011 or 01010101.

The programs for A260926, there is no canonical definition to state claims against.
-/

/-! ## A260926.P13506600775136964788

`A260927(A374008(n+1))`
-/

namespace A260926.P13506600775136964788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A374008 (n + 1)).toNat

end

end A260926.P13506600775136964788

/-! ## A260926.P12318494750469956371

`A260927(A166136(n+5)+1)`
-/

namespace A260926.P12318494750469956371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A166136 (n + 5) + 1).toNat

end

end A260926.P12318494750469956371

/-! ## A260926.P6969460497014306189

`A260927(A167499(n+5)+2)`
-/

namespace A260926.P6969460497014306189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A167499 (n + 5) + 2).toNat

end

end A260926.P6969460497014306189

/-! ## A260926.P13423409574666786546

`A260927(A000217(n+6)+7)`
-/

namespace A260926.P13423409574666786546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A000217 (n + 6) + 7).toNat

end

end A260926.P13423409574666786546

/-! ## A260926.P9449216537207589276

`A260927(A052905(n+3)+12)`
-/

namespace A260926.P9449216537207589276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260927 (A052905 (n + 3) + 12).toNat

end

end A260926.P9449216537207589276

/-!
# A260930: Differences between the numbers n such that n^2 + 2 is prime.

The programs for A260930, there is no canonical definition to state claims against.
-/

/-! ## A260930.P17511869209607289609

`Δ[A067201(n+1)]`
-/

namespace A260930.P17511869209607289609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260930.P17511869209607289609

/-! ## A260930.P5715049941450343006

`ceil(Δ[sqrt(A056899(n+1))])`
-/

namespace A260930.P5715049941450343006
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056899 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A260930.P5715049941450343006

/-! ## A260930.P15061840817203091656

`A067201(n+2)-A067201(n+1)`
-/

namespace A260930.P15061840817203091656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067201 (n + 2) - A067201 (n + 1)

end

end A260930.P15061840817203091656

/-! ## A260930.P12534774584868837494

`Δ[sqrt(A056899(n+1)-2)*A057427(n)]`
-/

namespace A260930.P12534774584868837494
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056899 (n + 1) - 2 : ℝ) * (A057427 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260930.P12534774584868837494

/-! ## A260930.P809885660314800290

`Δ[sqrt(A056899(n+1)-2)%A002522(n)]`
-/

namespace A260930.P809885660314800290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A056899 (n + 1) - 2 : ℝ))) (A002522 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260930.P809885660314800290

/-! ## A260930.P1548613851334452170

`Δ[eq[2, A300817(n)]]`
-/

namespace A260930.P1548613851334452170
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300817 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A260930.P1548613851334452170

/-! ## A260930.P13542765603922378283

`ceil(Δ[sqrt(p?[n²+2])])`
-/

namespace A260930.P13542765603922378283
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 + 2

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A260930.P13542765603922378283

/-!
# A260931: a(n) = A260930(n)/6 for n > 2.

The programs for A260931, there is no canonical definition to state claims against.
-/

/-! ## A260931.P13095331799362819255

`A260930(n+3)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A260931.P13095331799362819255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260930 (n + 3) : ℚ) / 6

end

end A260931.P13095331799362819255

/-! ## A260931.P15912856637684441265

`Δ[A056900(n)]`
-/

namespace A260931.P15912856637684441265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056900 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260931.P15912856637684441265

/-! ## A260931.P17977313629386150313

`Δ[A091199(n+1)]`
-/

namespace A260931.P17977313629386150313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091199 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260931.P17977313629386150313

/-! ## A260931.P8621185613304996568

`Δ[A232011(n+1)/2]`
-/

namespace A260931.P8621185613304996568
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A232011 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260931.P8621185613304996568

/-! ## A260931.P16947645182991623382

`Δ[A129389(n+1)]/6`
-/

namespace A260931.P16947645182991623382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129389 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / 6

end

end A260931.P16947645182991623382

/-! ## A260931.P8070241113769008100

`Δ[A067201(n+3)/6]`
-/

namespace A260931.P8070241113769008100
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067201 (n + 3) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260931.P8070241113769008100

/-! ## A260931.P6246494797697287033

`Δ[sqrt(A056899(n+3)-2)/6]`
-/

namespace A260931.P6246494797697287033
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A056899 (n + 3) - 2 : ℝ) / 6

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A260931.P6246494797697287033

/-! ## A260931.P14609105758510495801

`A056900(n+1)-A056900(n)`
-/

namespace A260931.P14609105758510495801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056900 (n + 1) - A056900 n

end

end A260931.P14609105758510495801

/-! ## A260931.P6645335301548559972

`A091199(n+2)-A091199(n+1)`
-/

namespace A260931.P6645335301548559972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091199 (n + 2) - A091199 (n + 1)

end

end A260931.P6645335301548559972

/-!
# A260934: Sum of evil divisors of n. For evil numbers see A001969.

The programs for A260934, the canonical program `A260934.P7552531157136623072` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260934 has offset 1).

The definition of A260934 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A227873, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A260934.P7552531157136623072

`A000203(n+1)-A227873(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A260934

/-- `A000203(n+1)-A227873(n+1)` -/
def P7552531157136623072.Spec : Prop :=
  ∀ n, P7552531157136623072.a n = A260934 (n + 1)

theorem P7552531157136623072.correct : P7552531157136623072.Spec := by
  intro n
  simp only [A260934, Nat.add_sub_cancel]

end A260934

/-! ## A260934.P3879259129252208112

`∑{d}[n+1, #*A010059(#)]`
-/

namespace A260934.P3879259129252208112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A010059 d

end

end A260934.P3879259129252208112

namespace A260934

/-- `∑{d}[n+1, #*A010059(#)]` -/
def P3879259129252208112.Spec : Prop :=
  ∀ n, P3879259129252208112.a n = A260934 (n + 1)

end A260934

/-! ## A260934.P6461348614475178113

`∑{d}[n+1, #*A092436(#)]`
-/

namespace A260934.P6461348614475178113
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A092436 d

end

end A260934.P6461348614475178113

namespace A260934

/-- `∑{d}[n+1, #*A092436(#)]` -/
def P6461348614475178113.Spec : Prop :=
  ∀ n, P6461348614475178113.a n = A260934 (n + 1)

end A260934

/-! ## A260934.P1994068640579216590

`∑{d}[n+1, #*and(1, A001285(#))]`
-/

namespace A260934.P1994068640579216590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * Int.land 1 (A001285 d)

end

end A260934.P1994068640579216590

namespace A260934

/-- `∑{d}[n+1, #*and(1, A001285(#))]` -/
def P1994068640579216590.Spec : Prop :=
  ∀ n, P1994068640579216590.a n = A260934 (n + 1)

end A260934

/-! ## A260934.P2492391989532493532

`∑{d}[n+1, #-#*A010060(#)]`
-/

namespace A260934.P2492391989532493532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - (d : ℤ) * A010060 d)

end

end A260934.P2492391989532493532

namespace A260934

/-- `∑{d}[n+1, #-#*A010060(#)]` -/
def P2492391989532493532.Spec : Prop :=
  ∀ n, P2492391989532493532.a n = A260934 (n + 1)

end A260934

/-! ## A260934.P11202910323770569015

`Δ[A160664(n)]-A227873(n+1)`
-/

namespace A260934.P11202910323770569015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A227873 (n + 1)

end

end A260934.P11202910323770569015

namespace A260934

/-- `Δ[A160664(n)]-A227873(n+1)` -/
def P11202910323770569015.Spec : Prop :=
  ∀ n, P11202910323770569015.a n = A260934 (n + 1)

end A260934

/-! ## A260934.P12194503547937454690

`∑{d}[n+1, A102391(#)]`
-/

namespace A260934.P12194503547937454690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A102391 d

end

end A260934.P12194503547937454690

namespace A260934

/-- `∑{d}[n+1, A102391(#)]` -/
def P12194503547937454690.Spec : Prop :=
  ∀ n, P12194503547937454690.a n = A260934 (n + 1)

end A260934

/-!
# A260935: Smallest k such that A261029(k) = n.

The programs for A260935, there is no canonical definition to state claims against.
-/

/-! ## A260935.P7782605975547532128

`A344834(A121009(floor(n/2)))+floor((n*(n+2))²/8)`
-/

namespace A260935.P7782605975547532128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344834 (A121009 ⌊(n : ℚ) / 2⌋.toNat).toNat + ⌊((n * (n + 2)) ^ 2 : ℚ) / 8⌋

end

end A260935.P7782605975547532128

/-!
# A260936: Numbers m such that A260933(m) = m.

The programs for A260936, there is no canonical definition to state claims against.
-/

/-! ## A260936.P8290688368960099426

`eq[n+1, A260933(n+1)]+1`
-/

namespace A260936.P8290688368960099426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260933 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A260936.P8290688368960099426

/-! ## A260936.P13896798268622283821

`eq[n, A260933(A000038(n)+n)]`
-/

namespace A260936.P13896798268622283821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260933 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260936.P13896798268622283821

/-! ## A260936.P9464450343277466533

`A065475(eq[n+1, A260933(n+1)])`
-/

namespace A260936.P9464450343277466533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260933 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260936.P9464450343277466533

/-! ## A260936.P8638216097077231219

`eq[n, A260933(A123108(2*n))]`
-/

namespace A260936.P8638216097077231219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260933 (A123108 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260936.P8638216097077231219

/-! ## A260936.P1025091956989458576

`eq[n, A260933(A233583(n+1))]`
-/

namespace A260936.P1025091956989458576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260933 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260936.P1025091956989458576

/-!
# A260937: Indices i of pentagonal numbers P(i) such that (P(i)-1)/2 is also a pentagonal number.

The programs for A260937, there is no canonical definition to state claims against.
-/

/-! ## A260937.P16792631211723770545

`A253821(n+1)-A174685(n+1)`
-/

namespace A260937.P16792631211723770545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253821 (n + 1) - A174685 (n + 1)

end

end A260937.P16792631211723770545

/-! ## A260937.P8461950697798276175

`A253822(n+1)-2*A174685(n+1)`
-/

namespace A260937.P8461950697798276175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253822 (n + 1) - 2 * A174685 (n + 1)

end

end A260937.P8461950697798276175

/-! ## A260937.P15978061377992472596

`2*A253821(n+1)-A253822(n+1)`
-/

namespace A260937.P15978061377992472596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A253821 (n + 1) - A253822 (n + 1)

end

end A260937.P15978061377992472596

/-! ## A260937.P9024965066441654822

`A253821(A000027(n+1))-(A253822(n+1)-A253821(n+1))`
-/

namespace A260937.P9024965066441654822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253821 (A000027 (n + 1)).toNat - (A253822 (n + 1) - A253821 (n + 1))

end

end A260937.P9024965066441654822

/-! ## A260937.P5464001554539755372

`ceil(sqrt(A253823(n+1)/3))-A174685(n+1)`
-/

namespace A260937.P5464001554539755372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((A253823 (n + 1) : ℚ) / 3 : ℝ)⌉ - A174685 (n + 1)

end

end A260937.P5464001554539755372

/-!
# A260938: Number of balanced ternary words of length n.

The programs for A260938, there is no canonical definition to state claims against.
-/

/-! ## A260938.P4690107532055228290

`∑[eq[2, A257010(n+3)]]`
-/

namespace A260938.P4690107532055228290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257010 (n + 3)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260938.P4690107532055228290

/-! ## A260938.P2605098026418826957

`A187108(A018000(n))`
-/

namespace A260938.P2605098026418826957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187108 (A018000 n).toNat

end

end A260938.P2605098026418826957

/-!
# A260941: Expansion of phi(-x) * phi(x^6) / chi(-x^3) in powers of x where phi(), chi() are Ramanujan theta functions.

The programs for A260941, the canonical program `A260941.P3409295880907561442` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260941 has offset 0).

The definition of A260941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260941.P3409295880907561442

`A112606(n)*A131713(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A260941

/-- `A112606(n)*A131713(n)` -/
def P3409295880907561442.Spec : Prop :=
  ∀ n, P3409295880907561442.a n = A260941 n

theorem P3409295880907561442.correct : P3409295880907561442.Spec := by
  intro n
  simp only [A260941]

end A260941

/-! ## A260941.P17618035293669573885

`A253243(2*n)`
-/

namespace A260941.P17618035293669573885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253243 (2 * n)

end

end A260941.P17618035293669573885

namespace A260941

/-- `A253243(2*n)` -/
def P17618035293669573885.Spec : Prop :=
  ∀ n, P17618035293669573885.a n = A260941 n

end A260941

/-! ## A260941.P6315545229641920035

`A253243(n+n)%A276932(n)`
-/

namespace A260941.P6315545229641920035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A253243 (n + n)) (A276932 n)

end

end A260941.P6315545229641920035

namespace A260941

/-- `A253243(n+n)%A276932(n)` -/
def P6315545229641920035.Spec : Prop :=
  ∀ n, P6315545229641920035.a n = A260941 n

end A260941

/-! ## A260941.P1570491876465452815

`A061347(n+2)*A112604(2*n)`
-/

namespace A260941.P1570491876465452815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061347 (n + 2) * A112604 (2 * n)

end

end A260941.P1570491876465452815

namespace A260941

/-- `A061347(n+2)*A112604(2*n)` -/
def P1570491876465452815.Spec : Prop :=
  ∀ n, P1570491876465452815.a n = A260941 n

end A260941

/-! ## A260941.P7947736683288206589

`A132419(2*n)*A262774(2*n)`
-/

namespace A260941.P7947736683288206589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132419 (2 * n) * A262774 (2 * n)

end

end A260941.P7947736683288206589

namespace A260941

/-- `A132419(2*n)*A262774(2*n)` -/
def P7947736683288206589.Spec : Prop :=
  ∀ n, P7947736683288206589.a n = A260941 n

end A260941

/-! ## A260941.P12602940880507797476

`(A057079(2*n+1)-1)*A112604(2*n)`
-/

namespace A260941.P12602940880507797476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057079 (2 * n + 1) - 1) * A112604 (2 * n)

end

end A260941.P12602940880507797476

namespace A260941

/-- `(A057079(2*n+1)-1)*A112604(2*n)` -/
def P12602940880507797476.Spec : Prop :=
  ∀ n, P12602940880507797476.a n = A260941 n

end A260941

/-! ## A260941.P14538473482124764930

`(A057079(2*n+1)-1)*A262774(2*n)`
-/

namespace A260941.P14538473482124764930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057079 (2 * n + 1) - 1) * A262774 (2 * n)

end

end A260941.P14538473482124764930

namespace A260941

/-- `(A057079(2*n+1)-1)*A262774(2*n)` -/
def P14538473482124764930.Spec : Prop :=
  ∀ n, P14538473482124764930.a n = A260941 n

end A260941

/-! ## A260941.P9991814180570812151

`A123530(4*n)`
-/

namespace A260941.P9991814180570812151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123530 (4 * n)

end

end A260941.P9991814180570812151

namespace A260941

/-- `A123530(4*n)` -/
def P9991814180570812151.Spec : Prop :=
  ∀ n, P9991814180570812151.a n = A260941 n

end A260941

/-! ## A260941.P17251138276426785048

`A097109(8*n+1)`
-/

namespace A260941.P17251138276426785048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097109 (8 * n + 1)

end

end A260941.P17251138276426785048

namespace A260941

/-- `A097109(8*n+1)` -/
def P17251138276426785048.Spec : Prop :=
  ∀ n, P17251138276426785048.a n = A260941 n

end A260941

/-! ## A260941.P14550949472114419787

`A112848(8*n+1)`
-/

namespace A260941.P14550949472114419787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112848 (8 * n + 1)

end

end A260941.P14550949472114419787

namespace A260941

/-- `A112848(8*n+1)` -/
def P14550949472114419787.Spec : Prop :=
  ∀ n, P14550949472114419787.a n = A260941 n

end A260941

/-! ## A260941.P5227714489432455449

`A260945(8*n+1)`
-/

namespace A260941.P5227714489432455449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260945 (8 * n + 1)

end

end A260941.P5227714489432455449

namespace A260941

/-- `A260945(8*n+1)` -/
def P5227714489432455449.Spec : Prop :=
  ∀ n, P5227714489432455449.a n = A260941 n

end A260941

/-! ## A260941.P1459396667470194243

`A123477(8*n+1)`
-/

namespace A260941.P1459396667470194243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123477 (8 * n + 1)

end

end A260941.P1459396667470194243

namespace A260941

/-- `A123477(8*n+1)` -/
def P1459396667470194243.Spec : Prop :=
  ∀ n, P1459396667470194243.a n = A260941 n

end A260941

/-!
# A260942: Expansion of x * phi(-x) * psi(x^12) / chi(-x^3) in powers of x where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A260942, the canonical program `A260942.P8665585250651046300` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260942 has offset 0).

The definition of A260942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260942.P8665585250651046300

`A253243(Δ[n²])/2`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A260942

/-- `A253243(Δ[n²])/2` -/
def P8665585250651046300.Spec : Prop :=
  ∀ n, P8665585250651046300.a n = (A260942 n : ℚ)

end A260942

/-! ## A260942.P13215031131908082828

`A112604(2*n+1)/(A061347(n+1)+1)`
-/

namespace A260942.P13215031131908082828
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112604 (2 * n + 1) : ℚ) / (A061347 (n + 1) + 1 : ℚ)

end

end A260942.P13215031131908082828

namespace A260942

/-- `A112604(2*n+1)/(A061347(n+1)+1)` -/
def P13215031131908082828.Spec : Prop :=
  ∀ n, P13215031131908082828.a n = (A260942 n : ℚ)

end A260942

/-! ## A260942.P14001356704484548336

`A112604(2*n+1)/(A057079(2*n)+1)`
-/

namespace A260942.P14001356704484548336
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112604 (2 * n + 1) : ℚ) / (A057079 (2 * n) + 1 : ℚ)

end

end A260942.P14001356704484548336

namespace A260942

/-- `A112604(2*n+1)/(A057079(2*n)+1)` -/
def P14001356704484548336.Spec : Prop :=
  ∀ n, P14001356704484548336.a n = (A260942 n : ℚ)

end A260942

/-! ## A260942.P5780617393331912135

`A132419(2*n+1)*A262774(2*n+1)/2`
-/

namespace A260942.P5780617393331912135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132419 (2 * n + 1) * A262774 (2 * n + 1) : ℚ) / 2

end

end A260942.P5780617393331912135

namespace A260942

/-- `A132419(2*n+1)*A262774(2*n+1)/2` -/
def P5780617393331912135.Spec : Prop :=
  ∀ n, P5780617393331912135.a n = (A260942 n : ℚ)

end A260942

/-! ## A260942.P1898666695583627201

`A262774(2*n+1)/(A057079(2*n+1)-A057079(2*n))`
-/

namespace A260942.P1898666695583627201
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262774 (2 * n + 1) : ℚ) / (A057079 (2 * n + 1) - A057079 (2 * n) : ℚ)

end

end A260942.P1898666695583627201

namespace A260942

/-- `A262774(2*n+1)/(A057079(2*n+1)-A057079(2*n))` -/
def P1898666695583627201.Spec : Prop :=
  ∀ n, P1898666695583627201.a n = (A260942 n : ℚ)

end A260942

/-! ## A260942.P14834396221992186728

`A123530(4*n+2)/2`
-/

namespace A260942.P14834396221992186728
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123530 (4 * n + 2) : ℚ) / 2

end

end A260942.P14834396221992186728

namespace A260942

/-- `A123530(4*n+2)/2` -/
def P14834396221992186728.Spec : Prop :=
  ∀ n, P14834396221992186728.a n = (A260942 n : ℚ)

end A260942

/-! ## A260942.P17486918200755118388

`A097109(8*n+5)/2`
-/

namespace A260942.P17486918200755118388
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A097109 (8 * n + 5) : ℚ) / 2

end

end A260942.P17486918200755118388

namespace A260942

/-- `A097109(8*n+5)/2` -/
def P17486918200755118388.Spec : Prop :=
  ∀ n, P17486918200755118388.a n = (A260942 n : ℚ)

end A260942

/-! ## A260942.P2470405035872738915

`A112848(A017113(n)+1)/2`
-/

namespace A260942.P2470405035872738915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112848 (A017113 n + 1).toNat : ℚ) / 2

end

end A260942.P2470405035872738915

namespace A260942

/-- `A112848(A017113(n)+1)/2` -/
def P2470405035872738915.Spec : Prop :=
  ∀ n, P2470405035872738915.a n = (A260942 n : ℚ)

end A260942

/-! ## A260942.P12035693126263039152

`A112848(A119413(2*(n+1)))/2`
-/

namespace A260942.P12035693126263039152
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112848 (A119413 (2 * (n + 1))).toNat : ℚ) / 2

end

end A260942.P12035693126263039152

namespace A260942

/-- `A112848(A119413(2*(n+1)))/2` -/
def P12035693126263039152.Spec : Prop :=
  ∀ n, P12035693126263039152.a n = (A260942 n : ℚ)

end A260942

/-!
# A260943: Expansion of psi(-x^2) * chi(x^3) * f(x^6) in powers of x where psi(), chi(), f() are Ramanujan theta functions.

The programs for A260943, the canonical program `A260943.P13799869845502598163` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260943 has offset 0).

The definition of A260943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260943.P2579647132492347844

`A112608(n)/A061347(n+1)`
-/

namespace A260943.P2579647132492347844
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112608 n : ℚ) / (A061347 (n + 1) : ℚ)

end

end A260943.P2579647132492347844

namespace A260943

/-- `A112608(n)/A061347(n+1)` -/
def P2579647132492347844.Spec : Prop :=
  ∀ n, P2579647132492347844.a n = (A260943 n : ℚ)

end A260943

/-! ## A260943.P13799869845502598163

`A246838(2*n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A260943

/-- `A246838(2*n)` -/
def P13799869845502598163.Spec : Prop :=
  ∀ n, P13799869845502598163.a n = A260943 n

theorem P13799869845502598163.correct : P13799869845502598163.Spec := by
  intro n
  simp only [A260943]

end A260943

/-! ## A260943.P8508936639582244242

`A112605(2*n)/A131713(n+2)`
-/

namespace A260943.P8508936639582244242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112605 (2 * n) : ℚ) / (A131713 (n + 2) : ℚ)

end

end A260943.P8508936639582244242

namespace A260943

/-- `A112605(2*n)/A131713(n+2)` -/
def P8508936639582244242.Spec : Prop :=
  ∀ n, P8508936639582244242.a n = (A260943 n : ℚ)

end A260943

/-! ## A260943.P3683287717804565837

`A262726(2*n)/A057079(2*n)`
-/

namespace A260943.P3683287717804565837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262726 (2 * n) : ℚ) / (A057079 (2 * n) : ℚ)

end

end A260943.P3683287717804565837

namespace A260943

/-- `A262726(2*n)/A057079(2*n)` -/
def P3683287717804565837.Spec : Prop :=
  ∀ n, P3683287717804565837.a n = (A260943 n : ℚ)

end A260943

/-! ## A260943.P867267055223052898

`A262726(2*n)/A132954(2*n)`
-/

namespace A260943.P867267055223052898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262726 (2 * n) : ℚ) / (A132954 (2 * n) : ℚ)

end

end A260943.P867267055223052898

namespace A260943

/-- `A262726(2*n)/A132954(2*n)` -/
def P867267055223052898.Spec : Prop :=
  ∀ n, P867267055223052898.a n = (A260943 n : ℚ)

end A260943

/-! ## A260943.P15982266910686011533

`A246838(n+n)%A293728(n+1)`
-/

namespace A260943.P15982266910686011533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A246838 (n + n)) (A293728 (n + 1))

end

end A260943.P15982266910686011533

namespace A260943

/-- `A246838(n+n)%A293728(n+1)` -/
def P15982266910686011533.Spec : Prop :=
  ∀ n, P15982266910686011533.a n = A260943 n

end A260943

/-! ## A260943.P17063875799029383447

`1/A131713(2*n)*A112605(2*n)`
-/

namespace A260943.P17063875799029383447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A131713 (2 * n) : ℚ) * (A112605 (2 * n) : ℚ)

end

end A260943.P17063875799029383447

namespace A260943

/-- `1/A131713(2*n)*A112605(2*n)` -/
def P17063875799029383447.Spec : Prop :=
  ∀ n, P17063875799029383447.a n = (A260943 n : ℚ)

end A260943

/-! ## A260943.P646272206080383762

`A246838(n+n)/A003557(A014963(n+1))`
-/

namespace A260943.P646272206080383762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246838 (n + n) : ℚ) / (A003557 (A014963 (n + 1)).toNat : ℚ)

end

end A260943.P646272206080383762

namespace A260943

/-- `A246838(n+n)/A003557(A014963(n+1))` -/
def P646272206080383762.Spec : Prop :=
  ∀ n, P646272206080383762.a n = (A260943 n : ℚ)

end A260943

/-! ## A260943.P8701088262951171372

`A112605(2*n)/(A117966(2*n+1)-A117966(2*n))`
-/

namespace A260943.P8701088262951171372
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112605 (2 * n) : ℚ) / (A117966 (2 * n + 1) - A117966 (2 * n) : ℚ)

end

end A260943.P8701088262951171372

namespace A260943

/-- `A112605(2*n)/(A117966(2*n+1)-A117966(2*n))` -/
def P8701088262951171372.Spec : Prop :=
  ∀ n, P8701088262951171372.a n = (A260943 n : ℚ)

end A260943

/-! ## A260943.P5005414961163825273

`A112848(A119413(n+1)+2)/2`
-/

namespace A260943.P5005414961163825273
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112848 (A119413 (n + 1) + 2).toNat : ℚ) / 2

end

end A260943.P5005414961163825273

namespace A260943

/-- `A112848(A119413(n+1)+2)/2` -/
def P5005414961163825273.Spec : Prop :=
  ∀ n, P5005414961163825273.a n = (A260943 n : ℚ)

end A260943

/-! ## A260943.P1615064128652858708

`A285229(∑[n+1])+A246838(n+n)`
-/

namespace A260943.P1615064128652858708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285229 (∑ j ∈ Finset.range (n + 1), f1 j) + A246838 (n + n)

end

end A260943.P1615064128652858708

namespace A260943

/-- `A285229(∑[n+1])+A246838(n+n)` -/
def P1615064128652858708.Spec : Prop :=
  ∀ n, P1615064128652858708.a n = A260943 n

end A260943

/-! ## A260943.P13992542681079718056

`A246838(n+n)/A014963(∑[n+1])`
-/

namespace A260943.P13992542681079718056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A246838 (n + n) : ℚ) / (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A260943.P13992542681079718056

namespace A260943

/-- `A246838(n+n)/A014963(∑[n+1])` -/
def P13992542681079718056.Spec : Prop :=
  ∀ n, P13992542681079718056.a n = (A260943 n : ℚ)

end A260943

/-!
# A260944: Expansion of phi(-x^4) * psi(-x^6) / chi(-x^3) in powers of q where phi(), psi(), chi() are Ramanujan theta functions.

The programs for A260944, the canonical program `A260944.P7625123260759502148` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260944 has offset 0).

The definition of A260944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260944.P4129629846964298288

`(-2)^(∑[n]%3)*A112609(n)`
-/

namespace A260944.P4129629846964298288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-2) ^ ((∑ j ∈ Finset.range (n + 1), f1 j) % 3) * A112609 n

end

end A260944.P4129629846964298288

namespace A260944

/-- `(-2)^(∑[n]%3)*A112609(n)` -/
def P4129629846964298288.Spec : Prop :=
  ∀ n, P4129629846964298288.a n = A260944 n

end A260944

/-! ## A260944.P7625123260759502148

`A112609(n)*A131713(n)`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A260944

/-- `A112609(n)*A131713(n)` -/
def P7625123260759502148.Spec : Prop :=
  ∀ n, P7625123260759502148.a n = A260944 n

theorem P7625123260759502148.correct : P7625123260759502148.Spec := by
  intro n
  simp only [A260944]

end A260944

/-! ## A260944.P11858023298014242355

`-A246838(2*n+1)`
-/

namespace A260944.P11858023298014242355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A246838 (2 * n + 1)

end

end A260944.P11858023298014242355

namespace A260944

/-- `-A246838(2*n+1)` -/
def P11858023298014242355.Spec : Prop :=
  ∀ n, P11858023298014242355.a n = A260944 n

end A260944

/-! ## A260944.P9293960834760695488

`A000007(n+1)-A246838(2*n+1)`
-/

namespace A260944.P9293960834760695488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A246838 (2 * n + 1)

end

end A260944.P9293960834760695488

namespace A260944

/-- `A000007(n+1)-A246838(2*n+1)` -/
def P9293960834760695488.Spec : Prop :=
  ∀ n, P9293960834760695488.a n = A260944 n

end A260944

/-! ## A260944.P13931976560337387740

`(A016232(n+1)-1)*A246838(2*n+1)`
-/

namespace A260944.P13931976560337387740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A016232 (n + 1) - 1) * A246838 (2 * n + 1)

end

end A260944.P13931976560337387740

namespace A260944

/-- `(A016232(n+1)-1)*A246838(2*n+1)` -/
def P13931976560337387740.Spec : Prop :=
  ∀ n, P13931976560337387740.a n = A260944 n

end A260944

/-! ## A260944.P7291150629313725516

`(A131713(n+2)-2)*A246838(2*n+1)`
-/

namespace A260944.P7291150629313725516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A131713 (n + 2) - 2) * A246838 (2 * n + 1)

end

end A260944.P7291150629313725516

namespace A260944

/-- `(A131713(n+2)-2)*A246838(2*n+1)` -/
def P7291150629313725516.Spec : Prop :=
  ∀ n, P7291150629313725516.a n = A260944 n

end A260944

/-! ## A260944.P1831641543945667605

`(A057079(2*n)-2)*A246838(2*n+1)`
-/

namespace A260944.P1831641543945667605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A057079 (2 * n) - 2) * A246838 (2 * n + 1)

end

end A260944.P1831641543945667605

namespace A260944

/-- `(A057079(2*n)-2)*A246838(2*n+1)` -/
def P1831641543945667605.Spec : Prop :=
  ∀ n, P1831641543945667605.a n = A260944 n

end A260944

/-! ## A260944.P4073086070766840675

`A246838(2*n+1)*A246838(A014963(2*(n+1))²)`
-/

namespace A260944.P4073086070766840675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246838 (2 * n + 1) * A246838 (A014963 (2 * (n + 1)) ^ 2).toNat

end

end A260944.P4073086070766840675

namespace A260944

/-- `A246838(2*n+1)*A246838(A014963(2*(n+1))²)` -/
def P4073086070766840675.Spec : Prop :=
  ∀ n, P4073086070766840675.a n = A260944 n

end A260944

/-! ## A260944.P8222617498959109272

`A123530(4*n+3)/2`
-/

namespace A260944.P8222617498959109272
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123530 (4 * n + 3) : ℚ) / 2

end

end A260944.P8222617498959109272

namespace A260944

/-- `A123530(4*n+3)/2` -/
def P8222617498959109272.Spec : Prop :=
  ∀ n, P8222617498959109272.a n = (A260944 n : ℚ)

end A260944

/-! ## A260944.P12717586558386379342

`A226535(A004771(n))/6`
-/

namespace A260944.P12717586558386379342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226535 (A004771 n).toNat : ℚ) / 6

end

end A260944.P12717586558386379342

namespace A260944

/-- `A226535(A004771(n))/6` -/
def P12717586558386379342.Spec : Prop :=
  ∀ n, P12717586558386379342.a n = (A260944 n : ℚ)

end A260944

/-! ## A260944.P7809087310105846830

`A016232(A038884(n+2))-A246838(2*n+1)`
-/

namespace A260944.P7809087310105846830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016232 (A038884 (n + 2)).toNat - A246838 (2 * n + 1)

end

end A260944.P7809087310105846830

namespace A260944

/-- `A016232(A038884(n+2))-A246838(2*n+1)` -/
def P7809087310105846830.Spec : Prop :=
  ∀ n, P7809087310105846830.a n = A260944 n

end A260944

/-!
# A260945: Expansion of (2*b(q^4) - b(q) - b(q^2)) / 3 in powers of q where b() is a cubic AGM theta function.

The programs for A260945, the canonical program `A260945.P4856476267328599373` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260945 has offset 0).

The definition of A260945 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260945.P4856476267328599373

`A062157(n)*A112848(A028310(n))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A260945

/-- `A062157(n)*A112848(A028310(n))` -/
def P4856476267328599373.Spec : Prop :=
  ∀ n, P4856476267328599373.a n = A260945 n

theorem P4856476267328599373.correct : P4856476267328599373.Spec := by
  intro n
  simp only [A260945]

end A260945

/-! ## A260945.P8922664181759657377

`A112848(A257088(n))-A000007(n)`
-/

namespace A260945.P8922664181759657377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112848 (A257088 n).toNat - A000007 n

end

end A260945.P8922664181759657377

namespace A260945

/-- `A112848(A257088(n))-A000007(n)` -/
def P8922664181759657377.Spec : Prop :=
  ∀ n, P8922664181759657377.a n = A260945 n

end A260945

/-! ## A260945.P1984571583969620180

`A112848(A257088(n))%A005408(n)`
-/

namespace A260945.P1984571583969620180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A112848 (A257088 n).toNat) (A005408 n)

end

end A260945.P1984571583969620180

namespace A260945

/-- `A112848(A257088(n))%A005408(n)` -/
def P1984571583969620180.Spec : Prop :=
  ∀ n, P1984571583969620180.a n = A260945 n

end A260945

/-! ## A260945.P4507051220540970846

`A112848(A257088(n)+A000038(n)²)`
-/

namespace A260945.P4507051220540970846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112848 (A257088 n + A000038 n ^ 2).toNat

end

end A260945.P4507051220540970846

namespace A260945

/-- `A112848(A257088(n)+A000038(n)²)` -/
def P4507051220540970846.Spec : Prop :=
  ∀ n, P4507051220540970846.a n = A260945 n

end A260945

/-! ## A260945.P16046237125945092314

`A112848(or(A000038(n)², A257088(n)))`
-/

namespace A260945.P16046237125945092314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112848 (Int.lor (A000038 n ^ 2) (A257088 n)).toNat

end

end A260945.P16046237125945092314

namespace A260945

/-- `A112848(or(A000038(n)², A257088(n)))` -/
def P16046237125945092314.Spec : Prop :=
  ∀ n, P16046237125945092314.a n = A260945 n

end A260945

/-! ## A260945.P16929217726630145263

`A112848(A257088(n)+2*A000038(n))`
-/

namespace A260945.P16929217726630145263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112848 (A257088 n + 2 * A000038 n).toNat

end

end A260945.P16929217726630145263

namespace A260945

/-- `A112848(A257088(n)+2*A000038(n))` -/
def P16929217726630145263.Spec : Prop :=
  ∀ n, P16929217726630145263.a n = A260945 n

end A260945

/-! ## A260945.P3467674136994370305

`A112848(or(2*A000038(n), A257088(n)))`
-/

namespace A260945.P3467674136994370305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112848 (Int.lor (2 * A000038 n) (A257088 n)).toNat

end

end A260945.P3467674136994370305

namespace A260945

/-- `A112848(or(2*A000038(n), A257088(n)))` -/
def P3467674136994370305.Spec : Prop :=
  ∀ n, P3467674136994370305.a n = A260945 n

end A260945

/-! ## A260945.P17490172473805912307

`A112848(A257088(n)+A000007(n))+A000007(n)`
-/

namespace A260945.P17490172473805912307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112848 (A257088 n + A000007 n).toNat + A000007 n

end

end A260945.P17490172473805912307

namespace A260945

/-- `A112848(A257088(n)+A000007(n))+A000007(n)` -/
def P17490172473805912307.Spec : Prop :=
  ∀ n, P17490172473805912307.a n = A260945 n

end A260945

/-! ## A260945.P9479498884986387811

`A112848(A000038(n)+A257088(n)+A000038(n))`
-/

namespace A260945.P9479498884986387811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112848 (A000038 n + (A257088 n + A000038 n)).toNat

end

end A260945.P9479498884986387811

namespace A260945

/-- `A112848(A000038(n)+A257088(n)+A000038(n))` -/
def P9479498884986387811.Spec : Prop :=
  ∀ n, P9479498884986387811.a n = A260945 n

end A260945

/-! ## A260945.P9528885008565635114

`A100051(n)*A193426(A008486(n))`
-/

namespace A260945.P9528885008565635114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100051 n * A193426 (A008486 n).toNat

end

end A260945.P9528885008565635114

namespace A260945

/-- `A100051(n)*A193426(A008486(n))` -/
def P9528885008565635114.Spec : Prop :=
  ∀ n, P9528885008565635114.a n = A260945 n

end A260945

/-!
# A260948: Coefficients in asymptotic expansion of sequence A259870.

The programs for A260948, there is no canonical definition to state claims against.
-/

/-! ## A260948.P2624529605375292072

`A008619(A007317(n+1)+A001563(n))`
-/

namespace A260948.P2624529605375292072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A007317 (n + 1) + A001563 n).toNat

end

end A260948.P2624529605375292072

/-! ## A260948.P7261801131544668320

`A120750((n-1)!+n*a(n-1))` with `a(0)=1`
-/

namespace A260948.P7261801131544668320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A120750 ((Nat.factorial ((n : ℤ) - 1).toNat : ℤ) + (n : ℤ) * a (n - 1)).toNat

end

end A260948.P7261801131544668320

/-!
# A260949: Coefficients in asymptotic expansion of sequence A259871.

The programs for A260949, there is no canonical definition to state claims against.
-/

/-! ## A260949.P12404958993600432895

`A028903(A152661(n+2))+n!*floor((n/2+1)²)`
-/

namespace A260949.P12404958993600432895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028903 (A152661 (n + 2)).toNat + (Nat.factorial n : ℤ) * ⌊((n : ℚ) / 2 + 1) ^ 2⌋

end

end A260949.P12404958993600432895

/-! ## A260949.P12040885233359549751

`A046699(A103238(n)+A053487(n))`
-/

namespace A260949.P12040885233359549751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046699 (A103238 n + A053487 n).toNat

end

end A260949.P12040885233359549751

/-!
# A260952: Coefficients in asymptotic expansion of the sequences A109253 and A112225.

The programs for A260952, there is no canonical definition to state claims against.
-/

/-! ## A260952.P1744294130286291478

`A000007(n)-A008676(A128196(n))`
-/

namespace A260952.P1744294130286291478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n - A008676 (A128196 n).toNat

end

end A260952.P1744294130286291478

/-! ## A260952.P1104466103171244209

`A247321(n)-A008624(A039618(n))`
-/

namespace A260952.P1104466103171244209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247321 n - A008624 (A039618 n).toNat

end

end A260952.P1104466103171244209

/-!
# A260953: List of numbers of the forms (2^(4m+3)-3)/5 and (2^(12m+4)-3)/13 arranged in increasing order.

The programs for A260953, there is no canonical definition to state claims against.
-/

/-! ## A260953.P16517330438978081551

`A223490(ceil(3/2*9^n)-(2*7^n-1))`
-/

namespace A260953.P16517330438978081551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223490 (⌈(3 : ℚ) / 2 * (9 ^ n : ℚ)⌉ - ((2 * 7 ^ n : ℤ) - 1)).toNat

end

end A260953.P16517330438978081551

/-!
# A260955: Differences of the increasing arithmetic progression a^2+a, b^2+b, c^2+c, where b = 5*a+2, c = 7*a+3 and a >= 0.

The programs for A260955, the canonical program `A260955.P4305537005508239230` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260955 has offset 0).

The definition of A260955 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A260955.P4305537005508239230

`24*n²+24*n+6`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A260955

/-- `24*n²+24*n+6` -/
def P4305537005508239230.Spec : Prop :=
  ∀ n, (P4305537005508239230.a n : ℤ) = A260955 n

theorem P4305537005508239230.correct : P4305537005508239230.Spec := by
  intro n
  simp only [A260955]

end A260955

/-! ## A260955.P8936970301069258461

`6*A016754(n)`
-/

namespace A260955.P8936970301069258461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A016754 n

end

end A260955.P8936970301069258461

namespace A260955

/-- `6*A016754(n)` -/
def P8936970301069258461.Spec : Prop :=
  ∀ n, P8936970301069258461.a n = A260955 n

end A260955

/-! ## A260955.P13606855834621140955

`A032528(4*n+2)`
-/

namespace A260955.P13606855834621140955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032528 (4 * n + 2)

end

end A260955.P13606855834621140955

namespace A260955

/-- `A032528(4*n+2)` -/
def P13606855834621140955.Spec : Prop :=
  ∀ n, P13606855834621140955.a n = A260955 n

end A260955

/-! ## A260955.P9287797186905660847

`record[6*xor(1, n)²]`
-/

namespace A260955.P9287797186905660847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.xor 1 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260955.P9287797186905660847

namespace A260955

/-- `record[6*xor(1, n)²]` -/
def P9287797186905660847.Spec : Prop :=
  ∀ n, (P9287797186905660847.a n : ℤ) = A260955 n

end A260955

/-! ## A260955.P14405611746330073923

`lcm(2, 3*Δ[n²]²)`
-/

namespace A260955.P14405611746330073923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (3 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2)

end

end A260955.P14405611746330073923

namespace A260955

/-- `lcm(2, 3*Δ[n²]²)` -/
def P14405611746330073923.Spec : Prop :=
  ∀ n, (P14405611746330073923.a n : ℤ) = A260955 n

end A260955

/-! ## A260955.P12824329886744365287

`∑[a(n-1)+48]` with `a(0)=6, a(1)=48`
-/

namespace A260955.P12824329886744365287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 48] fun n f1 =>
  f1 (n - 1) + 48

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260955.P12824329886744365287

namespace A260955

/-- `∑[a(n-1)+48]` -/
def P12824329886744365287.Spec : Prop :=
  ∀ n, (P12824329886744365287.a n : ℤ) = A260955 n

end A260955

/-! ## A260955.P12031301692516298770

`6*record[(n^and(1, n))²]`
-/

namespace A260955.P12031301692516298770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n ^ Nat.land 1 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260955.P12031301692516298770

namespace A260955

/-- `6*record[(n^and(1, n))²]` -/
def P12031301692516298770.Spec : Prop :=
  ∀ n, (P12031301692516298770.a n : ℤ) = A260955 n

end A260955

/-! ## A260955.P16274442606283165877

`2*3*or(1, 2*n)²`
-/

namespace A260955.P16274442606283165877
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (3 * Nat.lor 1 (2 * n) ^ 2)

end

end A260955.P16274442606283165877

namespace A260955

/-- `2*3*or(1, 2*n)²` -/
def P16274442606283165877.Spec : Prop :=
  ∀ n, (P16274442606283165877.a n : ℤ) = A260955 n

end A260955

/-! ## A260955.P12923108841036049873

`2*3*xor(1, 2*n)²`
-/

namespace A260955.P12923108841036049873
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (3 * Nat.xor 1 (2 * n) ^ 2)

end

end A260955.P12923108841036049873

namespace A260955

/-- `2*3*xor(1, 2*n)²` -/
def P12923108841036049873.Spec : Prop :=
  ∀ n, (P12923108841036049873.a n : ℤ) = A260955 n

end A260955

/-! ## A260955.P12206900418529541829

`Δ[6*C(2*n+1, 3)]`
-/

namespace A260955.P12206900418529541829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * Nat.choose (2 * n + 1) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A260955.P12206900418529541829

namespace A260955

/-- `Δ[6*C(2*n+1, 3)]` -/
def P12206900418529541829.Spec : Prop :=
  ∀ n, P12206900418529541829.a n = A260955 n

end A260955

/-! ## A260955.P69260935040827535

`xor(1, Δ[(2*n)^3]-1)`
-/

namespace A260955.P69260935040827535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1)

end

end A260955.P69260935040827535

namespace A260955

/-- `xor(1, Δ[(2*n)^3]-1)` -/
def P69260935040827535.Spec : Prop :=
  ∀ n, P69260935040827535.a n = A260955 n

end A260955

/-! ## A260955.P1969426653061303758

`-or(2, Δ[-(2*n)^3])`
-/

namespace A260955.P1969426653061303758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n) ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.lor 2 (f1 (n + 1) - f1 n)

end

end A260955.P1969426653061303758

namespace A260955

/-- `-or(2, Δ[-(2*n)^3])` -/
def P1969426653061303758.Spec : Prop :=
  ∀ n, P1969426653061303758.a n = A260955 n

end A260955

/-! ## A260955.P1712546625871471773

`-xor(2, Δ[-(2*n)^3])`
-/

namespace A260955.P1712546625871471773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n) ^ 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 2 (f1 (n + 1) - f1 n)

end

end A260955.P1712546625871471773

namespace A260955

/-- `-xor(2, Δ[-(2*n)^3])` -/
def P1712546625871471773.Spec : Prop :=
  ∀ n, P1712546625871471773.a n = A260955 n

end A260955

/-! ## A260955.P9896669165850102110

`6*(1-∑[a(n-1)-8])` with `a(0)=0`
-/

namespace A260955.P9896669165850102110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (1 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A260955.P9896669165850102110

namespace A260955

/-- `6*(1-∑[a(n-1)-8])` -/
def P9896669165850102110.Spec : Prop :=
  ∀ n, P9896669165850102110.a n = A260955 n

end A260955

/-! ## A260955.P10270586560531940451

`record[3*(n+1)*2*xor(1, n)]`
-/

namespace A260955.P10270586560531940451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * ((n + 1) * (2 * Nat.xor 1 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260955.P10270586560531940451

namespace A260955

/-- `record[3*(n+1)*2*xor(1, n)]` -/
def P10270586560531940451.Spec : Prop :=
  ∀ n, (P10270586560531940451.a n : ℤ) = A260955 n

end A260955

/-! ## A260955.P11710453026538274577

`floor(a(n-1)+6*8*n)` with `a(0)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A260955.P11710453026538274577
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6] fun n a =>
  a (n - 1) + 6 * (8 * n)

end

end A260955.P11710453026538274577

namespace A260955

/-- `floor(a(n-1)+6*8*n)` -/
def P11710453026538274577.Spec : Prop :=
  ∀ n, (P11710453026538274577.a n : ℤ) = A260955 n

theorem P11710453026538274577.correct : P11710453026538274577.Spec := by
  intro n
  induction n with
  | zero => simp [A260955, A260955.P11710453026538274577.a, A260955.P4305537005508239230.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A260955, Nat.add_sub_cancel, A260955.P11710453026538274577.a, A260955.P4305537005508239230.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A260955

/-! ## A260955.P6718069970611637095

`∏{p}[-a(n-1), #*(2*n+1)]` with `a(0)=6`
-/

namespace A260955.P6718069970611637095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p * (2 * n + 1)

end

end A260955.P6718069970611637095

namespace A260955

/-- `∏{p}[-a(n-1), #*(2*n+1)]` -/
def P6718069970611637095.Spec : Prop :=
  ∀ n, (P6718069970611637095.a n : ℤ) = A260955 n

end A260955

/-! ## A260955.P8860133891418666644

`floor((2*n+1)/acot(6*(2*n+1)))`
-/

namespace A260955.P8860133891418666644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℝ) / SequenceMachineLib.acot (6 * (2 * n + 1) : ℝ)⌋

end

end A260955.P8860133891418666644

namespace A260955

/-- `floor((2*n+1)/acot(6*(2*n+1)))` -/
def P8860133891418666644.Spec : Prop :=
  ∀ n, P8860133891418666644.a n = A260955 n

end A260955

/-! ## A260955.P12576758923331829549

`round((2*n+1)/acot(6*(2*n+1)))`
-/

namespace A260955.P12576758923331829549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n + 1 : ℝ) / SequenceMachineLib.acot (6 * (2 * n + 1) : ℝ))

end

end A260955.P12576758923331829549

namespace A260955

/-- `round((2*n+1)/acot(6*(2*n+1)))` -/
def P12576758923331829549.Spec : Prop :=
  ∀ n, P12576758923331829549.a n = A260955 n

end A260955

/-! ## A260955.P6142477040034682784

`A017594(n)/6`
-/

namespace A260955.P6142477040034682784
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017594 n : ℚ) / 6

end

end A260955.P6142477040034682784

namespace A260955

/-- `A017594(n)/6` -/
def P6142477040034682784.Spec : Prop :=
  ∀ n, P6142477040034682784.a n = (A260955 n : ℚ)

end A260955

/-!
# A260958: Expansion of (a(q) - 3*a(q^2) + 3*a(q^3) - 4*a(q^4) + 3*a(q^6)) / 6 in powers of q where a() is a cubic AGM theta function.

The programs for A260958, there is no canonical definition to state claims against.
-/

/-! ## A260958.P1652951187001276445

`A113973(n)/A132954(n)-A113973(n)`
-/

namespace A260958.P1652951187001276445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113973 n : ℚ) / (A132954 n : ℚ) - (A113973 n : ℚ)

end

end A260958.P1652951187001276445

/-!
# A260963: Numbers k such that gcd(sigma(k), k*(k+1)/2 - sigma(k)) = 1, where sigma(k) is sum of positive divisors of k.

The programs for A260963, the canonical program `A260963.P9935285251690812100` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A260963 has offset 1).

The definition of A260963 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1368 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A260963.P9935285251690812100

`eq[1, A129514(n+1)]+1`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A260963

/-- `eq[1, A129514(n+1)]+1` -/
def P9935285251690812100.Spec : Prop :=
  ∀ n, (P9935285251690812100.a n : ℤ) = A260963 (n + 1)

theorem P9935285251690812100.correct : P9935285251690812100.Spec := by
  intro n
  simp only [A260963, Nat.add_sub_cancel]

end A260963

/-! ## A260963.P12398435656183062450

`A117571(eq[1, A129514(n+1)])`
-/

namespace A260963.P12398435656183062450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129514 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A260963.P12398435656183062450

namespace A260963

/-- `A117571(eq[1, A129514(n+1)])` -/
def P12398435656183062450.Spec : Prop :=
  ∀ n, P12398435656183062450.a n = A260963 (n + 1)

end A260963

/-! ## A260963.P14053866678451690213

`eq[1, A129514(A000038(n)+n)]`
-/

namespace A260963.P14053866678451690213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129514 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260963.P14053866678451690213

namespace A260963

/-- `eq[1, A129514(A000038(n)+n)]` -/
def P14053866678451690213.Spec : Prop :=
  ∀ n, (P14053866678451690213.a n : ℤ) = A260963 (n + 1)

end A260963

/-! ## A260963.P8639046960936846947

`eq[1, gcd(A000203(n+1), A024816(n+1))]+1`
-/

namespace A260963.P8639046960936846947
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A024816 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A260963.P8639046960936846947

namespace A260963

/-- `eq[1, gcd(A000203(n+1), A024816(n+1))]+1` -/
def P8639046960936846947.Spec : Prop :=
  ∀ n, (P8639046960936846947.a n : ℤ) = A260963 (n + 1)

end A260963

/-! ## A260963.P5913394035639455440

`eq[1, gcd(∑[n], ∑{d}[n, #])]`
-/

namespace A260963.P5913394035639455440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f3 j) (∑ d ∈ Nat.divisors (f4 n), d)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260963.P5913394035639455440

namespace A260963

/-- `eq[1, gcd(∑[n], ∑{d}[n, #])]` -/
def P5913394035639455440.Spec : Prop :=
  ∀ n, (P5913394035639455440.a n : ℤ) = A260963 (n + 1)

end A260963

/-!
# A260965: Smallest number r>=3 such that for k>=r the number k - 3 + prime(n) can be represented in the form x_1*...*x_k + x_1 + ... + x_k, where 1 <= x_1 <= ... <= x_k, or a(n)=0 if there is no such r.

The programs for A260965, there is no canonical definition to state claims against.
-/

/-! ## A260965.P12034548894664122188

`val(record[A258057(A191118(n+1))], 2)`
-/

namespace A260965.P12034548894664122188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258057 (A191118 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A260965.P12034548894664122188

/-!
# A260969: Number of reduced normal play partisan games born on or before day n.

The programs for A260969, there is no canonical definition to state claims against.
-/

/-! ## A260969.P8253295579409499608

`or(A014105(n), A116846(A116844(n)))`
-/

namespace A260969.P8253295579409499608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A014105 n) (A116846 (A116844 n).toNat)

end

end A260969.P8253295579409499608

/-!
# A260971: Expansion of phi_0(-q) in powers of q where phi_0() is a 5th-order mock theta function.

The programs for A260971, there is no canonical definition to state claims against.
-/

/-! ## A260971.P5088129258357182102

`(-1)^n*A053258(n)`
-/

namespace A260971.P5088129258357182102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A053258 n

end

end A260971.P5088129258357182102

/-! ## A260971.P11722828532125331251

`2*A053264(n)-A053262(n)`
-/

namespace A260971.P11722828532125331251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A053264 n - A053262 n

end

end A260971.P11722828532125331251

/-! ## A260971.P16616150505534344505

`A259551(n)-A053266(n)`
-/

namespace A260971.P16616150505534344505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259551 n - A053266 n

end

end A260971.P16616150505534344505

/-! ## A260971.P12629471732823403406

`A053258(n)/A033999(n)`
-/

namespace A260971.P12629471732823403406
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A053258 n : ℚ) / (A033999 n : ℚ)

end

end A260971.P12629471732823403406

/-! ## A260971.P15506423199140179677

`A053258(n)*A257196(2*n+1)`
-/

namespace A260971.P15506423199140179677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053258 n * A257196 (2 * n + 1)

end

end A260971.P15506423199140179677

/-! ## A260971.P11785154904281823722

`A053260(2*n)+A053256(2*n)`
-/

namespace A260971.P11785154904281823722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053260 (2 * n) + A053256 (2 * n)

end

end A260971.P11785154904281823722

/-! ## A260971.P7128342662793995440

`A053258(n)*A131714(3*n)`
-/

namespace A260971.P7128342662793995440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053258 n * A131714 (3 * n)

end

end A260971.P7128342662793995440

/-!
# A260972: Number of (n+2)X(n+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00001001 or 00100101.

The programs for A260972, there is no canonical definition to state claims against.
-/

/-! ## A260972.P7592545411445392188

`A260980(∑[4*n]+1)`
-/

namespace A260972.P7592545411445392188
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260972.P7592545411445392188

/-! ## A260972.P7235595086175164090

`record[A003982(n)*A260980(n+1)]`
-/

namespace A260972.P7235595086175164090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A260980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260972.P7235595086175164090

/-! ## A260972.P7069813234296727918

`record[gcd(A260980(n+1), A274650(n))]`
-/

namespace A260972.P7069813234296727918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A260980 (n + 1)) (A274650 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260972.P7069813234296727918

/-! ## A260972.P15263516612390887280

`lcm(A033999(n), A260980(A001844(n)))`
-/

namespace A260972.P15263516612390887280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A260980 (A001844 n).toNat)

end

end A260972.P15263516612390887280

/-! ## A260972.P6036439073068079417

`A001221(A111296(n+1))*A260980(A001844(n))`
-/

namespace A260972.P6036439073068079417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A111296 (n + 1)).toNat * A260980 (A001844 n).toNat

end

end A260972.P6036439073068079417

/-!
# A260973: Number of (n+2) X (1+2) 0..1 arrays with each 3 X 3 subblock having clockwise perimeter pattern 00000001 00001001 or 00100101.

The programs for A260973, there is no canonical definition to state claims against.
-/

/-! ## A260973.P2988229975095558758

`A260980(∑[n]+1)`
-/

namespace A260973.P2988229975095558758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A260973.P2988229975095558758

/-! ## A260973.P11467177768123578012

`record[A260980(n+1)]`
-/

namespace A260973.P11467177768123578012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260973.P11467177768123578012

/-! ## A260973.P3437329216752189617

`lcm(A033999(n), A260980(A000124(n)))`
-/

namespace A260973.P3437329216752189617
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A260980 (A000124 n).toNat)

end

end A260973.P3437329216752189617

/-! ## A260973.P13807167074110715752

`or(A000035(n), A260980(A000124(n)))`
-/

namespace A260973.P13807167074110715752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A260980 (A000124 n).toNat)

end

end A260973.P13807167074110715752

/-! ## A260973.P883466225526293228

`A133707(n+1)*A260980(A000124(n))`
-/

namespace A260973.P883466225526293228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133707 (n + 1) * A260980 (A000124 n).toNat

end

end A260973.P883466225526293228

/-!
# A260974: Number of (n+2)X(2+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00001001 or 00100101.

The programs for A260974, there is no canonical definition to state claims against.
-/

/-! ## A260974.P16735205309717443318

`A260980(∑[n+1]+2)`
-/

namespace A260974.P16735205309717443318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A260974.P16735205309717443318

/-! ## A260974.P2997905580515257081

`record[A260980(A133263(A008612(n)))]`
-/

namespace A260974.P2997905580515257081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (A133263 (A008612 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260974.P2997905580515257081

/-! ## A260974.P14663653795586286088

`A260980(A000096(n)+3)%A027997(n+5)`
-/

namespace A260974.P14663653795586286088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260980 (A000096 n + 3).toNat) (A027997 (n + 5))

end

end A260974.P14663653795586286088

/-! ## A260974.P10720653702394809707

`or(1, A260980(A027379(n)+2))`
-/

namespace A260974.P10720653702394809707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A260980 (A027379 n + 2).toNat)

end

end A260974.P10720653702394809707

/-! ## A260974.P9409205042824608230

`A260980(A000096(n+1))%A009969(n+2)`
-/

namespace A260974.P9409205042824608230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260980 (A000096 (n + 1)).toNat) (A009969 (n + 2))

end

end A260974.P9409205042824608230

/-!
# A260975: Number of (n+2)X(3+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00001001 or 00100101.

The programs for A260975, there is no canonical definition to state claims against.
-/

/-! ## A260975.P18334170568616236841

`A260980(∑[n+2]+4)`
-/

namespace A260975.P18334170568616236841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A260975.P18334170568616236841

/-! ## A260975.P13254631460745702980

`lcm(A033999(n), A260980(A167614(n+1)))`
-/

namespace A260975.P13254631460745702980
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A260980 (A167614 (n + 1)).toNat)

end

end A260975.P13254631460745702980

/-! ## A260975.P8657555308504776421

`A133707(n+1)*A260980(A167614(n+1))`
-/

namespace A260975.P8657555308504776421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133707 (n + 1) * A260980 (A167614 (n + 1)).toNat

end

end A260975.P8657555308504776421

/-! ## A260975.P10601476293705420440

`A260980(A167614(n+1))%A260976(n+1)`
-/

namespace A260975.P10601476293705420440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260980 (A167614 (n + 1)).toNat) (A260976 (n + 1))

end

end A260975.P10601476293705420440

/-! ## A260975.P15379417666214159120

`A260980(A167614(n+1))+A003982(2*n+3)`
-/

namespace A260975.P15379417666214159120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (A167614 (n + 1)).toNat + A003982 (2 * n + 3)

end

end A260975.P15379417666214159120

/-!
# A260976: Number of (n+2)X(4+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00001001 or 00100101.

The programs for A260976, there is no canonical definition to state claims against.
-/

/-! ## A260976.P16400433756068927490

`A260980(∑[n+3]+7)`
-/

namespace A260976.P16400433756068927490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A260976.P16400433756068927490

/-! ## A260976.P8346609785194598015

`or(A000007(n), A260980(A055999(n)+10))`
-/

namespace A260976.P8346609785194598015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A260980 (A055999 n + 10).toNat)

end

end A260976.P8346609785194598015

/-! ## A260976.P8035844521619846546

`A260980(A167614(n+2)+1)%A260978(n+1)`
-/

namespace A260976.P8035844521619846546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260980 (A167614 (n + 2) + 1).toNat) (A260978 (n + 1))

end

end A260976.P8035844521619846546

/-! ## A260976.P13590494916579918925

`or(A000007(n), A260980(A027379(n+2)))`
-/

namespace A260976.P13590494916579918925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A260980 (A027379 (n + 2)).toNat)

end

end A260976.P13590494916579918925

/-! ## A260976.P2736546358162997942

`A260980(eq[3, A033185(n+1)])+A000007(n+1)`
-/

namespace A260976.P2736546358162997942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033185 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A000007 (n + 1)

end

end A260976.P2736546358162997942

/-!
# A260977: Number of (n+2)X(5+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00001001 or 00100101.

The programs for A260977, there is no canonical definition to state claims against.
-/

/-! ## A260977.P11304744933624882336

`A260980(A374005(n+1))`
-/

namespace A260977.P11304744933624882336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (A374005 (n + 1)).toNat

end

end A260977.P11304744933624882336

/-! ## A260977.P2229283709822566649

`A260980(A155212(n)+13)`
-/

namespace A260977.P2229283709822566649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (A155212 n + 13).toNat

end

end A260977.P2229283709822566649

/-! ## A260977.P3341289348522641335

`A260980(A056000(n)+15)`
-/

namespace A260977.P3341289348522641335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (A056000 n + 15).toNat

end

end A260977.P3341289348522641335

/-! ## A260977.P12983913297667482696

`A260980(A000217(n+4)+5)`
-/

namespace A260977.P12983913297667482696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (A000217 (n + 4) + 5).toNat

end

end A260977.P12983913297667482696

/-! ## A260977.P5813547033842245354

`A260980(A173036(n)+A016825(n))`
-/

namespace A260977.P5813547033842245354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (A173036 n + A016825 n).toNat

end

end A260977.P5813547033842245354

/-!
# A260978: Number of (n+2)X(6+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00001001 or 00100101.

The programs for A260978, there is no canonical definition to state claims against.
-/

/-! ## A260978.P5317905778591833735

`A260980(A374007(n+1))`
-/

namespace A260978.P5317905778591833735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (A374007 (n + 1)).toNat

end

end A260978.P5317905778591833735

/-! ## A260978.P6681508377088664181

`A260980(A056115(n)+21)`
-/

namespace A260978.P6681508377088664181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (A056115 n + 21).toNat

end

end A260978.P6681508377088664181

/-! ## A260978.P938531122536195240

`A260980(A167499(n+4)+1)`
-/

namespace A260978.P938531122536195240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (A167499 (n + 4) + 1).toNat

end

end A260978.P938531122536195240

/-! ## A260978.P15899413849096026449

`A260980(A000217(n+5)+6)`
-/

namespace A260978.P15899413849096026449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (A000217 (n + 5) + 6).toNat

end

end A260978.P15899413849096026449

/-! ## A260978.P12645628875651614908

`A260980(A246172(n+1)+20)`
-/

namespace A260978.P12645628875651614908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (A246172 (n + 1) + 20).toNat

end

end A260978.P12645628875651614908

/-!
# A260979: Number of (n+2)X(7+2) 0..1 arrays with each 3X3 subblock having clockwise perimeter pattern 00000001 00001001 or 00100101.

The programs for A260979, there is no canonical definition to state claims against.
-/

/-! ## A260979.P10376872724226501981

`A260980(A374008(n+1))`
-/

namespace A260979.P10376872724226501981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (A374008 (n + 1)).toNat

end

end A260979.P10376872724226501981

/-! ## A260979.P14561611684411644566

`A260980(A167614(n+5)+4)`
-/

namespace A260979.P14561611684411644566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (A167614 (n + 5) + 4).toNat

end

end A260979.P14561611684411644566

/-! ## A260979.P10327623928996538595

`A260980(A000124(n+6)+6)`
-/

namespace A260979.P10327623928996538595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (A000124 (n + 6) + 6).toNat

end

end A260979.P10327623928996538595

/-! ## A260979.P1447025646860091713

`A260980(A000217(n+6)+7)`
-/

namespace A260979.P1447025646860091713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (A000217 (n + 6) + 7).toNat

end

end A260979.P1447025646860091713

/-! ## A260979.P14735526462242855322

`A260980(A055999(n+4))`
-/

namespace A260979.P14735526462242855322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260980 (A055999 (n + 4)).toNat

end

end A260979.P14735526462242855322

/-!
# A260982: 

The programs for A260982, there is no canonical definition to state claims against.
-/

/-! ## A260982.P7530700338814164242

`∏[Δ[2^2^n]+1]/3`
-/

namespace A260982.P7530700338814164242
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ 2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A260982.P7530700338814164242

/-! ## A260982.P7479107628197359953

`or(1, Δ[2^2^n])*a(n-1)` with `a(0)=1`
-/

namespace A260982.P7479107628197359953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * a (n - 1)

end

end A260982.P7479107628197359953

/-! ## A260982.P16984622180346243907

`xor(1, Δ[2^2^n])*a(n-1)` with `a(0)=1`
-/

namespace A260982.P16984622180346243907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ 2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 1 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * a (n - 1)

end

end A260982.P16984622180346243907

/-!
# A260985: Numbers k such that A001222(k) - A001221(k) is an odd prime.

The programs for A260985, there is no canonical definition to state claims against.
-/

/-! ## A260985.P10707699924416659000

`∪[A195087(n+1), A195089(n+1)]%A264959(2*n+3)`
-/

namespace A260985.P10707699924416659000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195089 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A264959 (2 * n + 3))

end

end A260985.P10707699924416659000

/-! ## A260985.P16179712517894262802

`∩[A162645(n+1), A325261(n+1)]`
-/

namespace A260985.P16179712517894262802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A260985.P16179712517894262802

/-!
# A260986: Numbers n such that H(n)/H(n^2) is a new record, where H(n) = A000120(n) is the sum of the binary digits of n.

The programs for A260986, there is no canonical definition to state claims against.
-/

/-! ## A260986.P7228229613637959787

`A007947(or(1, A356877(n)))`
-/

namespace A260986.P7228229613637959787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Int.lor 1 (A356877 n)).toNat

end

end A260986.P7228229613637959787

/-! ## A260986.P2842949936258728210

`or(A049289(2*n), A356877(n))`
-/

namespace A260986.P2842949936258728210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A049289 (2 * n)) (A356877 n)

end

end A260986.P2842949936258728210

/-! ## A260986.P5837741053588684907

`A356877(n*a(A308991(n)))` with `a(0)=1`
-/

namespace A260986.P5837741053588684907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A356877 ((n : ℤ) * a (A308991 n).toNat).toNat

end

end A260986.P5837741053588684907

/-! ## A260986.P3360197649747087689

`or(Δ[A137582(n+5)], A356877(n))`
-/

namespace A260986.P3360197649747087689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137582 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (f1 (n + 1) - f1 n) (A356877 n)

end

end A260986.P3360197649747087689

/-!
# A260987: Record values in A008480.

The programs for A260987, there is no canonical definition to state claims against.
-/

/-! ## A260987.P11779243495849187399

`A008480(A260633(n+1))`
-/

namespace A260987.P11779243495849187399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A260633 (n + 1)).toNat

end

end A260987.P11779243495849187399

/-! ## A260987.P5199878864190748992

`record[A050382(n+1)]`
-/

namespace A260987.P5199878864190748992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050382 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260987.P5199878864190748992

/-! ## A260987.P9564653212683879353

`record[A318762(A181820(n+1))]`
-/

namespace A260987.P9564653212683879353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (A181820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260987.P9564653212683879353

/-! ## A260987.P16486049963009304536

`record[abs(A355939(n+1))]`
-/

namespace A260987.P16486049963009304536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A355939 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260987.P16486049963009304536

/-! ## A260987.P5274816584801547114

`record[A321647(n+1)/A321648(n+1)]`
-/

namespace A260987.P5274816584801547114
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321647 (n + 1) : ℚ) / (A321648 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260987.P5274816584801547114

/-!
# A260989: Integers n such that prime(n-1) + prime(n+1) is a multiple of n.

The programs for A260989, there is no canonical definition to state claims against.
-/

/-! ## A260989.P17747254855834595558

`eq[n, gcd(A048448(n), A066182(n+1))]`
-/

namespace A260989.P17747254855834595558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048448 n) (A066182 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A260989.P17747254855834595558

/-! ## A260989.P12800093622883142512

`eq[lcm(n, A176099(n+1)), A048448(n)]`
-/

namespace A260989.P12800093622883142512
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A176099 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260989.P12800093622883142512

/-! ## A260989.P9689983528695254576

`eq[gcd(n, A176099(n+1)), A066182(n+1)]`
-/

namespace A260989.P9689983528695254576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A176099 (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066182 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A260989.P9689983528695254576

/-! ## A260989.P3318063268502014943

`lt[A008619(n), gcd(n+1, A048448(n+1))]+1`
-/

namespace A260989.P3318063268502014943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A048448 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A260989.P3318063268502014943

/-!
# A260990: Numbers n such that the modular curve X_0(n) is bielliptic.

The programs for A260990, there is no canonical definition to state claims against.
-/

/-! ## A260990.P12141395564163912077

`∪[A260991(n+1), A173546(n)]`
-/

namespace A260990.P12141395564163912077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173546 (n + 10)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A260990.P12141395564163912077

/-! ## A260990.P14738725689098742933

`∪[A260991(n+1), A173547(n)]`
-/

namespace A260990.P14738725689098742933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173547 (n + 15)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A260990.P14738725689098742933

/-! ## A260990.P8632210098087794619

`∪[A260991(n+1), A305153(n)]`
-/

namespace A260990.P8632210098087794619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305153 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A260990.P8632210098087794619

/-! ## A260990.P2349491382453421290

`∪[A019507(n+1), A260991(n+1)]`
-/

namespace A260990.P2349491382453421290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A260990.P2349491382453421290

/-! ## A260990.P9594885263270294742

`∪[A039364(n+1), A260991(n+1)]`
-/

namespace A260990.P9594885263270294742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260991 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A260990.P9594885263270294742

/-!
# A260991: Numbers n such that the modular curve X_0(n) has a bielliptic involution of Atkin-Lehner type.

The programs for A260991, there is no canonical definition to state claims against.
-/

/-! ## A260991.P8684603080962908335

`A260990(comp[A249674(n)])`
-/

namespace A260991.P8684603080962908335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249674 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260990 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A260991.P8684603080962908335

/-! ## A260991.P12289751380425457288

`A260990(A070915(n+1))`
-/

namespace A260991.P12289751380425457288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260990 (A070915 (n + 1)).toNat

end

end A260991.P12289751380425457288

/-! ## A260991.P13424127322986682020

`A260990(A083243(n+1))`
-/

namespace A260991.P13424127322986682020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260990 (A083243 (n + 1)).toNat

end

end A260991.P13424127322986682020

/-! ## A260991.P12015227773008199678

`A260990(comp[A165016(n+1)])`
-/

namespace A260991.P12015227773008199678
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165016 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260990 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A260991.P12015227773008199678

/-! ## A260991.P6728036834799007452

`A260990(∑[A297246(n+3)!])`
-/

namespace A260991.P6728036834799007452
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A297246 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260990 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A260991.P6728036834799007452

/-!
# A260993: Numbers n such that the modular curve X_0(n) contains infinitely many rational points of degree 2.

The programs for A260993, there is no canonical definition to state claims against.
-/

/-! ## A260993.P4486254937024154777

`A276182(∑[A214249(n)²])`
-/

namespace A260993.P4486254937024154777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214249 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276182 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A260993.P4486254937024154777

/-! ## A260993.P3897197067345962082

`A276182(∑[A144161(n)!])`
-/

namespace A260993.P3897197067345962082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A144161 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276182 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A260993.P3897197067345962082

/-! ## A260993.P15961834703458709053

`A276182(∑[∑[A151840(n)]])`
-/

namespace A260993.P15961834703458709053
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151840 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276182 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A260993.P15961834703458709053

/-! ## A260993.P2508187414052555598

`record[A276182(A194973(n+1))]`
-/

namespace A260993.P2508187414052555598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276182 (A194973 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A260993.P2508187414052555598

/-! ## A260993.P3788570082782093030

`A276182(A214249(n)²+n)`
-/

namespace A260993.P3788570082782093030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276182 (A214249 n ^ 2 + (n : ℤ)).toNat

end

end A260993.P3788570082782093030

/-!
# A260994: Numbers n such that the modular curve X_0(n) has genus >= 2 and contains infinitely many points of degree 2 over some number field L.

The programs for A260994, there is no canonical definition to state claims against.
-/

/-! ## A260994.P14787554044512697521

`lt[A044123(n+1), A181363(A341870(n))]`
-/

namespace A260994.P14787554044512697521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A044123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181363 (A341870 (n + 21)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260994.P14787554044512697521

/-! ## A260994.P1548240327941871315

`lt[A310882(A214206(n)), A295494(n)]`
-/

namespace A260994.P1548240327941871315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A310882 (A214206 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295494 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A260994.P1548240327941871315

/-!
# A260996: The Hwang-Deutsch function f_3(n).

The programs for A260996, there is no canonical definition to state claims against.
-/

/-! ## A260996.P12191588603325874897

`A026802(lt[A229304(n+1), A035363(n)])`
-/

namespace A260996.P12191588603325874897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026802 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A260996.P12191588603325874897

/-! ## A260996.P5713840078953050305

`A185329(lt[A006450(n+1), A306702(n)])`
-/

namespace A260996.P5713840078953050305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185329 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A260996.P5713840078953050305

/-! ## A260996.P557667150051995548

`A185329(lt[A075628(n+1), A306702(n)])`
-/

namespace A260996.P557667150051995548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075628 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185329 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A260996.P557667150051995548

/-! ## A260996.P9910088742797720281

`A185329(lt[A106856(n+1), A306702(n)])`
-/

namespace A260996.P9910088742797720281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106856 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185329 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A260996.P9910088742797720281

/-! ## A260996.P14607078240372391508

`A070289(n)+A065033(A187829(n+4))`
-/

namespace A260996.P14607078240372391508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070289 n + A065033 (A187829 (n + 4)).toNat

end

end A260996.P14607078240372391508

/-!
# A260997: The Hwang-Deutsch function f_4(n).

The programs for A260997, there is no canonical definition to state claims against.
-/

/-! ## A260997.P12365141098631092284

`A204166(8*A289010(n))`
-/

namespace A260997.P12365141098631092284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204166 (8 * A289010 n).toNat

end

end A260997.P12365141098631092284

/-! ## A260997.P15905132610894406183

`A000196(A006459(n+4))-(n+1)`
-/

namespace A260997.P15905132610894406183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A006459 (n + 4)).toNat - (n + 1 : ℤ)

end

end A260997.P15905132610894406183

/-! ## A260997.P5858803158617638354

`A276611(A164416(n+4))`
-/

namespace A260997.P5858803158617638354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276611 (A164416 (n + 4)).toNat

end

end A260997.P5858803158617638354

/-! ## A260997.P3934575960878504947

`A308358(A072198(n+1)-A341994(3*n))`
-/

namespace A260997.P3934575960878504947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308358 (A072198 (n + 1) - A341994 (3 * n)).toNat

end

end A260997.P3934575960878504947

/-! ## A260997.P5926020446937444604

`A300287(A248441(n+1))`
-/

namespace A260997.P5926020446937444604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300287 (A248441 (n + 1)).toNat

end

end A260997.P5926020446937444604

/-!
# A260998: Maximal size of a subset of Z_n with distinct sums of pairs (of distinct elements).

The programs for A260998, there is no canonical definition to state claims against.
-/

/-! ## A260998.P5046823528009830710

`round(root(A166873(A166873(n+1)), 10))`
-/

namespace A260998.P5046823528009830710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A166873 (A166873 (n + 1)).toNat : ℝ) ^ (1 / (10 : ℝ)))

end

end A260998.P5046823528009830710

/-! ## A260998.P6185187458477964885

`A000720(p?[A291372(A022846(n))])`
-/

namespace A260998.P6185187458477964885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291372 (A022846 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A260998.P6185187458477964885

/-! ## A260998.P5985233864077057600

`A103586(eq[A122315(n), A122317(n)])`
-/

namespace A260998.P5985233864077057600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122315 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103586 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A260998.P5985233864077057600

/-! ## A260998.P7638079551280171627

`∑[A010054(A338651(n+1)+A266101(n+1))]`
-/

namespace A260998.P7638079551280171627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A338651 (n + 1) + A266101 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A260998.P7638079551280171627

/-! ## A260998.P18130079176074945622

`round(sqrt(A163301(2*n+1)))`
-/

namespace A260998.P18130079176074945622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A163301 (2 * n + 1) : ℝ))

end

end A260998.P18130079176074945622

/-!
# A260999: Maximal size of a subset of Z_n with distinct sums of any two elements.

The programs for A260999, there is no canonical definition to state claims against.
-/

/-! ## A260999.P4586901857771672845

`A000196(A333381(2*(n+1))+A000002(2*(n+1))+n)`
-/

namespace A260999.P4586901857771672845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A333381 (2 * (n + 1)) + A000002 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A260999.P4586901857771672845

/-! ## A260999.P2894221476583231871

`A097944(∏{p}[n, #^val(2*n, #)]*A097986(n+1))`
-/

namespace A260999.P2894221476583231871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (2 * n) p : ℕ) : ℤ) * A097986 (n + 1)).toNat

end

end A260999.P2894221476583231871

/-! ## A260999.P16086302438899059385

`A126235(A351005(n+2)+A005117(n+1))`
-/

namespace A260999.P16086302438899059385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126235 (A351005 (n + 2) + A005117 (n + 1)).toNat

end

end A260999.P16086302438899059385

/-! ## A260999.P6859989898698737706

`floor(A205805(2*(n+1))/(n+1))`
-/

namespace A260999.P6859989898698737706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A205805 (2 * (n + 1)) : ℚ) / (n + 1 : ℚ)⌋

end

end A260999.P6859989898698737706

/-! ## A260999.P13300563615101919615

`A002024(and(A008619(n), A137512(n+1)))`
-/

namespace A260999.P13300563615101919615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (Int.land (A008619 n) (A137512 (n + 1))).toNat

end

end A260999.P13300563615101919615

