import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C020
import Seq.B000.C025
import Seq.B000.C030
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
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
# A371400: Triangle read by rows: T(n, k) = binomial(k + n, k)*binomial(2*n - k, n).

The programs for A371400, the canonical program `A371400.P12475801685210766607` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371400 has offset 0).

The definition of A371400 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(col(n)+row(n), col(n))*C(2*row(n)-col(n), row(n))` (program `A371400.P12475801685210766607`, by `A371400.P12475801685210766607.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371400.P12475801685210766607

`C(col(n)+row(n), col(n))*C(2*row(n)-col(n), row(n))`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A371400

/-- `C(col(n)+row(n), col(n))*C(2*row(n)-col(n), row(n))` -/
def P12475801685210766607.Spec : Prop :=
  ∀ n, (P12475801685210766607.a n : ℤ) = A371400 n

theorem P12475801685210766607.correct : P12475801685210766607.Spec := by
  intro n
  simp only [A371400]

end A371400

/-! ## A371400.P8491406579635507671

`A046899(n)*A092392(n)`
-/

namespace A371400.P8491406579635507671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A092392 n

end

end A371400.P8491406579635507671

namespace A371400

/-- `A046899(n)*A092392(n)` -/
def P8491406579635507671.Spec : Prop :=
  ∀ n, P8491406579635507671.a n = A371400 n

end A371400

/-! ## A371400.P7002694376593627152

`A046899(n)*A046899(A061579(n))`
-/

namespace A371400.P7002694376593627152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A046899 (A061579 n).toNat

end

end A371400.P7002694376593627152

namespace A371400

/-- `A046899(n)*A046899(A061579(n))` -/
def P7002694376593627152.Spec : Prop :=
  ∀ n, P7002694376593627152.a n = A371400 n

end A371400

/-! ## A371400.P9501950025219428562

`A092392(A061579(n))*A092392(n)`
-/

namespace A371400.P9501950025219428562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (A061579 n).toNat * A092392 n

end

end A371400.P9501950025219428562

namespace A371400

/-- `A092392(A061579(n))*A092392(n)` -/
def P9501950025219428562.Spec : Prop :=
  ∀ n, P9501950025219428562.a n = A371400 n

end A371400

/-! ## A371400.P4555271792703016277

`(A171824(n)-A046899(n))*A046899(n)`
-/

namespace A371400.P4555271792703016277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171824 n - A046899 n) * A046899 n

end

end A371400.P4555271792703016277

namespace A371400

/-- `(A171824(n)-A046899(n))*A046899(n)` -/
def P4555271792703016277.Spec : Prop :=
  ∀ n, P4555271792703016277.a n = A371400 n

end A371400

/-! ## A371400.P11125256166586809881

`(A171824(n)-A092392(n))*A092392(n)`
-/

namespace A371400.P11125256166586809881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A171824 n - A092392 n) * A092392 n

end

end A371400.P11125256166586809881

namespace A371400

/-- `(A171824(n)-A092392(n))*A092392(n)` -/
def P11125256166586809881.Spec : Prop :=
  ∀ n, P11125256166586809881.a n = A371400 n

end A371400

/-!
# A371402: a(n) = gcd(2*n, 4^n)^(2*n + 1) mod (2^(2*n + 1) - 1)^2.

The programs for A371402, the canonical program `A371402.P15516474367456198258` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371402 has offset 0).

The definition of A371402 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(gcd(2*n, 4^n)^(2*n+1))%(2^(2*n+1)-1)²` (program `A371402.P15516474367456198258`, by `A371402.P15516474367456198258.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371402.P15516474367456198258

`(gcd(2*n, 4^n)^(2*n+1))%(2^(2*n+1)-1)²`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A371402

/-- `(gcd(2*n, 4^n)^(2*n+1))%(2^(2*n+1)-1)²` -/
def P15516474367456198258.Spec : Prop :=
  ∀ n, P15516474367456198258.a n = A371402 n

theorem P15516474367456198258.correct : P15516474367456198258.Spec := by
  intro n
  simp only [A371402]

end A371402

/-! ## A371402.P8172138524085723761

`A102394(A083420(n)*A286469(n+1))`
-/

namespace A371402.P8172138524085723761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102394 (A083420 n * A286469 (n + 1)).toNat

end

end A371402.P8172138524085723761

namespace A371402

/-- `A102394(A083420(n)*A286469(n+1))` -/
def P8172138524085723761.Spec : Prop :=
  ∀ n, P8172138524085723761.a n = A371402 n

end A371402

/-!
# A371404: Expansion of (1/x) * Series_Reversion( x / ( (1+x) * (1+3*x)^2 ) ).

The programs for A371404, there is no canonical definition to state claims against.
-/

/-! ## A371404.P4726640624844648074

`A219535(n+1)/3`
-/

namespace A371404.P4726640624844648074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219535 (n + 1) : ℚ) / 3

end

end A371404.P4726640624844648074

/-! ## A371404.P16366614562043763526

`A395080(A005843(2*n+3)+n*(n+1)/2)`
-/

namespace A371404.P16366614562043763526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395080 (SequenceMachineLib.roundAway ((A005843 (2 * n + 3) : ℚ) + (n : ℚ) * ((n + 1 : ℚ) / 2))).toNat

end

end A371404.P16366614562043763526

/-!
# A371405: Expansion of (1/x) * Series_Reversion( x / ( (1+x) * (1+3*x)^3 ) ).

The programs for A371405, there is no canonical definition to state claims against.
-/

/-! ## A371405.P16477816709268220535

`A336538(n+1)/3`
-/

namespace A371405.P16477816709268220535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336538 (n + 1) : ℚ) / 3

end

end A371405.P16477816709268220535

/-!
# A371406: Expansion of (1/x) * Series_Reversion( x / ( (1+x)^2 * (1+2*x)^2 ) ).

The programs for A371406, there is no canonical definition to state claims against.
-/

/-! ## A371406.P9192096967976069271

`A219538(n+1)/2`
-/

namespace A371406.P9192096967976069271
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219538 (n + 1) : ℚ) / 2

end

end A371406.P9192096967976069271

/-! ## A371406.P10801939167373758148

`Δ[∑[A219538(n)]/2]`
-/

namespace A371406.P10801939167373758148
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219538 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A371406.P10801939167373758148

/-! ## A371406.P6935818883938172441

`A371658(n+1)/2^(n+2)`
-/

namespace A371406.P6935818883938172441
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A371658 (n + 1) : ℚ) / (2 ^ (n + 2) : ℚ)

end

end A371406.P6935818883938172441

/-!
# A371408: Number of Dyck paths of semilength n having exactly three (possibly overlapping) occurrences of the consecutive step pattern UDU, where U = (1,1) and D = (1,-1).

The programs for A371408, there is no canonical definition to state claims against.
-/

/-! ## A371408.P1054418556087950782

`A243829(A052905(n+3)-1)`
-/

namespace A371408.P1054418556087950782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243829 (A052905 (n + 3) - 1).toNat

end

end A371408.P1054418556087950782

/-! ## A371408.P10045550013470636157

`A243829(A000217(n+5)+n)`
-/

namespace A371408.P10045550013470636157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243829 (A000217 (n + 5) + (n : ℤ)).toNat

end

end A371408.P10045550013470636157

/-! ## A371408.P16920162293209939287

`A235044(A273162(n+1))`
-/

namespace A371408.P16920162293209939287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235044 (A273162 (n + 1)).toNat

end

end A371408.P16920162293209939287

/-!
# A371410: Row sums of A371409: sums of the positions of right parentheses in the properly nested string of parentheses encoded by A063171(n).

The programs for A371410, there is no canonical definition to state claims against.
-/

/-! ## A371410.P17655466070004719162

`A029931(∑[A085192(n)])`
-/

namespace A371410.P17655466070004719162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085192 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A371410.P17655466070004719162

/-! ## A371410.P11972240696455666327

`A029931(A014486(n+1))`
-/

namespace A371410.P11972240696455666327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029931 (A014486 (n + 1)).toNat

end

end A371410.P11972240696455666327

/-! ## A371410.P10855264421067845466

`A124757(A083937(n+1))`
-/

namespace A371410.P10855264421067845466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (A083937 (n + 1)).toNat

end

end A371410.P10855264421067845466

/-! ## A371410.P14281463018932326485

`A124757(A085224(n+1))`
-/

namespace A371410.P14281463018932326485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124757 (A085224 (n + 1)).toNat

end

end A371410.P14281463018932326485

/-! ## A371410.P6266737362394298427

`A073642(A194045(n+1))`
-/

namespace A371410.P6266737362394298427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073642 (A194045 (n + 1)).toNat

end

end A371410.P6266737362394298427

/-!
# A371411: Number of Dyck paths of semilength 2n having exactly n (possibly overlapping) occurrences of the consecutive step pattern UDU, where U = (1,1) and D = (1,-1).

The programs for A371411, there is no canonical definition to state claims against.
-/

/-! ## A371411.P6123981313236446827

`A086246(n+1)*A088218(n)`
-/

namespace A371411.P6123981313236446827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 1) * A088218 n

end

end A371411.P6123981313236446827

/-! ## A371411.P15878668712823790596

`A034929(∑[n+1])*A088218(n)`
-/

namespace A371411.P15878668712823790596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034929 (∑ j ∈ Finset.range (n + 1), f1 j) * A088218 n

end

end A371411.P15878668712823790596

/-! ## A371411.P8937466817377933380

`A091869(2*n²+1)`
-/

namespace A371411.P8937466817377933380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091869 (2 * n ^ 2 + 1)

end

end A371411.P8937466817377933380

/-! ## A371411.P16949445188182937627

`A091187(2*A028310(n²))`
-/

namespace A371411.P16949445188182937627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091187 (2 * A028310 (n ^ 2)).toNat

end

end A371411.P16949445188182937627

/-! ## A371411.P14100533697889711779

`A091187(A091187(∑[n]+2)+A000384(n))`
-/

namespace A371411.P14100533697889711779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091187 (A091187 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + A000384 n).toNat

end

end A371411.P14100533697889711779

/-!
# A371412: Euler totient function applied to the cubefull numbers (A036966).

The programs for A371412, there is no canonical definition to state claims against.
-/

/-! ## A371412.P4492394441493315838

`A000010(A036966(n+1))`
-/

namespace A371412.P4492394441493315838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A036966 (n + 1)).toNat

end

end A371412.P4492394441493315838

/-! ## A371412.P2280025446934524913

`A379718(n+1)/A371413(n+1)`
-/

namespace A371412.P2280025446934524913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379718 (n + 1) : ℚ) / (A371413 (n + 1) : ℚ)

end

end A371412.P2280025446934524913

/-! ## A371412.P5565661252848909897

`A323333(A371185(n+1))`
-/

namespace A371412.P5565661252848909897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323333 (A371185 (n + 1)).toNat

end

end A371412.P5565661252848909897

/-! ## A371412.P11789371501181173308

`A379718(n+1)/A323332(A371185(n+1))`
-/

namespace A371412.P11789371501181173308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379718 (n + 1) : ℚ) / (A323332 (A371185 (n + 1)).toNat : ℚ)

end

end A371412.P11789371501181173308

/-! ## A371412.P14008573857929288533

`A000010(∪[A036967(n+1), A376173(n+1)])`
-/

namespace A371412.P14008573857929288533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036967 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376173 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A371412.P14008573857929288533

/-! ## A371412.P17895380644531266865

`∑{d}[A036966(n+1), A007431(#)]`
-/

namespace A371412.P17895380644531266865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A007431 d

end

end A371412.P17895380644531266865

/-! ## A371412.P7292342477125563584

`A000010(record[A360540(n+1)])`
-/

namespace A371412.P7292342477125563584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360540 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A371412.P7292342477125563584

/-! ## A371412.P14562132626878322047

`A390756(A036966(2*n+1-n))`
-/

namespace A371412.P14562132626878322047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390756 (A036966 (2 * n + 1 - n)).toNat

end

end A371412.P14562132626878322047

/-! ## A371412.P2389502003503989190

`lcm(A055642(n), A254503(A036966(n+1)))`
-/

namespace A371412.P2389502003503989190
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A055642 n) (A254503 (A036966 (n + 1)).toNat)

end

end A371412.P2389502003503989190

/-!
# A371413: Dedekind psi function applied to the cubefull numbers (A036966).

The programs for A371413, there is no canonical definition to state claims against.
-/

/-! ## A371413.P10187234000413262471

`A001615(A036966(n+1))`
-/

namespace A371413.P10187234000413262471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A036966 (n + 1)).toNat

end

end A371413.P10187234000413262471

/-! ## A371413.P12949743665038880621

`A379718(n+1)/A371412(n+1)`
-/

namespace A371413.P12949743665038880621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379718 (n + 1) : ℚ) / (A371412 (n + 1) : ℚ)

end

end A371413.P12949743665038880621

/-! ## A371413.P3743922357052148189

`A323332(A371185(n+1))`
-/

namespace A371413.P3743922357052148189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323332 (A371185 (n + 1)).toNat

end

end A371413.P3743922357052148189

/-! ## A371413.P7342963031154856511

`A379718(n+1)/A000010(A036966(n+1))`
-/

namespace A371413.P7342963031154856511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379718 (n + 1) : ℚ) / (A000010 (A036966 (n + 1)).toNat : ℚ)

end

end A371413.P7342963031154856511

/-! ## A371413.P12749739650290258047

`A379716(A371185(n+1))/A000010(A036966(n+1))`
-/

namespace A371413.P12749739650290258047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A379716 (A371185 (n + 1)).toNat : ℚ) / (A000010 (A036966 (n + 1)).toNat : ℚ)

end

end A371413.P12749739650290258047

/-! ## A371413.P4968601600958704857

`A392171(A036966(2*n+1-n))`
-/

namespace A371413.P4968601600958704857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392171 (A036966 (2 * n + 1 - n)).toNat

end

end A371413.P4968601600958704857

/-! ## A371413.P6844398242693260190

`A160890(eq[n+1, A356193(n+1)]+1)/7`
-/

namespace A371413.P6844398242693260190
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356193 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160890 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℚ) / 7

end

end A371413.P6844398242693260190

/-!
# A371414: Euler phi function applied to the cubefull exponentially odd numbers (A335988).

The programs for A371414, there is no canonical definition to state claims against.
-/

/-! ## A371414.P15364974599954172171

`A000010(A335988(n+1))`
-/

namespace A371414.P15364974599954172171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A335988 (n + 1)).toNat

end

end A371414.P15364974599954172171

/-! ## A371414.P2752071623268171706

`A000010(record[A368167(n+1)])`
-/

namespace A371414.P2752071623268171706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A371414.P2752071623268171706

/-! ## A371414.P13151967873848659901

`A000010(record[A368170(n+1)])`
-/

namespace A371414.P13151967873848659901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368170 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A371414.P13151967873848659901

/-! ## A371414.P941368045237708451

`A000010(eq[n+1, (n+1)/A368171(n+1)]+1)`
-/

namespace A371414.P941368045237708451
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A368171 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1)

end

end A371414.P941368045237708451

/-! ## A371414.P1309853900142040537

`A000010(record[A350389(n+1)/A055231(n+1)])`
-/

namespace A371414.P1309853900142040537
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A350389 (n + 1) : ℚ) / (A055231 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A371414.P1309853900142040537

/-!
# A371415: Dedekind psi function applied to the cubefull exponentially odd numbers (A335988).

The programs for A371415, there is no canonical definition to state claims against.
-/

/-! ## A371415.P1745035912731244940

`A001615(A335988(n+1))`
-/

namespace A371415.P1745035912731244940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A335988 (n + 1)).toNat

end

end A371415.P1745035912731244940

/-! ## A371415.P6338471487400459231

`A001615(lt[A368171(n+1), 2]+1)`
-/

namespace A371415.P6338471487400459231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368171 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A371415.P6338471487400459231

/-!
# A371416: Expansion of (1/x) * Series_Reversion( x * (1 - 3*x - x^3) ).

The programs for A371416, there is no canonical definition to state claims against.
-/

/-! ## A371416.P12487720181121846100

`A376224(n+1)-A292247(A376245(n+1))`
-/

namespace A371416.P12487720181121846100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376224 (n + 1) - A292247 (A376245 (n + 1)).toNat

end

end A371416.P12487720181121846100

/-!
# A371417: Triangle read by rows: T(n,k) is the number of complete compositions of n with k parts.

The programs for A371417, there is no canonical definition to state claims against.
-/

/-! ## A371417.P11461329481316580677

`A000120(A137252(n)*A142992(n))`
-/

namespace A371417.P11461329481316580677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A137252 n * A142992 n).toNat

end

end A371417.P11461329481316580677

/-! ## A371417.P13866490918688128295

`A374996(lcm(A220935(n+1), A394777(n)))`
-/

namespace A371417.P13866490918688128295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374996 (Int.lcm (A220935 (n + 1)) (A394777 n))

end

end A371417.P13866490918688128295

/-! ## A371417.P17777558558533224027

`C(A026729(n), A306680(A285152(n+1)))`
-/

namespace A371417.P17777558558533224027
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A026729 n).toNat (A306680 (A285152 (n + 1)).toNat).toNat

end

end A371417.P17777558558533224027

/-! ## A371417.P7131476707935756195

`and(A326676(n), A345434(A080851(n+1)))`
-/

namespace A371417.P7131476707935756195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A326676 n) (A345434 (A080851 (n + 1)).toNat)

end

end A371417.P7131476707935756195

/-! ## A371417.P10518801729492097994

`A103294(n)-A047999(A332377(3*n+2))`
-/

namespace A371417.P10518801729492097994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103294 n - A047999 (A332377 (3 * n + 2)).toNat

end

end A371417.P10518801729492097994

/-!
# A371418: The largest aliquot divisor of the sum of divisors of n; a(1) = 1.

The programs for A371418, there is no canonical definition to state claims against.
-/

/-! ## A371418.P2965548221215655554

`A000203(n+1)/A071189(n+1)`
-/

namespace A371418.P2965548221215655554
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) : ℚ) / (A071189 (n + 1) : ℚ)

end

end A371418.P2965548221215655554

/-! ## A371418.P15300476312554260004

`A032742(A000203(n+1))`
-/

namespace A371418.P15300476312554260004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A000203 (n + 1)).toNat

end

end A371418.P15300476312554260004

/-! ## A371418.P5796245192034064255

`A245092(2*n+1)/A020639(A245092(2*n+1))`
-/

namespace A371418.P5796245192034064255
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245092 (2 * n + 1) : ℚ) / (A020639 (A245092 (2 * n + 1)).toNat : ℚ)

end

end A371418.P5796245192034064255

/-! ## A371418.P14818258310231561030

`A117358(A239050(n+1))`
-/

namespace A371418.P14818258310231561030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (A239050 (n + 1)).toNat

end

end A371418.P14818258310231561030

/-! ## A371418.P12116719368413538439

`A262610(2*n+1)/A020639(A262610(2*n+1))`
-/

namespace A371418.P12116719368413538439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262610 (2 * n + 1) : ℚ) / (A020639 (A262610 (2 * n + 1)).toNat : ℚ)

end

end A371418.P12116719368413538439

/-! ## A371418.P9129964226792557715

`A032742(∑{d}[n+1, #])`
-/

namespace A371418.P9129964226792557715
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A371418.P9129964226792557715

/-! ## A371418.P16303992345346949893

`A032742(A039653(n+1)+1)`
-/

namespace A371418.P16303992345346949893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A039653 (n + 1) + 1).toNat

end

end A371418.P16303992345346949893

/-! ## A371418.P15431486152373212532

`A032742(A326065(2*(n+1)))`
-/

namespace A371418.P15431486152373212532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A326065 (2 * (n + 1))).toNat

end

end A371418.P15431486152373212532

/-! ## A371418.P5960176095980579960

`A032742(A326136(2*(n+1))/2)`
-/

namespace A371418.P5960176095980579960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (SequenceMachineLib.roundAway ((A326136 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A371418.P5960176095980579960

/-! ## A371418.P14542317253639518734

`A032742(A001065(n+1)+n+1)`
-/

namespace A371418.P14542317253639518734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A001065 (n + 1) + (n + 1 : ℤ)).toNat

end

end A371418.P14542317253639518734

/-! ## A371418.P5421037683753771972

`A032742(A048050(n+1)+n+2)`
-/

namespace A371418.P5421037683753771972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A048050 (n + 1) + (n + 2 : ℤ)).toNat

end

end A371418.P5421037683753771972

/-! ## A371418.P7312534524621462834

`A032742(A237588(n+1)+2*n+1)`
-/

namespace A371418.P7312534524621462834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A237588 (n + 1) + (2 * n + 1 : ℤ)).toNat

end

end A371418.P7312534524621462834

/-! ## A371418.P7648560303907065640

`A032742(A048146(n+1)+A034448(n+1))`
-/

namespace A371418.P7648560303907065640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A048146 (n + 1) + A034448 (n + 1)).toNat

end

end A371418.P7648560303907065640

/-! ## A371418.P873365079181359510

`A032742(A326187(n+1)+A003557(n+1))`
-/

namespace A371418.P873365079181359510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A326187 (n + 1) + A003557 (n + 1)).toNat

end

end A371418.P873365079181359510

/-! ## A371418.P8928493490972980279

`A032742(A326053(n+1)+A008833(n+1))`
-/

namespace A371418.P8928493490972980279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A326053 (n + 1) + A008833 (n + 1)).toNat

end

end A371418.P8928493490972980279

/-! ## A371418.P361803492476801540

`A032742(A326061(n+1)+A032742(n+1))`
-/

namespace A371418.P361803492476801540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A326061 (n + 1) + A032742 (n + 1)).toNat

end

end A371418.P361803492476801540

/-! ## A371418.P10563537335142205289

`A032742(A326184(n+1)+A057521(n+1))`
-/

namespace A371418.P10563537335142205289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A326184 (n + 1) + A057521 (n + 1)).toNat

end

end A371418.P10563537335142205289

/-! ## A371418.P14343476753501703392

`A032742(A326066(n+1)+A326065(n+1))`
-/

namespace A371418.P14343476753501703392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A326066 (n + 1) + A326065 (n + 1)).toNat

end

end A371418.P14343476753501703392

/-! ## A371418.P2887086525646212214

`A032742(A326136(n+1)+A326135(n+1))`
-/

namespace A371418.P2887086525646212214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A326136 (n + 1) + A326135 (n + 1)).toNat

end

end A371418.P2887086525646212214

/-!
# A371419: Lesser member of Carmichael's variant of amicable pair: numbers k < m such that s(k) = m and s(m) = k, where s(k) = A371418(k).

The programs for A371419, there is no canonical definition to state claims against.
-/

/-! ## A371419.P3976548082086756958

`∩[A037014(n+1), A113791(n+1)]`
-/

namespace A371419.P3976548082086756958
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037014 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371419.P3976548082086756958

/-! ## A371419.P2258225212072970312

`∩[A068306(n+1), A113791(n+1)]`
-/

namespace A371419.P2258225212072970312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113791 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371419.P2258225212072970312

/-! ## A371419.P14954987445160442419

`∩[A068306(n+1), A183026(n+1)]`
-/

namespace A371419.P14954987445160442419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068306 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371419.P14954987445160442419

/-! ## A371419.P17844057291402125

`∩[A057715(n+1), A183026(n+1)]`
-/

namespace A371419.P17844057291402125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057715 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371419.P17844057291402125

/-! ## A371419.P15425899774130713451

`∩[A113791(n+1), A273798(n+1)]`
-/

namespace A371419.P15425899774130713451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113791 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371419.P15425899774130713451

/-!
# A371420: Greater member of Carmichael's variant of amicable pair: numbers k < m such that s(k) = m and s(m) = k, where s(k) = A371418(k).

The programs for A371420, there is no canonical definition to state claims against.
-/

/-! ## A371420.P14073187729178274529

`∑{d}[A371419(n+1), #/2]`
-/

namespace A371420.P14073187729178274529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371419 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℚ) / 2

end

end A371420.P14073187729178274529

/-! ## A371420.P10861064275687260880

`A000203(A371419(n+1))/2`
-/

namespace A371420.P10861064275687260880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (A371419 (n + 1)).toNat : ℚ) / 2

end

end A371420.P10861064275687260880

/-! ## A371420.P8417296930671839702

`filter[A113791(n+1), A294934(#)]`
-/

namespace A371420.P8417296930671839702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294934 (f1 j).toNat = 1) n)

end

end A371420.P8417296930671839702

/-! ## A371420.P1839783052378610296

`filter[A113791(n+1), A348327(#)]`
-/

namespace A371420.P1839783052378610296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A371420.P1839783052378610296

/-! ## A371420.P10754000064289168012

`filter[A113791(n+1), A353760(#)]`
-/

namespace A371420.P10754000064289168012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113791 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353760 (f1 j).toNat = 1) n)

end

end A371420.P10754000064289168012

/-!
# A371421: Numbers whose aliquot-like sequence based on the largest aliquot divisor of the sum of divisors of n (A371418) terminates in a fixed point.

The programs for A371421, there is no canonical definition to state claims against.
-/

/-! ## A371421.P13055764413445887617

`comp[A371422(n+1)-1]+1`
-/

namespace A371421.P13055764413445887617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371422 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A371421.P13055764413445887617

/-! ## A371421.P9593158878503963589

`lt[A010355(A178220(n+1)), A178196(n)]`
-/

namespace A371421.P9593158878503963589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010355 (A178220 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178196 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371421.P9593158878503963589

/-! ## A371421.P13548948288409240937

`record[A326921(n+1)+A111852(n+1)]`
-/

namespace A371421.P13548948288409240937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326921 (n + 1) + A111852 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371421.P13548948288409240937

/-! ## A371421.P12814462945502182041

`lt[A023928(A275325(n+3)), A014963(n+1)]`
-/

namespace A371421.P12814462945502182041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023928 (A275325 (n + 3)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371421.P12814462945502182041

/-! ## A371421.P10332480174143308760

`lt[A122510(2*(n+1)), A131422(A224891(n+4))]`
-/

namespace A371421.P10332480174143308760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122510 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131422 (A224891 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371421.P10332480174143308760

/-!
# A371422: Numbers whose aliquot-like sequence based on the largest aliquot divisor of the sum of divisors of n (A371418) terminates in a cycle of length 2.

The programs for A371422, there is no canonical definition to state claims against.
-/

/-! ## A371422.P8590531854617588987

`comp[∪[A371421(n+1), n²]]`
-/

namespace A371422.P8590531854617588987
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371421 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A371422.P8590531854617588987

/-!
# A371424: Square array A(n, k), n, k > 0, read and filled in the greedy way by upward antidiagonals with distinct positive integers such that each term except A(1, 1) is a multiple of some earlier term on the same row or column.

The programs for A371424, there is no canonical definition to state claims against.
-/

/-! ## A371424.P3514651246527803349

`A371425(n+1)%A024779(n+1)`
-/

namespace A371424.P3514651246527803349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371425 (n + 1)) (A024779 (n + 1))

end

end A371424.P3514651246527803349

/-! ## A371424.P4845883122072784560

`A371425(n+1)+A000007(A102726(n))`
-/

namespace A371424.P4845883122072784560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371425 (n + 1) + A000007 (A102726 n).toNat

end

end A371424.P4845883122072784560

/-! ## A371424.P8835026514130395996

`A371425(n+1)%A003381(A001405(n))`
-/

namespace A371424.P8835026514130395996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A371425 (n + 1)) (A003381 (A001405 n).toNat)

end

end A371424.P8835026514130395996

/-! ## A371424.P8739357727744988206

`A193592(A229311(n+1)-A371425(n+1))`
-/

namespace A371424.P8739357727744988206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 (A229311 (n + 1) - A371425 (n + 1)).toNat

end

end A371424.P8739357727744988206

/-! ## A371424.P9781585641266907922

`A371425(n+1)+A000007(A306308(n+3))`
-/

namespace A371424.P9781585641266907922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371425 (n + 1) + A000007 (A306308 (n + 3)).toNat

end

end A371424.P9781585641266907922

/-!
# A371426: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2 - x^3) ).

The programs for A371426, there is no canonical definition to state claims against.
-/

/-! ## A371426.P10131854755650358251

`A335456(n)+A124765(A045688(n))`
-/

namespace A371426.P10131854755650358251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335456 n + A124765 (A045688 n).toNat

end

end A371426.P10131854755650358251

/-! ## A371426.P8238291607749235700

`A335456(n)+A171899(A073192(n))`
-/

namespace A371426.P8238291607749235700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335456 n + A171899 (A073192 n).toNat

end

end A371426.P8238291607749235700

/-! ## A371426.P6877960906682232063

`A335456(n)+A326034(A060354(n))`
-/

namespace A371426.P6877960906682232063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335456 n + A326034 (A060354 n).toNat

end

end A371426.P6877960906682232063

/-!
# A371427: Expansion of (1/x) * Series_Reversion( x / ((1+x)^2 - x^4) ).

The programs for A371427, there is no canonical definition to state claims against.
-/

/-! ## A371427.P9260272284055224056

`A226233(A200465(n+1))`
-/

namespace A371427.P9260272284055224056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226233 (A200465 (n + 1)).toNat

end

end A371427.P9260272284055224056

/-! ## A371427.P2226160517032158901

`A108954(A360090(n+1))`
-/

namespace A371427.P2226160517032158901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (A360090 (n + 1)).toNat

end

end A371427.P2226160517032158901

/-! ## A371427.P11258150405365655538

`∑[A317742(A000975(Δ[n²]))]`
-/

namespace A371427.P11258150405365655538
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317742 (A000975 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371427.P11258150405365655538

/-!
# A371428: Expansion of (1/x) * Series_Reversion( x / ((1+x)^3 - x^2) ).

The programs for A371428, there is no canonical definition to state claims against.
-/

/-! ## A371428.P8420560650630118119

`∑[A138997(∑[A074600(n)])]`
-/

namespace A371428.P8420560650630118119
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074600 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138997 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371428.P8420560650630118119

/-! ## A371428.P2413609169170410385

`A394219(A004253(n+1))+A065133(n+2)`
-/

namespace A371428.P2413609169170410385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394219 (A004253 (n + 1)).toNat + A065133 (n + 2)

end

end A371428.P2413609169170410385

/-!
# A371429: Expansion of (1/x) * Series_Reversion( x / ((1+x)^3 - x^4) ).

The programs for A371429, there is no canonical definition to state claims against.
-/

/-! ## A371429.P1942176764209792533

`A349536(A151129(n))`
-/

namespace A371429.P1942176764209792533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349536 (A151129 n).toNat

end

end A371429.P1942176764209792533

/-! ## A371429.P11204527485766782815

`A302540(A007052(n))+A053188(n)`
-/

namespace A371429.P11204527485766782815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302540 (A007052 n).toNat + A053188 n

end

end A371429.P11204527485766782815

/-!
# A371430: Expansion of (1/x) * Series_Reversion( x / ((1+x)^4 - x^2) ).

The programs for A371430, there is no canonical definition to state claims against.
-/

/-! ## A371430.P371048751044709120

`A000720(A034513(n)-A005899(n))`
-/

namespace A371430.P371048751044709120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A034513 n - A005899 n).toNat

end

end A371430.P371048751044709120

/-! ## A371430.P3045843996055187791

`A000720(A034513(n)-A002522(2*n))`
-/

namespace A371430.P3045843996055187791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A034513 n - A002522 (2 * n)).toNat

end

end A371430.P3045843996055187791

/-!
# A371431: Expansion of (1/x) * Series_Reversion( x * ((1-x)^2 + x^3) ).

The programs for A371431, there is no canonical definition to state claims against.
-/

/-! ## A371431.P16381556774343715070

`A285901(A150199(n))`
-/

namespace A371431.P16381556774343715070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285901 (A150199 n).toNat

end

end A371431.P16381556774343715070

/-! ## A371431.P16892645933423334295

`A239161(A193038(n+1))`
-/

namespace A371431.P16892645933423334295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239161 (A193038 (n + 1)).toNat

end

end A371431.P16892645933423334295

/-!
# A371432: Expansion of (1/x) * Series_Reversion( x * ((1-x)^2 + x^4) ).

The programs for A371432, there is no canonical definition to state claims against.
-/

/-! ## A371432.P10598446484379947088

`A368937(n)-A098841(3*n+2)`
-/

namespace A371432.P10598446484379947088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368937 n - A098841 (3 * n + 2)

end

end A371432.P10598446484379947088

/-! ## A371432.P2648426763293312359

`A067585(A358326(n))+A010683(n)`
-/

namespace A371432.P2648426763293312359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067585 (A358326 n).toNat + A010683 n

end

end A371432.P2648426763293312359

/-!
# A371434: Expansion of (1/x) * Series_Reversion( x * ((1-x)^3 + x^2) ).

The programs for A371434, there is no canonical definition to state claims against.
-/

/-! ## A371434.P9083521160768699194

`A005206(A045721(n)+A005206(n))`
-/

namespace A371434.P9083521160768699194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A045721 n + A005206 n).toNat

end

end A371434.P9083521160768699194

/-! ## A371434.P4413794977241206895

`A005378(A220080(n)+A045721(n))`
-/

namespace A371434.P4413794977241206895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005378 (A220080 n + A045721 n).toNat

end

end A371434.P4413794977241206895

/-!
# A371435: Expansion of (1/x) * Series_Reversion( x * ((1-x)^3 + x^4) ).

The programs for A371435, there is no canonical definition to state claims against.
-/

/-! ## A371435.P11572497873326425526

`A014681(A366090(n))-1`
-/

namespace A371435.P11572497873326425526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A366090 n).toNat - 1

end

end A371435.P11572497873326425526

/-! ## A371435.P3157740336012221388

`A380817(A366090(n)-A114919(n))`
-/

namespace A371435.P3157740336012221388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380817 (A366090 n - A114919 n).toNat

end

end A371435.P3157740336012221388

/-!
# A371436: Expansion of (1/x) * Series_Reversion( x * ((1-x)^4 + x) ).

The programs for A371436, there is no canonical definition to state claims against.
-/

/-! ## A371436.P9402325760350673683

`A107819(A072338(n))`
-/

namespace A371436.P9402325760350673683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107819 (A072338 n).toNat

end

end A371436.P9402325760350673683

/-!
# A371437: Number of intersection points formed by drawing all least squares regression lines fitted to n points (j,y_j), 0 <= j < n, where each y_j is 0 or 1.

The programs for A371437, there is no canonical definition to state claims against.
-/

/-! ## A371437.P18172200261843608548

`A371438(n+2)+1-A371439(n+2)`
-/

namespace A371437.P18172200261843608548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371438 (n + 2) + (1 - A371439 (n + 2))

end

end A371437.P18172200261843608548

/-! ## A371437.P10455933401710794328

`A004442(A371438(n+2))-A371439(n+2)`
-/

namespace A371437.P10455933401710794328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A371438 (n + 2)).toNat - A371439 (n + 2)

end

end A371437.P10455933401710794328

/-!
# A371438: Number of (finite) line segments formed by drawing all least squares regression lines fitted to n points (j,y_j), 0 <= j < n, where each y_j is 0 or 1.

The programs for A371438, there is no canonical definition to state claims against.
-/

/-! ## A371438.P7977939897819503804

`A371437(n+2)+A371439(n+2)-1`
-/

namespace A371438.P7977939897819503804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371437 (n + 2) + (A371439 (n + 2) - 1)

end

end A371438.P7977939897819503804

/-! ## A371438.P16489102480364713160

`A004442(A371439(n+2)+A371437(n+2))`
-/

namespace A371438.P16489102480364713160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A371439 (n + 2) + A371437 (n + 2)).toNat

end

end A371438.P16489102480364713160

/-!
# A371439: Number of bounded polygonal regions formed by drawing all least squares regression lines fitted to n points (j,y_j), 0 <= j < n, where each y_j is 0 or 1.

The programs for A371439, there is no canonical definition to state claims against.
-/

/-! ## A371439.P12985868224928280826

`A371438(n+2)+1-A371437(n+2)`
-/

namespace A371439.P12985868224928280826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371438 (n + 2) + (1 - A371437 (n + 2))

end

end A371439.P12985868224928280826

/-! ## A371439.P15886643438234205563

`A004442(A371438(n+2))-A371437(n+2)`
-/

namespace A371439.P15886643438234205563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A371438 (n + 2)).toNat - A371437 (n + 2)

end

end A371439.P15886643438234205563

/-!
# A371440: Count of iteration steps for the iterates in A267371 that end in 1.

The programs for A371440, there is no canonical definition to state claims against.
-/

/-! ## A371440.P850613134334855865

`eq[1, A267371(A267372(n))]`
-/

namespace A371440.P850613134334855865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267371 (A267372 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A371440.P850613134334855865

/-!
# A371441: a(n) = a(n-1)*3^n + 1 where a(0)=1.

The programs for A371441, the canonical program `A371441.P14827111508039347325` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371441 has offset 0).

The definition of A371441 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)*3^n+1` (program `A371441.P14827111508039347325`, by `A371441.P14827111508039347325.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371441.P14827111508039347325

`a(n-1)*3^n+1` with `a(0)=1`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A371441

/-- `a(n-1)*3^n+1` -/
def P14827111508039347325.Spec : Prop :=
  ∀ n, (P14827111508039347325.a n : ℤ) = A371441 n

theorem P14827111508039347325.correct : P14827111508039347325.Spec := by
  intro n
  simp only [A371441]

end A371441

/-! ## A371441.P12256889268135590261

`lcm(3^n, a(n-1))+1` with `a(0)=1`
-/

namespace A371441.P12256889268135590261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.lcm (3 ^ n) (a (n - 1)) + 1

end

end A371441.P12256889268135590261

namespace A371441

/-- `lcm(3^n, a(n-1))+1` -/
def P12256889268135590261.Spec : Prop :=
  ∀ n, (P12256889268135590261.a n : ℤ) = A371441 n

end A371441

/-! ## A371441.P3038648443058149716

`a(n-1)/(1/3)^n+1` with `a(0)=1`
-/

namespace A371441.P3038648443058149716
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 3) ^ n + 1

end

end A371441.P3038648443058149716

namespace A371441

/-- `a(n-1)/(1/3)^n+1` -/
def P3038648443058149716.Spec : Prop :=
  ∀ n, P3038648443058149716.a n = (A371441 n : ℚ)

end A371441

/-! ## A371441.P1178613166228793605

`A118182(Δ[n²])`
-/

namespace A371441.P1178613166228793605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118182 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A371441.P1178613166228793605

namespace A371441

/-- `A118182(Δ[n²])` -/
def P1178613166228793605.Spec : Prop :=
  ∀ n, P1178613166228793605.a n = A371441 n

end A371441

/-! ## A371441.P13495429516468418412

`A117263(n+1)-A047656(n+1)`
-/

namespace A371441.P13495429516468418412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117263 (n + 1) - A047656 (n + 1)

end

end A371441.P13495429516468418412

namespace A371441

/-- `A117263(n+1)-A047656(n+1)` -/
def P13495429516468418412.Spec : Prop :=
  ∀ n, P13495429516468418412.a n = A371441 n

end A371441

/-!
# A371442: For any positive integer n with binary digits (b_1, ..., b_w) (where b_1 = 1), the binary digits of a(n) are (b_1, b_3, ..., b_{2*ceiling(w/2)-1}); a(0) = 0.

The programs for A371442, there is no canonical definition to state claims against.
-/

/-! ## A371442.P13483624538658366606

`A393253(n)-A371459(n)`
-/

namespace A371442.P13483624538658366606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393253 n - A371459 n

end

end A371442.P13483624538658366606

/-! ## A371442.P3338676819381219833

`xor(A309952(n), A371459(n))`
-/

namespace A371442.P3338676819381219833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A309952 n) (A371459 n)

end

end A371442.P3338676819381219833

/-! ## A371442.P15214371960843739406

`A344259(A330081(n))`
-/

namespace A371442.P15214371960843739406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344259 (A330081 n).toNat

end

end A371442.P15214371960843739406

/-! ## A371442.P15531083043545525994

`A309952(A377414(n))`
-/

namespace A371442.P15531083043545525994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 (A377414 n).toNat

end

end A371442.P15531083043545525994

/-! ## A371442.P13788169169138007798

`A371459(A004760(n+2))`
-/

namespace A371442.P13788169169138007798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371459 (A004760 (n + 2)).toNat

end

end A371442.P13788169169138007798

/-! ## A371442.P8490656253875127630

`A371459(A062383(n)+n)`
-/

namespace A371442.P8490656253875127630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371459 (A062383 n + (n : ℤ)).toNat

end

end A371442.P8490656253875127630

/-!
# A371443: Numbers whose binary indices are nonprime numbers.

The programs for A371443, there is no canonical definition to state claims against.
-/

/-! ## A371443.P13065183926647036829

`record[and(n+1, -87)]`
-/

namespace A371443.P13065183926647036829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (-87)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371443.P13065183926647036829

/-! ## A371443.P11686916028346326941

`A057300(A381957(n+1))`
-/

namespace A371443.P11686916028346326941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057300 (A381957 (n + 1)).toNat

end

end A371443.P11686916028346326941

/-! ## A371443.P15637389581122227383

`∑[A294371(A006995(xor(n, n+1)+1))]`
-/

namespace A371443.P15637389581122227383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294371 (A006995 (Nat.xor n (n + 1) + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371443.P15637389581122227383

/-!
# A371444: Numbers whose binary indices are composite numbers.

The programs for A371444, there is no canonical definition to state claims against.
-/

/-! ## A371444.P17179333701174910358

`A042948(A042948(A079599(A047476(n+2))))`
-/

namespace A371444.P17179333701174910358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 (A042948 (A079599 (A047476 (n + 2)).toNat).toNat).toNat

end

end A371444.P17179333701174910358

/-! ## A371444.P629276305883664644

`A371443(2*(n+1))`
-/

namespace A371444.P629276305883664644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371443 (2 * (n + 1))

end

end A371444.P629276305883664644

/-! ## A371444.P13295480436491145388

`A000027(A371443(n+2+n))`
-/

namespace A371444.P13295480436491145388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A371443 (n + 2 + n)).toNat

end

end A371444.P13295480436491145388

/-! ## A371444.P11009000843039684447

`filter[A371443(n+1), A011765(#)]`
-/

namespace A371444.P11009000843039684447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A011765 (f1 j).toNat = 1) n)

end

end A371444.P11009000843039684447

/-! ## A371444.P9855949078050234631

`filter[A371443(n+1), A036988(#)]`
-/

namespace A371444.P9855949078050234631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A036988 (f1 j).toNat = 1) n)

end

end A371444.P9855949078050234631

/-!
# A371445: Numbers whose distinct prime indices are binary carry-connected and have no binary containments.

The programs for A371445, there is no canonical definition to state claims against.
-/

/-! ## A371445.P4028693562791017993

`A246655(n+1)-A307553(A219365(n+1))`
-/

namespace A371445.P4028693562791017993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246655 (n + 1) - A307553 (A219365 (n + 1)).toNat

end

end A371445.P4028693562791017993

/-!
# A371448: Numbers such that (1) the product of prime indices is squarefree, and (2) the binary indices of prime indices cover an initial interval of positive integers.

The programs for A371448, there is no canonical definition to state claims against.
-/

/-! ## A371448.P14249424969200711514

`∩[A302505(n+1), A371447(n+1)]`
-/

namespace A371448.P14249424969200711514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371447 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A371448.P14249424969200711514

/-! ## A371448.P9585812962337649982

`A371447(lt[A203850(3*n), A221528(3*n)])`
-/

namespace A371448.P9585812962337649982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203850 (3 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221528 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371447 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A371448.P9585812962337649982

/-!
# A371449: Numbers whose prime indices are not powers of 2.

The programs for A371449, there is no canonical definition to state claims against.
-/

/-! ## A371449.P8899153363698482590

`A007310(lt[A333627(3*n+2), A078937(n+2)])`
-/

namespace A371449.P8899153363698482590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333627 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078937 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A371449.P8899153363698482590

/-! ## A371449.P28423112126052597

`lt[A337667(n), A057961(A046816(n))]`
-/

namespace A371449.P28423112126052597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057961 (A046816 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A371449.P28423112126052597

/-! ## A371449.P6155169341783951455

`record[A246142(n+1)*A267872(n)]`
-/

namespace A371449.P6155169341783951455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246142 (n + 1) * A267872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371449.P6155169341783951455

/-! ## A371449.P3259789982497353868

`A007310(lt[A133165(n+1), A342501(n+4)])`
-/

namespace A371449.P3259789982497353868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342501 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A371449.P3259789982497353868

/-! ## A371449.P1671717082964271679

`eq[A117778(n+1), A259896(n)]`
-/

namespace A371449.P1671717082964271679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259896 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371449.P1671717082964271679

/-!
# A371450: MM-number of the set-system with BII-number n.

The programs for A371450, there is no canonical definition to state claims against.
-/

/-! ## A371450.P8498966025428827006

`A028234(A289173(n+1))`
-/

namespace A371450.P8498966025428827006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028234 (A289173 (n + 1)).toNat

end

end A371450.P8498966025428827006

/-! ## A371450.P6490850943153878497

`∏{p}[A001317(n), A325685(#)]`
-/

namespace A371450.P6490850943153878497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001317 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A325685 p

end

end A371450.P6490850943153878497

/-! ## A371450.P10930831521846044610

`A289441(3*A018296(n+1))`
-/

namespace A371450.P10930831521846044610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (3 * A018296 (n + 1)).toNat

end

end A371450.P10930831521846044610

/-! ## A371450.P14698211763220397326

`A289441(lcm(3, A018296(n+1)))`
-/

namespace A371450.P14698211763220397326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289441 (Int.lcm 3 (A018296 (n + 1)))

end

end A371450.P14698211763220397326

/-!
# A371451: Number of connected components of the binary indices of the prime indices of n.

The programs for A371451, there is no canonical definition to state claims against.
-/

/-! ## A371451.P11379136726701268485

`A326753(A087207(n+1)%A007700(n+1))`
-/

namespace A371451.P11379136726701268485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326753 (Int.tmod (A087207 (n + 1)) (A007700 (n + 1))).toNat

end

end A371451.P11379136726701268485

/-! ## A371451.P14169232491870419371

`A326753(A087207(n+1))`
-/

namespace A371451.P14169232491870419371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326753 (A087207 (n + 1)).toNat

end

end A371451.P14169232491870419371

/-! ## A371451.P17523807582135915496

`A000040(A325347(n+1))%A083399(n+1)`
-/

namespace A371451.P17523807582135915496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A325347 (n + 1)).toNat) (A083399 (n + 1))

end

end A371451.P17523807582135915496

/-! ## A371451.P913023019313876783

`gcd(A001221(n+1), A099291(A336315(n+1)))`
-/

namespace A371451.P913023019313876783
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001221 (n + 1)) (A099291 (A336315 (n + 1)).toNat)

end

end A371451.P913023019313876783

/-! ## A371451.P3832652878201403901

`gcd(A374996(A200750(n+3)), A392285(n+1))`
-/

namespace A371451.P3832652878201403901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A374996 (A200750 (n + 3)).toNat) (A392285 (n + 1))

end

end A371451.P3832652878201403901

/-!
# A371452: Number of connected components of the prime indices of the binary indices of n.

The programs for A371452, there is no canonical definition to state claims against.
-/

/-! ## A371452.P13785781457177417821

`A305079(A019565(n+1))`
-/

namespace A371452.P13785781457177417821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305079 (A019565 (n + 1)).toNat

end

end A371452.P13785781457177417821

/-! ## A371452.P13411046766783556806

`A360676(2*A278236(3*(n+1)))`
-/

namespace A371452.P13411046766783556806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360676 (2 * A278236 (3 * (n + 1))).toNat

end

end A371452.P13411046766783556806

/-! ## A371452.P18315342418868967856

`A043537(A269224(2*(n+1))+6)`
-/

namespace A371452.P18315342418868967856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043537 (A269224 (2 * (n + 1)) + 6).toNat

end

end A371452.P18315342418868967856

/-! ## A371452.P6144170843239242420

`A305501(A325094(n+1))`
-/

namespace A371452.P6144170843239242420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305501 (A325094 (n + 1)).toNat

end

end A371452.P6144170843239242420

/-! ## A371452.P10661340455925505002

`A124767(A065259(2*(n+1))%A229595(n+3))`
-/

namespace A371452.P10661340455925505002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (Int.tmod (A065259 (2 * (n + 1))) (A229595 (n + 3))).toNat

end

end A371452.P10661340455925505002

/-!
# A371453: Numbers whose binary indices are all squarefree semiprimes.

The programs for A371453, there is no canonical definition to state claims against.
-/

/-! ## A371453.P7322297692955032675

`A371454(A079599(n+1))`
-/

namespace A371453.P7322297692955032675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371454 (A079599 (n + 1)).toNat

end

end A371453.P7322297692955032675

/-! ## A371453.P15889896800277228104

`A371454(A047467(n+2))`
-/

namespace A371453.P15889896800277228104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371454 (A047467 (n + 2)).toNat

end

end A371453.P15889896800277228104

/-! ## A371453.P16842785396475439538

`A270804(A127988(n+1))`
-/

namespace A371453.P16842785396475439538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270804 (A127988 (n + 1)).toNat

end

end A371453.P16842785396475439538

/-!
# A371454: Numbers whose binary indices are all semiprimes.

The programs for A371454, there is no canonical definition to state claims against.
-/

/-! ## A371454.P16687279783795265306

`A371444(A037462(n+1))`
-/

namespace A371454.P16687279783795265306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371444 (A037462 (n + 1)).toNat

end

end A371454.P16687279783795265306

/-! ## A371454.P9835850848935961845

`filter[A371443(2*(n+1)), A271591(#)]`
-/

namespace A371454.P9835850848935961845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371443 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A271591 (f1 j).toNat = 1) n)

end

end A371454.P9835850848935961845

/-! ## A371454.P8635303373466836195

`A001285(A000079(n))*A380008(2*n+2)`
-/

namespace A371454.P8635303373466836195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A000079 n).toNat * A380008 (2 * n + 2)

end

end A371454.P8635303373466836195

/-! ## A371454.P6325171531808891962

`A000005(A054818(2*n+3))*A380008(2*(n+1))`
-/

namespace A371454.P6325171531808891962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A054818 (2 * n + 3)).toNat * A380008 (2 * (n + 1))

end

end A371454.P6325171531808891962

/-! ## A371454.P10107829646918944646

`A053669(A108928(3*n+1))*A380008(2*(n+1))`
-/

namespace A371454.P10107829646918944646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053669 (A108928 (3 * n + 1)).toNat * A380008 (2 * (n + 1))

end

end A371454.P10107829646918944646

/-!
# A371455: Numbers k such that if we take the binary indices of each prime index of k we get an antichain of sets.

The programs for A371455, there is no canonical definition to state claims against.
-/

/-! ## A371455.P11937873172044744243

`∪[A054314(n+1), A325097(n+1)]`
-/

namespace A371455.P11937873172044744243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054314 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A371455.P11937873172044744243

/-! ## A371455.P16282523351506643871

`∪[A054795(n+1), A325097(n+1)]`
-/

namespace A371455.P16282523351506643871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054795 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A371455.P16282523351506643871

/-! ## A371455.P10801257610220777647

`∪[A064439(n+1), A325097(n+1)]`
-/

namespace A371455.P10801257610220777647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325097 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A371455.P10801257610220777647

/-!
# A371457: Lexicographically earliest sequence of positive integers such that no three terms a(j), a(j+k), a(j+2k) (for any j and k) form a progression of the form p, p-q, p+q, where q >= 0.

The programs for A371457, there is no canonical definition to state claims against.
-/

/-! ## A371457.P8995306631412002212

`A373052(n+1)+A100910(A068039(n))`
-/

namespace A371457.P8995306631412002212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373052 (n + 1) + A100910 (A068039 n).toNat

end

end A371457.P8995306631412002212

/-! ## A371457.P5395122865935763925

`A268811(n+1)-A178798(A302367(n+1))`
-/

namespace A371457.P5395122865935763925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268811 (n + 1) - A178798 (A302367 (n + 1)).toNat

end

end A371457.P5395122865935763925

/-! ## A371457.P1996943967590669873

`A046693(A321722(n)%A229037(3*n+1))`
-/

namespace A371457.P1996943967590669873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046693 (Int.tmod (A321722 n) (A229037 (3 * n + 1))).toNat

end

end A371457.P1996943967590669873

/-! ## A371457.P11993584203814789089

`A100480(n+1)+A065202(A204989(n+1)+1)`
-/

namespace A371457.P11993584203814789089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100480 (n + 1) + A065202 (A204989 (n + 1) + 1).toNat

end

end A371457.P11993584203814789089

/-! ## A371457.P1098862029958868674

`A268811(n+1)+A100910(A344619(3*n+4))`
-/

namespace A371457.P1098862029958868674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268811 (n + 1) + A100910 (A344619 (3 * n + 4)).toNat

end

end A371457.P1098862029958868674

/-!
# A371458: Expansion of 1/(1 - x/(1 - 9*x^3)^(1/3)).

The programs for A371458, there is no canonical definition to state claims against.
-/

/-! ## A371458.P3263083932723225503

`A106829(A373292(n))`
-/

namespace A371458.P3263083932723225503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106829 (A373292 n).toNat

end

end A371458.P3263083932723225503

/-! ## A371458.P8072570623654461133

`A379740(A352944(n)+n)`
-/

namespace A371458.P8072570623654461133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379740 (A352944 n + (n : ℤ)).toNat

end

end A371458.P8072570623654461133

/-!
# A371459: For any positive integer with binary digits (b_1, ..., b_w) (where b_1 = 1), the binary digits of a(n), possibly with leading zeros, are (b_2, b_4, ..., b_{floor(w/2) * 2}); a(0) = 0.

The programs for A371459, there is no canonical definition to state claims against.
-/

/-! ## A371459.P11785537625353559595

`A393253(n)-A371442(n)`
-/

namespace A371459.P11785537625353559595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A393253 n - A371442 n

end

end A371459.P11785537625353559595

/-! ## A371459.P4283562606658194077

`xor(A309952(n), A371442(n))`
-/

namespace A371459.P4283562606658194077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A309952 n) (A371442 n)

end

end A371459.P4283562606658194077

/-! ## A371459.P4249378539928166619

`A371442(A377415(n))`
-/

namespace A371459.P4249378539928166619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371442 (A377415 n).toNat

end

end A371459.P4249378539928166619

/-! ## A371459.P8471791651712100482

`A309952(n-A377414(n))`
-/

namespace A371459.P8471791651712100482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309952 ((n : ℤ) - A377414 n).toNat

end

end A371459.P8471791651712100482

/-! ## A371459.P9220454175561425939

`A371442(n-A377414(n))`
-/

namespace A371459.P9220454175561425939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371442 ((n : ℤ) - A377414 n).toNat

end

end A371459.P9220454175561425939

/-! ## A371459.P5856944341772707610

`xor(A059906(A048647(n)), A371442(n))`
-/

namespace A371459.P5856944341772707610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A059906 (A048647 n).toNat) (A371442 n)

end

end A371459.P5856944341772707610

/-!
# A371460: Binomial transform of A355409.

The programs for A371460, there is no canonical definition to state claims against.
-/

/-! ## A371460.P18079037144919878062

`A131346(A025192(n))`
-/

namespace A371460.P18079037144919878062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131346 (A025192 n).toNat

end

end A371460.P18079037144919878062

/-!
# A371462: Numbers such that the arithmetic mean of its digits is equal to the population standard deviation of its digits.

The programs for A371462, there is no canonical definition to state claims against.
-/

/-! ## A371462.P9732582101893798007

`A283316(A001434(n)+1)+n*10^A055642(n)`
-/

namespace A371462.P9732582101893798007
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283316 (A001434 n + 1).toNat : ℚ) + (n : ℚ) * (10 : ℚ) ^ (A055642 n : ℤ)

end

end A371462.P9732582101893798007

/-!
# A371464: Numbers such that the arithmetic mean of its digits is equal to three times the population standard deviation of its digits.

The programs for A371464, there is no canonical definition to state claims against.
-/

/-! ## A371464.P5466927997395620348

`eq[A054054(n), A100771(n)]`
-/

namespace A371464.P5466927997395620348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100771 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371464.P5466927997395620348

/-! ## A371464.P11718149327604086410

`eq[A054054(n), A151950(n)]`
-/

namespace A371464.P11718149327604086410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054054 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371464.P11718149327604086410

/-! ## A371464.P14327883499689560899

`eq[A100771(n), A115353(n)]`
-/

namespace A371464.P14327883499689560899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100771 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115353 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371464.P14327883499689560899

/-! ## A371464.P11121377433337535503

`eq[A115353(n), A151950(n)]`
-/

namespace A371464.P11121377433337535503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115353 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A371464.P11121377433337535503

/-!
# A371470: Triangle read by rows: for 1 <= k <= n, T(n,k) is the least sum of decimal digits of numbers with n binary digits and binary weight k.

The programs for A371470, there is no canonical definition to state claims against.
-/

/-! ## A371470.P14075141845805672011

`A007953(A373289(n+1))`
-/

namespace A371470.P14075141845805672011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A373289 (n + 1)).toNat

end

end A371470.P14075141845805672011

/-! ## A371470.P14313415891842086533

`∑{digits}[∑[A000196(A004737(2^n))], #]`
-/

namespace A371470.P14313415891842086533
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A004737 (2 ^ n)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A371470.P14313415891842086533

/-!
# A371471: a(n) = binomial(n^2,n) mod n^5.

The programs for A371471, the canonical program `A371471.P14041758572633978769` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371471 has offset 1).

The definition of A371471 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C((n+1)², n+1)%((n+1)^5)` (program `A371471.P14041758572633978769`, by `A371471.P14041758572633978769.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A371471.P14041758572633978769

`C((n+1)², n+1)%((n+1)^5)`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A371471

/-- `C((n+1)², n+1)%((n+1)^5)` -/
def P14041758572633978769.Spec : Prop :=
  ∀ n, (P14041758572633978769.a n : ℤ) = A371471 (n + 1)

theorem P14041758572633978769.correct : P14041758572633978769.Spec := by
  intro n
  simp only [A371471, Nat.add_sub_cancel]

end A371471

/-! ## A371471.P15704809508708035980

`A014062(n+1)%A000584(n+1)`
-/

namespace A371471.P15704809508708035980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A014062 (n + 1)) (A000584 (n + 1))

end

end A371471.P15704809508708035980

namespace A371471

/-- `A014062(n+1)%A000584(n+1)` -/
def P15704809508708035980.Spec : Prop :=
  ∀ n, P15704809508708035980.a n = A371471 (n + 1)

end A371471

/-!
# A371472: Least positive number k such that binomial(k^2,k) is divisible by n^2.

The programs for A371472, there is no canonical definition to state claims against.
-/

/-! ## A371472.P5193236327905793305

`A371306((n+1)²)`
-/

namespace A371472.P5193236327905793305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371306 ((n + 1) ^ 2)

end

end A371472.P5193236327905793305

/-!
# A371473: a(1) = 1; for n>1, if a(n-1) is squarefree, a(n) = a(n-1) + n, otherwise a(n) = squarefree kernel of a(n-1).

The programs for A371473, there is no canonical definition to state claims against.
-/

/-! ## A371473.P2492221423387021757

`A000124(n+1)-A027748(A248767(n+1))`
-/

namespace A371473.P2492221423387021757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (n + 1) - A027748 (A248767 (n + 1)).toNat

end

end A371473.P2492221423387021757

/-!
# A371475: Smallest weak prime in base 2n+1.

The programs for A371475, there is no canonical definition to state claims against.
-/

/-! ## A371475.P2076179714982887600

`A186995(2*(n+1)+1)`
-/

namespace A371475.P2076179714982887600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186995 (2 * (n + 1) + 1)

end

end A371475.P2076179714982887600

/-! ## A371475.P14954188507474969010

`abs(A274922(A186995(n+3+n)))`
-/

namespace A371475.P14954188507474969010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A274922 (A186995 (n + 3 + n)).toNat|

end

end A371475.P14954188507474969010

/-!
# A371477: Positive integers that can be represented in an 8-bit floating point format.

The programs for A371477, there is no canonical definition to state claims against.
-/

/-! ## A371477.P4689505446281113657

`lt[n/2^val(n+1, 2), 16]+1`
-/

namespace A371477.P4689505446281113657
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A371477.P4689505446281113657

/-! ## A371477.P2362269916387704989

`lt[n/(xor(n, n+1)+1), 8]+1`
-/

namespace A371477.P2362269916387704989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A371477.P2362269916387704989

/-! ## A371477.P9237541985976229983

`record[A387050(n)]`
-/

namespace A371477.P9237541985976229983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387050 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A371477.P9237541985976229983

/-! ## A371477.P11905573150603041245

`eq[1, A309026(n)]`
-/

namespace A371477.P11905573150603041245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309026 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A371477.P11905573150603041245

/-! ## A371477.P8746511955465050918

`lt[A003963(n+1), 7]+1`
-/

namespace A371477.P8746511955465050918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A371477.P8746511955465050918

/-!
# A371481: Expansion of e.g.f. Product_{k>=1} (1 + x^k/k!)^(k*(k+1)/2).

The programs for A371481, there is no canonical definition to state claims against.
-/

/-! ## A371481.P243421571338760288

`or(n, A289497(A126390(n)))`
-/

namespace A371481.P243421571338760288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (A289497 (A126390 n).toNat)

end

end A371481.P243421571338760288

/-! ## A371481.P8603109854443773085

`ceil(A049919(3*n+5)/A099083(n+1))`
-/

namespace A371481.P8603109854443773085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A049919 (3 * n + 5) : ℚ) / (A099083 (n + 1) : ℚ)⌉

end

end A371481.P8603109854443773085

/-!
# A371482: Expansion of e.g.f. Product_{k>=1} (1 + x^k/k!)^(2^k).

The programs for A371482, there is no canonical definition to state claims against.
-/

/-! ## A371482.P5266332470644389249

`2*A179146(a(n-1))` with `a(0)=1, a(1)=2`
-/

namespace A371482.P5266332470644389249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * A179146 (a (n - 1)).toNat

end

end A371482.P5266332470644389249

/-!
# A371483: G.f. A(x) satisfies A(x) = 1 / (1 - x*A(x) / (1-x))^3.

The programs for A371483, there is no canonical definition to state claims against.
-/

/-! ## A371483.P9335912149116562354

`∑[∑[A320533(A263823(n))]]`
-/

namespace A371483.P9335912149116562354
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320533 (A263823 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371483.P9335912149116562354

/-!
# A371484: Expansion of e.g.f. Product_{k>=1} (1 + x^k/k!)^(2^(k-1)).

The programs for A371484, there is no canonical definition to state claims against.
-/

/-! ## A371484.P2953622426038467004

`A076438(A041891(n))`
-/

namespace A371484.P2953622426038467004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076438 (A041891 n).toNat

end

end A371484.P2953622426038467004

/-! ## A371484.P9763589281507190099

`A131914(or(1, A007870(n)))`
-/

namespace A371484.P9763589281507190099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131914 (Int.lor 1 (A007870 n)).toNat

end

end A371484.P9763589281507190099

/-!
# A371485: Expansion of e.g.f. Product_{k>=2} 1 / (1 - x^k/k!).

The programs for A371485, there is no canonical definition to state claims against.
-/

/-! ## A371485.P2774268227961489427

`A005651(n)-A327827(n)`
-/

namespace A371485.P2774268227961489427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005651 n - A327827 n

end

end A371485.P2774268227961489427

/-! ## A371485.P1701816062958875616

`A327801(∑[n])-A327827(n)`
-/

namespace A371485.P1701816062958875616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327801 (∑ j ∈ Finset.range (n + 1), f1 j) - A327827 n

end

end A371485.P1701816062958875616

/-! ## A371485.P6048010201061077474

`∑{d}[A028310(n), #*A261600(#)]-A327827(n)`
-/

namespace A371485.P6048010201061077474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A261600 d - A327827 n

end

end A371485.P6048010201061077474

/-! ## A371485.P17232683009767504916

`A309973(∑[n]+n)-A327827(n)`
-/

namespace A371485.P17232683009767504916
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309973 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A327827 n

end

end A371485.P17232683009767504916

/-! ## A371485.P9602878547472702352

`A261719(A000217(n)+n)-A327827(n)`
-/

namespace A371485.P9602878547472702352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261719 (A000217 n + (n : ℤ)).toNat - A327827 n

end

end A371485.P9602878547472702352

/-!
# A371486: G.f. A(x) satisfies A(x) = 1 / (1 - x*A(x) / (1-x))^4.

The programs for A371486, there is no canonical definition to state claims against.
-/

/-! ## A371486.P4571731958379176798

`A110654(A144263(n)+A015532(n))`
-/

namespace A371486.P4571731958379176798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A144263 n + A015532 n).toNat

end

end A371486.P4571731958379176798

/-!
# A371487: Expansion of e.g.f. Product_{k>=2} 1 / (1 - x^k/k).

The programs for A371487, there is no canonical definition to state claims against.
-/

/-! ## A371487.P8418396924760179904

`lcm(n-1, A238781(A365542(n+1)+1))`
-/

namespace A371487.P8418396924760179904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (A238781 (A365542 (n + 1) + 1).toNat)

end

end A371487.P8418396924760179904

/-!
# A371490: Expansion of 1/(1 - x/(1 - 8*x)^(1/4)).

The programs for A371490, there is no canonical definition to state claims against.
-/

/-! ## A371490.P13531898910386487022

`A049093(A122455(n))`
-/

namespace A371490.P13531898910386487022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (A122455 n).toNat

end

end A371490.P13531898910386487022

/-! ## A371490.P17228457577113698841

`A049825(A001246(n))+A001764(n)`
-/

namespace A371490.P17228457577113698841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049825 (A001246 n).toNat + A001764 n

end

end A371490.P17228457577113698841

/-!
# A371491: a(n) = Sum_{1 <= x_1, x_2, x_3, x_4, x_5 <= n} ( n/gcd(x_1, x_2, x_3, x_4, x_5, n) )^3.

The programs for A371491, the canonical program `A371491.P18626456264356765` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371491 has offset 1).

The definition of A371491 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371491.P18626456264356765

`∑{d}[n+1, A013956(#)*A334659((n+1)/#)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A371491

/-- `∑{d}[n+1, A013956(#)*A334659((n+1)/#)]` -/
def P18626456264356765.Spec : Prop :=
  ∀ n, P18626456264356765.a n = A371491 (n + 1)

theorem P18626456264356765.correct : P18626456264356765.Spec := by
  intro n
  simp only [A371491, Nat.add_sub_cancel]

end A371491

/-! ## A371491.P844649455065510213

`∑{d}[n+1, A189393(#)*A372966((n+1)/#)]`
-/

namespace A371491.P844649455065510213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A189393 d * A372966 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A371491.P844649455065510213

namespace A371491

/-- `∑{d}[n+1, A189393(#)*A372966((n+1)/#)]` -/
def P844649455065510213.Spec : Prop :=
  ∀ n, P844649455065510213.a n = A371491 (n + 1)

end A371491

/-! ## A371491.P4465243502031081538

`∑{d}[n+1, A306412(#)*A372964((n+1)/#)]`
-/

namespace A371491.P4465243502031081538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A306412 d * A372964 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A371491.P4465243502031081538

namespace A371491

/-- `∑{d}[n+1, A306412(#)*A372964((n+1)/#)]` -/
def P4465243502031081538.Spec : Prop :=
  ∀ n, P4465243502031081538.a n = A371491 (n + 1)

end A371491

/-!
# A371492: a(n) = Sum_{1 <= x_1, x_2, x_3 <= n} ( gcd(x_1, n)/gcd(x_1, x_2, x_3, n) )^2.

The programs for A371492, the canonical program `A371492.P8329581871496110581` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A371492 has offset 1).

The definition of A371492 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A371492.P8329581871496110581

`∑{d}[n+1, A053191(#)*A084218((n+1)/#)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A371492

/-- `∑{d}[n+1, A053191(#)*A084218((n+1)/#)]` -/
def P8329581871496110581.Spec : Prop :=
  ∀ n, P8329581871496110581.a n = A371492 (n + 1)

theorem P8329581871496110581.correct : P8329581871496110581.Spec := by
  intro n
  simp only [A371492, Nat.add_sub_cancel]

end A371492

/-! ## A371492.P3791382797432309559

`∑{d}[n+1, A068963(#)*A379833((n+1)/#)]`
-/

namespace A371492.P3791382797432309559
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A068963 d * A379833 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A371492.P3791382797432309559

namespace A371492

/-- `∑{d}[n+1, A068963(#)*A379833((n+1)/#)]` -/
def P3791382797432309559.Spec : Prop :=
  ∀ n, P3791382797432309559.a n = A371492 (n + 1)

end A371492

/-! ## A371492.P3627007163502608186

`∑{d}[n+1, A349469(#)*A372952((n+1)/#)]`
-/

namespace A371492.P3627007163502608186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A349469 d * A372952 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A371492.P3627007163502608186

namespace A371492

/-- `∑{d}[n+1, A349469(#)*A372952((n+1)/#)]` -/
def P3627007163502608186.Spec : Prop :=
  ∀ n, P3627007163502608186.a n = A371492 (n + 1)

end A371492

/-!
# A371493: Expansion of e.g.f. Product_{k>=2} (1 + x^k/k).

The programs for A371493, there is no canonical definition to state claims against.
-/

/-! ## A371493.P1216324350841560992

`A007838(n)-n*a(n-1)` with `a(0)=1`
-/

namespace A371493.P1216324350841560992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007838 n - (n : ℤ) * a (n - 1)

end

end A371493.P1216324350841560992

/-!
# A371494: G.f. A(x) satisfies A(x) = 1 / (1 - x*A(x) / (1+x))^2.

The programs for A371494, there is no canonical definition to state claims against.
-/

/-! ## A371494.P9300214657597164690

`A156562(A150296(n))`
-/

namespace A371494.P9300214657597164690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156562 (A150296 n).toNat

end

end A371494.P9300214657597164690

/-! ## A371494.P1330362197549440354

`∑[A005041(A323313(n))]`
-/

namespace A371494.P1330362197549440354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A323313 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A371494.P1330362197549440354

/-!
# A371495: G.f. A(x) satisfies A(x) = 1 / (1 - x*A(x) / (1+x))^3.

The programs for A371495, there is no canonical definition to state claims against.
-/

/-! ## A371495.P14760043900350142081

`A114391(∑[A117557(n)])`
-/

namespace A371495.P14760043900350142081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117557 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114391 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A371495.P14760043900350142081

/-!
# A371496: G.f. A(x) satisfies A(x) = 1 / (1 - x*A(x) / (1+x))^4.

The programs for A371496, there is no canonical definition to state claims against.
-/

/-! ## A371496.P3737932187245161821

`A110654(xor(n, A077147(n+1)))`
-/

namespace A371496.P3737932187245161821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (Int.xor (n : ℤ) (A077147 (n + 1))).toNat

end

end A371496.P3737932187245161821

