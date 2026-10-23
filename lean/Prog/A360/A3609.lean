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
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
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
# A360902: Numbers with the same number of squarefree divisors and powerful divisors.

The programs for A360902, the canonical program `A360902.P6311258266522548843` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360902 has offset 1).

The definition of A360902 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 954 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360902.P6311258266522548843

`eq[A000005(A007947(n+1)), A005361(n+1)]+1`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A360902

/-- `eq[A000005(A007947(n+1)), A005361(n+1)]+1` -/
def P6311258266522548843.Spec : Prop :=
  ∀ n, (P6311258266522548843.a n : ℤ) = A360902 (n + 1)

theorem P6311258266522548843.correct : P6311258266522548843.Spec := by
  intro n
  simp only [A360902, Nat.add_sub_cancel]

end A360902

/-! ## A360902.P12663390828123270002

`eq[A005361(n+1), A034444(n+1)]+1`
-/

namespace A360902.P12663390828123270002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A360902.P12663390828123270002

namespace A360902

/-- `eq[A005361(n+1), A034444(n+1)]+1` -/
def P12663390828123270002.Spec : Prop :=
  ∀ n, (P12663390828123270002.a n : ℤ) = A360902 (n + 1)

end A360902

/-! ## A360902.P5169927226361774006

`eq[A322327(n+1), A360969(n+1)]+1`
-/

namespace A360902.P5169927226361774006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322327 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360969 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A360902.P5169927226361774006

namespace A360902

/-- `eq[A322327(n+1), A360969(n+1)]+1` -/
def P5169927226361774006.Spec : Prop :=
  ∀ n, (P5169927226361774006.a n : ℤ) = A360902 (n + 1)

end A360902

/-! ## A360902.P11127682326401050428

`eq[A057427(n), A358580(A145154(n))]`
-/

namespace A360902.P11127682326401050428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358580 (A145154 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A360902.P11127682326401050428

namespace A360902

/-- `eq[A057427(n), A358580(A145154(n))]` -/
def P11127682326401050428.Spec : Prop :=
  ∀ n, (P11127682326401050428.a n : ℤ) = A360902 (n + 1)

end A360902

/-!
# A360903: a(n) is the least number that has exactly 2^n squarefree divisors and exactly 2^n powerful divisors.

The programs for A360903, there is no canonical definition to state claims against.
-/

/-! ## A360903.P11379729199678598889

`A002110(n)*A037992(n)`
-/

namespace A360903.P11379729199678598889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002110 n * A037992 n

end

end A360903.P11379729199678598889

/-! ## A360903.P5091097139235282933

`sqrt(A061742(n))*A037992(n)`
-/

namespace A360903.P5091097139235282933
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A061742 n : ℝ) * (A037992 n : ℝ)

end

end A360903.P5091097139235282933

/-! ## A360903.P2527032121658320187

`∏[A084400(n+1)]*A002110(n)`
-/

namespace A360903.P2527032121658320187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A002110 n

end

end A360903.P2527032121658320187

/-! ## A360903.P2194681704888319927

`∏[record[A223490(n+1)]]*A002110(n)`
-/

namespace A360903.P2194681704888319927
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223490 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A002110 n

end

end A360903.P2194681704888319927

/-! ## A360903.P5818210084358269632

`A066616(record[A213925(n+1)])*A002110(n)`
-/

namespace A360903.P5818210084358269632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213925 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066616 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A002110 n

end

end A360903.P5818210084358269632

/-!
# A360904: Numbers k such that k and k+1 both have the same number of squarefree divisors and powerful divisors.

The programs for A360904, there is no canonical definition to state claims against.
-/

/-! ## A360904.P14068688467871531008

`∩[A360902(n+1)-1, A360902(n+1)]`
-/

namespace A360904.P14068688467871531008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360902 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360902 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360904.P14068688467871531008

/-!
# A360906: Numbers with the same number of cubefree divisors and 3-full divisors.

The programs for A360906, there is no canonical definition to state claims against.
-/

/-! ## A360906.P744600670377784633

`A130916(A343324(n+1))`
-/

namespace A360906.P744600670377784633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130916 (A343324 (n + 1)).toNat

end

end A360906.P744600670377784633

/-!
# A360908: Multiplicative with a(p^e) = 2*e - 1.

The programs for A360908, the canonical program `A360908.P5674163390378950637` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360908 has offset 1).

The definition of A360908 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A361430, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360908.P5674163390378950637

`A361430((n+1)²)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A360908

/-- `A361430((n+1)²)` -/
def P5674163390378950637.Spec : Prop :=
  ∀ n, P5674163390378950637.a n = A360908 (n + 1)

theorem P5674163390378950637.correct : P5674163390378950637.Spec := by
  intro n
  simp only [A360908, Nat.add_sub_cancel]

end A360908

/-! ## A360908.P2638276377974546782

`abs(∏{e}[n+1, 1-2*#])`
-/

namespace A360908.P2638276377974546782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f1 n), (1 - (2 * Nat.factorization (f1 n) p : ℤ))|

end

end A360908.P2638276377974546782

namespace A360908

/-- `abs(∏{e}[n+1, 1-2*#])` -/
def P2638276377974546782.Spec : Prop :=
  ∀ n, P2638276377974546782.a n = A360908 (n + 1)

end A360908

/-! ## A360908.P14928290504492114612

`∏{p}[n+1, val((n+1)², #)-1]`
-/

namespace A360908.P14928290504492114612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((SequenceMachineLib.valuation ((n + 1) ^ 2) p : ℤ) - 1)

end

end A360908.P14928290504492114612

namespace A360908

/-- `∏{p}[n+1, val((n+1)², #)-1]` -/
def P14928290504492114612.Spec : Prop :=
  ∀ n, P14928290504492114612.a n = A360908 (n + 1)

end A360908

/-! ## A360908.P12944800053930273343

`∏{p}[n+1, val((n+1)²/#, #)]`
-/

namespace A360908.P12944800053930273343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (p : ℚ))).toNat p

end

end A360908.P12944800053930273343

namespace A360908

/-- `∏{p}[n+1, val((n+1)²/#, #)]` -/
def P12944800053930273343.Spec : Prop :=
  ∀ n, (P12944800053930273343.a n : ℤ) = A360908 (n + 1)

end A360908

/-! ## A360908.P4215976889387639350

`∑{d}[n+1, A379012(#)]`
-/

namespace A360908.P4215976889387639350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A379012 d

end

end A360908.P4215976889387639350

namespace A360908

/-- `∑{d}[n+1, A379012(#)]` -/
def P4215976889387639350.Spec : Prop :=
  ∀ n, P4215976889387639350.a n = A360908 (n + 1)

end A360908

/-! ## A360908.P9814208840785566213

`∏{e}[n+1, A004273(#)]`
-/

namespace A360908.P9814208840785566213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A004273 (Nat.factorization (f1 n) p)

end

end A360908.P9814208840785566213

namespace A360908

/-- `∏{e}[n+1, A004273(#)]` -/
def P9814208840785566213.Spec : Prop :=
  ∀ n, P9814208840785566213.a n = A360908 (n + 1)

end A360908

/-! ## A360908.P4128578700439109159

`A048691(A003557(n+1))`
-/

namespace A360908.P4128578700439109159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A003557 (n + 1)).toNat

end

end A360908.P4128578700439109159

namespace A360908

/-- `A048691(A003557(n+1))` -/
def P4128578700439109159.Spec : Prop :=
  ∀ n, P4128578700439109159.a n = A360908 (n + 1)

end A360908

/-! ## A360908.P2727284308262299893

`A048691(A292589(n+1))`
-/

namespace A360908.P2727284308262299893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A292589 (n + 1)).toNat

end

end A360908.P2727284308262299893

namespace A360908

/-- `A048691(A292589(n+1))` -/
def P2727284308262299893.Spec : Prop :=
  ∀ n, P2727284308262299893.a n = A360908 (n + 1)

end A360908

/-! ## A360908.P127948955659092153

`A048691(A396938(n+1))`
-/

namespace A360908.P127948955659092153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048691 (A396938 (n + 1)).toNat

end

end A360908.P127948955659092153

namespace A360908

/-- `A048691(A396938(n+1))` -/
def P127948955659092153.Spec : Prop :=
  ∀ n, P127948955659092153.a n = A360908 (n + 1)

end A360908

/-! ## A360908.P7449022711508375182

`filter[A370329(n+1), A000035(#)]`
-/

namespace A360908.P7449022711508375182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370329 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A360908.P7449022711508375182

namespace A360908

/-- `filter[A370329(n+1), A000035(#)]` -/
def P7449022711508375182.Spec : Prop :=
  ∀ n, P7449022711508375182.a n = A360908 (n + 1)

end A360908

/-! ## A360908.P4329825370717014594

`∏{e}[A102631(n+1), #]`
-/

namespace A360908.P4329825370717014594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A360908.P4329825370717014594

namespace A360908

/-- `∏{e}[A102631(n+1), #]` -/
def P4329825370717014594.Spec : Prop :=
  ∀ n, (P4329825370717014594.a n : ℤ) = A360908 (n + 1)

end A360908

/-! ## A360908.P5275534936601871339

`∏{e}[A278254(n+1), #-1]`
-/

namespace A360908.P5275534936601871339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278254 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A360908.P5275534936601871339

namespace A360908

/-- `∏{e}[A278254(n+1), #-1]` -/
def P5275534936601871339.Spec : Prop :=
  ∀ n, P5275534936601871339.a n = A360908 (n + 1)

end A360908

/-! ## A360908.P4317858414018171180

`A000005(((n+1)/∏{p}[n+1, #])²)`
-/

namespace A360908.P4317858414018171180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 2)).toNat

end

end A360908.P4317858414018171180

namespace A360908

/-- `A000005(((n+1)/∏{p}[n+1, #])²)` -/
def P4317858414018171180.Spec : Prop :=
  ∀ n, P4317858414018171180.a n = A360908 (n + 1)

end A360908

/-! ## A360908.P11270318083615842

`A000005(A003557(n+1)²)`
-/

namespace A360908.P11270318083615842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003557 (n + 1) ^ 2).toNat

end

end A360908.P11270318083615842

namespace A360908

/-- `A000005(A003557(n+1)²)` -/
def P11270318083615842.Spec : Prop :=
  ∀ n, P11270318083615842.a n = A360908 (n + 1)

end A360908

/-! ## A360908.P14933818791882401204

`A000005(A292589(n+1)²)`
-/

namespace A360908.P14933818791882401204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A292589 (n + 1) ^ 2).toNat

end

end A360908.P14933818791882401204

namespace A360908

/-- `A000005(A292589(n+1)²)` -/
def P14933818791882401204.Spec : Prop :=
  ∀ n, P14933818791882401204.a n = A360908 (n + 1)

end A360908

/-! ## A360908.P17130770482413491327

`A000005((A336551(n+1)+1)²)`
-/

namespace A360908.P17130770482413491327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((A336551 (n + 1) + 1) ^ 2).toNat

end

end A360908.P17130770482413491327

namespace A360908

/-- `A000005((A336551(n+1)+1)²)` -/
def P17130770482413491327.Spec : Prop :=
  ∀ n, P17130770482413491327.a n = A360908 (n + 1)

end A360908

/-! ## A360908.P5642935849767113576

`A000005((A000203(n+1)-A326187(n+1))²)`
-/

namespace A360908.P5642935849767113576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((A000203 (n + 1) - A326187 (n + 1)) ^ 2).toNat

end

end A360908.P5642935849767113576

namespace A360908

/-- `A000005((A000203(n+1)-A326187(n+1))²)` -/
def P5642935849767113576.Spec : Prop :=
  ∀ n, P5642935849767113576.a n = A360908 (n + 1)

end A360908

/-! ## A360908.P708901683502458491

`A000005((A001615(n+1)/A048250(n+1))²)`
-/

namespace A360908.P708901683502458491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((A001615 (n + 1) : ℚ) / (A048250 (n + 1) : ℚ)) ^ 2)).toNat

end

end A360908.P708901683502458491

namespace A360908

/-- `A000005((A001615(n+1)/A048250(n+1))²)` -/
def P708901683502458491.Spec : Prop :=
  ∀ n, P708901683502458491.a n = A360908 (n + 1)

end A360908

/-! ## A360908.P18305405204120347573

`A000005((A000010(n+1)/A173557(n+1))²)`
-/

namespace A360908.P18305405204120347573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((A000010 (n + 1) : ℚ) / (A173557 (n + 1) : ℚ)) ^ 2)).toNat

end

end A360908.P18305405204120347573

namespace A360908

/-- `A000005((A000010(n+1)/A173557(n+1))²)` -/
def P18305405204120347573.Spec : Prop :=
  ∀ n, P18305405204120347573.a n = A360908 (n + 1)

end A360908

/-! ## A360908.P14034520774980849843

`A000005((A318519(n+1)/A000005(n+1))²)`
-/

namespace A360908.P14034520774980849843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((A318519 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)) ^ 2)).toNat

end

end A360908.P14034520774980849843

namespace A360908

/-- `A000005((A318519(n+1)/A000005(n+1))²)` -/
def P14034520774980849843.Spec : Prop :=
  ∀ n, P14034520774980849843.a n = A360908 (n + 1)

end A360908

/-!
# A360909: Multiplicative with a(p^e) = 3*e + 2.

The programs for A360909, the canonical program `A360909.P10978375197927546357` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360909 has offset 1).

The definition of A360909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360909.P10978375197927546357

`∏{e}[n+1, 3*#+2]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A360909

/-- `∏{e}[n+1, 3*#+2]` -/
def P10978375197927546357.Spec : Prop :=
  ∀ n, (P10978375197927546357.a n : ℤ) = A360909 (n + 1)

theorem P10978375197927546357.correct : P10978375197927546357.Spec := by
  intro n
  simp only [A360909, Nat.add_sub_cancel]

end A360909

/-! ## A360909.P12773004451824605694

`∏{p}[n+1, 3*val(n+1, #)+2]`
-/

namespace A360909.P12773004451824605694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (3 * SequenceMachineLib.valuation (n + 1) p + 2)

end

end A360909.P12773004451824605694

namespace A360909

/-- `∏{p}[n+1, 3*val(n+1, #)+2]` -/
def P12773004451824605694.Spec : Prop :=
  ∀ n, (P12773004451824605694.a n : ℤ) = A360909 (n + 1)

end A360909

/-! ## A360909.P10995175075190921547

`∏{p}[n+1, A016789(val(n+1, #))]`
-/

namespace A360909.P10995175075190921547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A016789 (SequenceMachineLib.valuation (n + 1) p)

end

end A360909.P10995175075190921547

namespace A360909

/-- `∏{p}[n+1, A016789(val(n+1, #))]` -/
def P10995175075190921547.Spec : Prop :=
  ∀ n, P10995175075190921547.a n = A360909 (n + 1)

end A360909

/-! ## A360909.P3173008265623242981

`A000027(∏{e}[n+1, A016789(#)])`
-/

namespace A360909.P3173008265623242981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ p ∈ Nat.primeFactors (f1 n), A016789 (Nat.factorization (f1 n) p)).toNat

end

end A360909.P3173008265623242981

namespace A360909

/-- `A000027(∏{e}[n+1, A016789(#)])` -/
def P3173008265623242981.Spec : Prop :=
  ∀ n, P3173008265623242981.a n = A360909 (n + 1)

end A360909

/-! ## A360909.P6492718396530277141

`∏{e}[n+1, A016789(#)]%A060488(n+3)`
-/

namespace A360909.P6492718396530277141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∏ p ∈ Nat.primeFactors (f1 n), A016789 (Nat.factorization (f1 n) p)) (A060488 (n + 3))

end

end A360909.P6492718396530277141

namespace A360909

/-- `∏{e}[n+1, A016789(#)]%A060488(n+3)` -/
def P6492718396530277141.Spec : Prop :=
  ∀ n, P6492718396530277141.a n = A360909 (n + 1)

end A360909

/-! ## A360909.P18347836461572355245

`A360910((n+1)*∏{p}[n+1, #])`
-/

namespace A360909.P18347836461572355245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360910 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A360909.P18347836461572355245

namespace A360909

/-- `A360910((n+1)*∏{p}[n+1, #])` -/
def P18347836461572355245.Spec : Prop :=
  ∀ n, P18347836461572355245.a n = A360909 (n + 1)

end A360909

/-! ## A360909.P14531604552802078351

`A360910((n+1)/∏{p}[n+1, 1/#])`
-/

namespace A360909.P14531604552802078351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360910 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (∏ p ∈ Nat.primeFactors (f1 n), 1 / (p : ℚ)))).toNat

end

end A360909.P14531604552802078351

namespace A360909

/-- `A360910((n+1)/∏{p}[n+1, 1/#])` -/
def P14531604552802078351.Spec : Prop :=
  ∀ n, P14531604552802078351.a n = A360909 (n + 1)

end A360909

/-! ## A360909.P16943257807830987835

`A360910(lcm(n+1, ∏{p}[n+1, #]+1)-n-1)`
-/

namespace A360909.P16943257807830987835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360910 ((Nat.lcm (n + 1) (∏ p ∈ Nat.primeFactors (f1 n), p + 1) : ℤ) - (n : ℤ) - 1).toNat

end

end A360909.P16943257807830987835

namespace A360909

/-- `A360910(lcm(n+1, ∏{p}[n+1, #]+1)-n-1)` -/
def P16943257807830987835.Spec : Prop :=
  ∀ n, P16943257807830987835.a n = A360909 (n + 1)

end A360909

/-! ## A360909.P16319182016783572831

`A360910(A064549(n+1))`
-/

namespace A360909.P16319182016783572831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360910 (A064549 (n + 1)).toNat

end

end A360909.P16319182016783572831

namespace A360909

/-- `A360910(A064549(n+1))` -/
def P16319182016783572831.Spec : Prop :=
  ∀ n, P16319182016783572831.a n = A360909 (n + 1)

end A360909

/-! ## A360909.P15416627529843934066

`A360910(A078310(n+1)-1)`
-/

namespace A360909.P15416627529843934066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360910 (A078310 (n + 1) - 1).toNat

end

end A360909.P15416627529843934066

namespace A360909

/-- `A360910(A078310(n+1)-1)` -/
def P15416627529843934066.Spec : Prop :=
  ∀ n, P15416627529843934066.a n = A360909 (n + 1)

end A360909

/-! ## A360909.P16573940429002910935

`A360910((n+1)*A007947(n+1))`
-/

namespace A360909.P16573940429002910935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360910 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A360909.P16573940429002910935

namespace A360909

/-- `A360910((n+1)*A007947(n+1))` -/
def P16573940429002910935.Spec : Prop :=
  ∀ n, P16573940429002910935.a n = A360909 (n + 1)

end A360909

/-!
# A360910: Multiplicative with a(p^e) = 3*e - 1.

The programs for A360910, the canonical program `A360910.P16431694558917108348` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360910 has offset 1).

The definition of A360910 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360910.P16431694558917108348

`∏{e}[n+1, 3*#-1]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A360910

/-- `∏{e}[n+1, 3*#-1]` -/
def P16431694558917108348.Spec : Prop :=
  ∀ n, P16431694558917108348.a n = A360910 (n + 1)

theorem P16431694558917108348.correct : P16431694558917108348.Spec := by
  intro n
  simp only [A360910, Nat.add_sub_cancel]

end A360910

/-! ## A360910.P4334003234127586059

`∏{p}[n+1, 3*val(n+1, #)-1]`
-/

namespace A360910.P4334003234127586059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((3 * SequenceMachineLib.valuation (n + 1) p : ℤ) - 1)

end

end A360910.P4334003234127586059

namespace A360910

/-- `∏{p}[n+1, 3*val(n+1, #)-1]` -/
def P4334003234127586059.Spec : Prop :=
  ∀ n, P4334003234127586059.a n = A360910 (n + 1)

end A360910

/-! ## A360910.P11659879731165279008

`∑{d}[n+1, A000265(A073184(#))]`
-/

namespace A360910.P11659879731165279008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000265 (A073184 d).toNat

end

end A360910.P11659879731165279008

namespace A360910

/-- `∑{d}[n+1, A000265(A073184(#))]` -/
def P11659879731165279008.Spec : Prop :=
  ∀ n, P11659879731165279008.a n = A360910 (n + 1)

end A360910

/-! ## A360910.P13545502739619634046

`A000027(∏{e}[(n+1)²/∏{p}[n+1, #], A007494(#)])`
-/

namespace A360910.P13545502739619634046
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, A007494 (Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p)).toNat

end

end A360910.P13545502739619634046

namespace A360910

/-- `A000027(∏{e}[(n+1)²/∏{p}[n+1, #], A007494(#)])` -/
def P13545502739619634046.Spec : Prop :=
  ∀ n, P13545502739619634046.a n = A360910 (n + 1)

end A360910

/-! ## A360910.P13157103224153198835

`A092520((n+1)²/∏{p}[n+1, #])`
-/

namespace A360910.P13157103224153198835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092520 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat

end

end A360910.P13157103224153198835

namespace A360910

/-- `A092520((n+1)²/∏{p}[n+1, #])` -/
def P13157103224153198835.Spec : Prop :=
  ∀ n, P13157103224153198835.a n = A360910 (n + 1)

end A360910

/-! ## A360910.P8717922274859858954

`∑{d}[(n+1)²/∏{p}[n+1, #], A056624(#)]`
-/

namespace A360910.P8717922274859858954
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A056624 d

end

end A360910.P8717922274859858954

namespace A360910

/-- `∑{d}[(n+1)²/∏{p}[n+1, #], A056624(#)]` -/
def P8717922274859858954.Spec : Prop :=
  ∀ n, P8717922274859858954.a n = A360910 (n + 1)

end A360910

/-! ## A360910.P7446556461984008737

`A092520(A102631(n+1))`
-/

namespace A360910.P7446556461984008737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092520 (A102631 (n + 1)).toNat

end

end A360910.P7446556461984008737

namespace A360910

/-- `A092520(A102631(n+1))` -/
def P7446556461984008737.Spec : Prop :=
  ∀ n, P7446556461984008737.a n = A360910 (n + 1)

end A360910

/-! ## A360910.P2936672239189827053

`∑{d}[A102631(n+1), A056624(#)]`
-/

namespace A360910.P2936672239189827053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102631 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A056624 d

end

end A360910.P2936672239189827053

namespace A360910

/-- `∑{d}[A102631(n+1), A056624(#)]` -/
def P2936672239189827053.Spec : Prop :=
  ∀ n, P2936672239189827053.a n = A360910 (n + 1)

end A360910

/-! ## A360910.P3719726115656550365

`A092520((n+1)*A003557(n+1))`
-/

namespace A360910.P3719726115656550365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092520 ((n + 1 : ℤ) * A003557 (n + 1)).toNat

end

end A360910.P3719726115656550365

namespace A360910

/-- `A092520((n+1)*A003557(n+1))` -/
def P3719726115656550365.Spec : Prop :=
  ∀ n, P3719726115656550365.a n = A360910 (n + 1)

end A360910

/-! ## A360910.P5194231763736081773

`abs(∏{e}[(n+1)^3, 1-#])`
-/

namespace A360910.P5194231763736081773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f1 n), (1 - (Nat.factorization (f1 n) p : ℤ))|

end

end A360910.P5194231763736081773

namespace A360910

/-- `abs(∏{e}[(n+1)^3, 1-#])` -/
def P5194231763736081773.Spec : Prop :=
  ∀ n, P5194231763736081773.a n = A360910 (n + 1)

end A360910

/-!
# A360911: Multiplicative with a(p^e) = 3*e - 2.

The programs for A360911, the canonical program `A360911.P16695268953959511557` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360911 has offset 1).

The definition of A360911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360911.P16695268953959511557

`∏{e}[n+1, 3*#-2]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A360911

/-- `∏{e}[n+1, 3*#-2]` -/
def P16695268953959511557.Spec : Prop :=
  ∀ n, P16695268953959511557.a n = A360911 (n + 1)

theorem P16695268953959511557.correct : P16695268953959511557.Spec := by
  intro n
  simp only [A360911, Nat.add_sub_cancel]

end A360911

/-! ## A360911.P12931211879026099507

`A048785(floor(n/∏{p}[n+1, #])+1)`
-/

namespace A360911.P12931211879026099507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)⌋ + 1).toNat

end

end A360911.P12931211879026099507

namespace A360911

/-- `A048785(floor(n/∏{p}[n+1, #])+1)` -/
def P12931211879026099507.Spec : Prop :=
  ∀ n, P12931211879026099507.a n = A360911 (n + 1)

end A360911

/-! ## A360911.P11523808510783274157

`A048785((n+1)*∏{p}[n+1, #]/∏{p}[n+1, #²])`
-/

namespace A360911.P11523808510783274157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (SequenceMachineLib.roundAway ((((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p) : ℕ) : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p ^ 2 : ℕ) : ℚ))).toNat

end

end A360911.P11523808510783274157

namespace A360911

/-- `A048785((n+1)*∏{p}[n+1, #]/∏{p}[n+1, #²])` -/
def P11523808510783274157.Spec : Prop :=
  ∀ n, P11523808510783274157.a n = A360911 (n + 1)

end A360911

/-! ## A360911.P12584626763493543116

`A048785(A003557(n+1))`
-/

namespace A360911.P12584626763493543116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A003557 (n + 1)).toNat

end

end A360911.P12584626763493543116

namespace A360911

/-- `A048785(A003557(n+1))` -/
def P12584626763493543116.Spec : Prop :=
  ∀ n, P12584626763493543116.a n = A360911 (n + 1)

end A360911

/-! ## A360911.P10442880048570389586

`A048785(A292589(n+1))`
-/

namespace A360911.P10442880048570389586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A292589 (n + 1)).toNat

end

end A360911.P10442880048570389586

namespace A360911

/-- `A048785(A292589(n+1))` -/
def P10442880048570389586.Spec : Prop :=
  ∀ n, P10442880048570389586.a n = A360911 (n + 1)

end A360911

/-! ## A360911.P12334001782977929882

`A048785(A396938(n+1))`
-/

namespace A360911.P12334001782977929882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A396938 (n + 1)).toNat

end

end A360911.P12334001782977929882

namespace A360911

/-- `A048785(A396938(n+1))` -/
def P12334001782977929882.Spec : Prop :=
  ∀ n, P12334001782977929882.a n = A360911 (n + 1)

end A360911

/-! ## A360911.P12764233121312405525

`A048785(A336551(n+1)+1)`
-/

namespace A360911.P12764233121312405525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (A336551 (n + 1) + 1).toNat

end

end A360911.P12764233121312405525

namespace A360911

/-- `A048785(A336551(n+1)+1)` -/
def P12764233121312405525.Spec : Prop :=
  ∀ n, P12764233121312405525.a n = A360911 (n + 1)

end A360911

/-! ## A360911.P1342057502501112370

`∑{d}[A003557(n+1), A074816(#)]`
-/

namespace A360911.P1342057502501112370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A074816 d

end

end A360911.P1342057502501112370

namespace A360911

/-- `∑{d}[A003557(n+1), A074816(#)]` -/
def P1342057502501112370.Spec : Prop :=
  ∀ n, P1342057502501112370.a n = A360911 (n + 1)

end A360911

/-! ## A360911.P3081808331832205957

`A048785((n+1)/A007947(n+1))`
-/

namespace A360911.P3081808331832205957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A007947 (n + 1) : ℚ))).toNat

end

end A360911.P3081808331832205957

namespace A360911

/-- `A048785((n+1)/A007947(n+1))` -/
def P3081808331832205957.Spec : Prop :=
  ∀ n, P3081808331832205957.a n = A360911 (n + 1)

end A360911

/-! ## A360911.P4006855593409045096

`A092520(A003557(n+1)²)`
-/

namespace A360911.P4006855593409045096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092520 (A003557 (n + 1) ^ 2).toNat

end

end A360911.P4006855593409045096

namespace A360911

/-- `A092520(A003557(n+1)²)` -/
def P4006855593409045096.Spec : Prop :=
  ∀ n, P4006855593409045096.a n = A360911 (n + 1)

end A360911

/-! ## A360911.P5609311979916657269

`A000005(((n+1)/∏{p}[n+1, #])^3)`
-/

namespace A360911.P5609311979916657269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ)) ^ 3)).toNat

end

end A360911.P5609311979916657269

namespace A360911

/-- `A000005(((n+1)/∏{p}[n+1, #])^3)` -/
def P5609311979916657269.Spec : Prop :=
  ∀ n, P5609311979916657269.a n = A360911 (n + 1)

end A360911

/-! ## A360911.P16478148317054337809

`A000005(A003557(n+1)²*A003557(n+1))`
-/

namespace A360911.P16478148317054337809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003557 (n + 1) ^ 2 * A003557 (n + 1)).toNat

end

end A360911.P16478148317054337809

namespace A360911

/-- `A000005(A003557(n+1)²*A003557(n+1))` -/
def P16478148317054337809.Spec : Prop :=
  ∀ n, P16478148317054337809.a n = A360911 (n + 1)

end A360911

/-! ## A360911.P9426184710046793683

`A000005(A292589(n+1)²*A292589(n+1))`
-/

namespace A360911.P9426184710046793683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A292589 (n + 1) ^ 2 * A292589 (n + 1)).toNat

end

end A360911.P9426184710046793683

namespace A360911

/-- `A000005(A292589(n+1)²*A292589(n+1))` -/
def P9426184710046793683.Spec : Prop :=
  ∀ n, P9426184710046793683.a n = A360911 (n + 1)

end A360911

/-!
# A360912: Records in A355432.

The programs for A360912, there is no canonical definition to state claims against.
-/

/-! ## A360912.P15618850432411492779

`A355432(A360589(n+1))`
-/

namespace A360912.P15618850432411492779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (A360589 (n + 1)).toNat

end

end A360912.P15618850432411492779

/-! ## A360912.P1267698928105851230

`record[A355432(A002473(n+1))]`
-/

namespace A360912.P1267698928105851230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (A002473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360912.P1267698928105851230

/-! ## A360912.P6359127405600254131

`record[A355432(A048111(n+1))]`
-/

namespace A360912.P6359127405600254131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (A048111 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360912.P6359127405600254131

/-! ## A360912.P9812651956313012459

`record[A355432(A051037(n+1))]`
-/

namespace A360912.P9812651956313012459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (A051037 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360912.P9812651956313012459

/-! ## A360912.P10650284976233280831

`record[A355432(A055932(n+1))]`
-/

namespace A360912.P10650284976233280831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355432 (A055932 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360912.P10650284976233280831

/-!
# A360913: Array read by antidiagonals: T(m,n) is the number of maximum induced cycles in the grid graph P_m X P_n.

The programs for A360913, there is no canonical definition to state claims against.
-/

/-! ## A360913.P18062316400669485540

`A266640(A257610(n)-A281165(n+1))`
-/

namespace A360913.P18062316400669485540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266640 (A257610 n - A281165 (n + 1)).toNat

end

end A360913.P18062316400669485540

/-! ## A360913.P8320316868266440043

`gcd(A211520(A022170(n)), A216622(n+1))`
-/

namespace A360913.P8320316868266440043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A211520 (A022170 n).toNat) (A216622 (n + 1))

end

end A360913.P8320316868266440043

/-! ## A360913.P5678127073217384535

`gcd(A322630(n+1), A333489(A157151(n)))`
-/

namespace A360913.P5678127073217384535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A322630 (n + 1)) (A333489 (A157151 n).toNat)

end

end A360913.P5678127073217384535

/-! ## A360913.P14577550331649520302

`A360920(n+1)^A181434(A203846(n+1))`
-/

namespace A360913.P14577550331649520302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360920 (n + 1) : ℚ) ^ (A181434 (A203846 (n + 1)).toNat : ℤ)

end

end A360913.P14577550331649520302

/-! ## A360913.P2337666477592721789

`A073407(A184694(n+1))`
-/

namespace A360913.P2337666477592721789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073407 (A184694 (n + 1)).toNat

end

end A360913.P2337666477592721789

/-!
# A360914: Number of maximum induced cycles in the n X n grid graph.

The programs for A360914, there is no canonical definition to state claims against.
-/

/-! ## A360914.P12543393192965823044

`A054895(or(A037460(n+3), A094574(n)))`
-/

namespace A360914.P12543393192965823044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054895 (Int.lor (A037460 (n + 3)) (A094574 n)).toNat

end

end A360914.P12543393192965823044

/-!
# A360916: Array read by antidiagonals: T(m,n) is the number of maximum induced paths in the grid graph P_m X P_n.

The programs for A360916, there is no canonical definition to state claims against.
-/

/-! ## A360916.P17182817560201251342

`A060310(A022173(n))`
-/

namespace A360916.P17182817560201251342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060310 (A022173 n).toNat

end

end A360916.P17182817560201251342

/-! ## A360916.P17632784181979112218

`A074848(A176429(n))`
-/

namespace A360916.P17632784181979112218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074848 (A176429 n).toNat

end

end A360916.P17632784181979112218

/-! ## A360916.P15572849089422127063

`A111982(A157274(n))`
-/

namespace A360916.P15572849089422127063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111982 (A157274 n).toNat

end

end A360916.P15572849089422127063

/-! ## A360916.P7455605550152017561

`A129089(A157641(n))`
-/

namespace A360916.P7455605550152017561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129089 (A157641 n).toNat

end

end A360916.P7455605550152017561

/-! ## A360916.P9506432169153522749

`A129089(A160562(n))`
-/

namespace A360916.P9506432169153522749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129089 (A160562 n).toNat

end

end A360916.P9506432169153522749

/-!
# A360917: Array read by antidiagonals: T(m,n) is the number of vertices in the longest induced path in the grid graph P_m X P_n.

The programs for A360917, there is no canonical definition to state claims against.
-/

/-! ## A360917.P11221043098406619144

`A037809(A209534(n+1))`
-/

namespace A360917.P11221043098406619144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037809 (A209534 (n + 1)).toNat

end

end A360917.P11221043098406619144

/-! ## A360917.P2567556186230856477

`A000120(A209534(n+1)-3)`
-/

namespace A360917.P2567556186230856477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A209534 (n + 1) - 3).toNat

end

end A360917.P2567556186230856477

/-! ## A360917.P8817141545820007683

`A000523(A297314(n+1)+A251599(n+1))`
-/

namespace A360917.P8817141545820007683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A297314 (n + 1) + A251599 (n + 1)).toNat

end

end A360917.P8817141545820007683

/-! ## A360917.P11937680237930211487

`A070939(A209534(n+1))-A016008(A000040(n+1))`
-/

namespace A360917.P11937680237930211487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A209534 (n + 1)).toNat - A016008 (A000040 (n + 1)).toNat

end

end A360917.P11937680237930211487

/-! ## A360917.P13919164728819254884

`A070939(A209534(n+1))-A055027(A062040(n+1))`
-/

namespace A360917.P13919164728819254884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (A209534 (n + 1)).toNat - A055027 (A062040 (n + 1)).toNat

end

end A360917.P13919164728819254884

/-!
# A360919: Number of maximum induced trees in the n X n grid graph.

The programs for A360919, there is no canonical definition to state claims against.
-/

/-! ## A360919.P6789324365236172391

`A360918(∑[4*n]+1)`
-/

namespace A360919.P6789324365236172391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360918 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A360919.P6789324365236172391

/-! ## A360919.P14499632779976274637

`A360918(A001844(n))+A137579(n)`
-/

namespace A360919.P14499632779976274637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360918 (A001844 n).toNat + A137579 n

end

end A360919.P14499632779976274637

/-! ## A360919.P15686446064109523751

`A360918(A001844(n))%A022026(n)`
-/

namespace A360919.P15686446064109523751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360918 (A001844 n).toNat) (A022026 n)

end

end A360919.P15686446064109523751

/-! ## A360919.P6305320864947086272

`gcd(A112316(n), A360918(A001844(n)))`
-/

namespace A360919.P6305320864947086272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A112316 n) (A360918 (A001844 n).toNat)

end

end A360919.P6305320864947086272

/-! ## A360919.P13711833899627769875

`or(A000007(n), A360918(A001844(n)))`
-/

namespace A360919.P13711833899627769875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A360918 (A001844 n).toNat)

end

end A360919.P13711833899627769875

/-!
# A360920: Array read by antidiagonals: T(m,n) is the maximum number of vertices in an induced tree in the grid graph P_m X P_n.

The programs for A360920, there is no canonical definition to state claims against.
-/

/-! ## A360920.P12873904654057368591

`A003991(n+1)-A398270(n+1)`
-/

namespace A360920.P12873904654057368591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) - A398270 (n + 1)

end

end A360920.P12873904654057368591

/-! ## A360920.P1273225101114813355

`A095791(A219741(n+1))`
-/

namespace A360920.P1273225101114813355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 (A219741 (n + 1)).toNat

end

end A360920.P1273225101114813355

/-! ## A360920.P10691908591110052551

`A072649(A183322(n+1))-1`
-/

namespace A360920.P10691908591110052551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (A183322 (n + 1)).toNat - 1

end

end A360920.P10691908591110052551

/-! ## A360920.P3488722550400151067

`A095791(A183322(n+1)-1)`
-/

namespace A360920.P3488722550400151067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095791 (A183322 (n + 1) - 1).toNat

end

end A360920.P3488722550400151067

/-! ## A360920.P2852265396419500830

`gcd(A095791(A183322(n+1)), A112316(n))`
-/

namespace A360920.P2852265396419500830
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A095791 (A183322 (n + 1)).toNat) (A112316 n)

end

end A360920.P2852265396419500830

/-!
# A360921: Maximum number of vertices in an induced tree in the n X n grid graph.

The programs for A360921, there is no canonical definition to state claims against.
-/

/-! ## A360921.P6450261105791742706

`A360920(∑[4*n]+1)`
-/

namespace A360921.P6450261105791742706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360920 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A360921.P6450261105791742706

/-! ## A360921.P890432265423294175

`(n+1)²-A354673(n+1)`
-/

namespace A360921.P890432265423294175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A354673 (n + 1)

end

end A360921.P890432265423294175

/-! ## A360921.P3353391490957415902

`∑[A359237(n+1)+comp[or(3, n)]]`
-/

namespace A360921.P3353391490957415902
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359237 (n + 1) + (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360921.P3353391490957415902

/-! ## A360921.P2080795813737832294

`record[A360920(A330613(n+1))]`
-/

namespace A360921.P2080795813737832294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360920 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360921.P2080795813737832294

/-! ## A360921.P11402101027827282255

`lcm((-1)^n, A360920(A001844(n)))`
-/

namespace A360921.P11402101027827282255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A360920 (A001844 n).toNat)

end

end A360921.P11402101027827282255

/-!
# A360924: Smallest number of moves needed to win Integer Lunar Lander with starting position (0,n).

The programs for A360924, the canonical program `A360924.P3366351862879649461` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360924 has offset 0).

The definition of A360924 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360924.P14214157769838232102

`ceil(2*sqrt(n))`
-/

namespace A360924.P14214157769838232102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (n : ℝ)⌉

end

end A360924.P14214157769838232102

namespace A360924

/-- `ceil(2*sqrt(n))` -/
def P14214157769838232102.Spec : Prop :=
  ∀ n, P14214157769838232102.a n = A360924 n

end A360924

/-! ## A360924.P4427660589531460841

`comp[∑[∑[(n+1)%2]]]-n`
-/

namespace A360924.P4427660589531460841
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A360924.P4427660589531460841

namespace A360924

/-- `comp[∑[∑[(n+1)%2]]]-n` -/
def P4427660589531460841.Spec : Prop :=
  ∀ n, P4427660589531460841.a n = A360924 n

end A360924

/-! ## A360924.P7837954329948930415

`comp[∑[∑[and(1, n+1)]]]-n`
-/

namespace A360924.P7837954329948930415
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A360924.P7837954329948930415

namespace A360924

/-- `comp[∑[∑[and(1, n+1)]]]-n` -/
def P7837954329948930415.Spec : Prop :=
  ∀ n, P7837954329948930415.a n = A360924 n

end A360924

/-! ## A360924.P7650202107447089477

`comp[a(n-2)+n]-n` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A360924.P7650202107447089477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (n - 2) + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)

end

end A360924.P7650202107447089477

namespace A360924

/-- `comp[a(n-2)+n]-n` -/
def P7650202107447089477.Spec : Prop :=
  ∀ n, P7650202107447089477.a n = A360924 n

end A360924

/-! ## A360924.P3366351862879649461

`a(1-a(n-1)+n)+2` with `a(0)=0, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A360924

/-- `a(1-a(n-1)+n)+2` -/
def P3366351862879649461.Spec : Prop :=
  ∀ n, (P3366351862879649461.a n : ℤ) = A360924 n

theorem P3366351862879649461.correct : P3366351862879649461.Spec := by
  intro n
  simp only [A360924]

end A360924

/-! ## A360924.P18253921749846919443

`A027709(n)/2`
-/

namespace A360924.P18253921749846919443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027709 n : ℚ) / 2

end

end A360924.P18253921749846919443

namespace A360924

/-- `A027709(n)/2` -/
def P18253921749846919443.Spec : Prop :=
  ∀ n, P18253921749846919443.a n = (A360924 n : ℚ)

end A360924

/-! ## A360924.P1683418489908946312

`A135034(4*n)`
-/

namespace A360924.P1683418489908946312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135034 (4 * n)

end

end A360924.P1683418489908946312

namespace A360924

/-- `A135034(4*n)` -/
def P1683418489908946312.Spec : Prop :=
  ∀ n, P1683418489908946312.a n = A360924 n

end A360924

/-! ## A360924.P8155838056426794025

`sqrt(A048761(4*n))`
-/

namespace A360924.P8155838056426794025
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A048761 (4 * n) : ℝ)

end

end A360924.P8155838056426794025

namespace A360924

/-- `sqrt(A048761(4*n))` -/
def P8155838056426794025.Spec : Prop :=
  ∀ n, P8155838056426794025.a n = (A360924 n : ℝ)

end A360924

/-! ## A360924.P7258512785851117571

`comp[A008642(n)]-n`
-/

namespace A360924.P7258512785851117571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008642 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A360924.P7258512785851117571

namespace A360924

/-- `comp[A008642(n)]-n` -/
def P7258512785851117571.Spec : Prop :=
  ∀ n, P7258512785851117571.a n = A360924 n

end A360924

/-! ## A360924.P11503312342815165108

`A235382(n)/2-2`
-/

namespace A360924.P11503312342815165108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A235382 n : ℚ) / 2 - 2

end

end A360924.P11503312342815165108

namespace A360924

/-- `A235382(n)/2-2` -/
def P11503312342815165108.Spec : Prop :=
  ∀ n, P11503312342815165108.a n = (A360924 n : ℚ)

end A360924

/-! ## A360924.P8101887380911239751

`lt[n, A114848(n)]-n`
-/

namespace A360924.P8101887380911239751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A360924.P8101887380911239751

namespace A360924

/-- `lt[n, A114848(n)]-n` -/
def P8101887380911239751.Spec : Prop :=
  ∀ n, P8101887380911239751.a n = A360924 n

end A360924

/-! ## A360924.P14592756370477479728

`lt[n, A135328(n)]-n`
-/

namespace A360924.P14592756370477479728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135328 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n : ℤ) - (n : ℤ)

end

end A360924.P14592756370477479728

namespace A360924

/-- `lt[n, A135328(n)]-n` -/
def P14592756370477479728.Spec : Prop :=
  ∀ n, P14592756370477479728.a n = A360924 n

end A360924

/-! ## A360924.P2563409654185284789

`comp[∑[A008619(n)]]-n`
-/

namespace A360924.P2563409654185284789
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A360924.P2563409654185284789

namespace A360924

/-- `comp[∑[A008619(n)]]-n` -/
def P2563409654185284789.Spec : Prop :=
  ∀ n, P2563409654185284789.a n = A360924 n

end A360924

/-! ## A360924.P9411586729771394903

`comp[A056942(n+1)]-n`
-/

namespace A360924.P9411586729771394903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056942 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A360924.P9411586729771394903

namespace A360924

/-- `comp[A056942(n+1)]-n` -/
def P9411586729771394903.Spec : Prop :=
  ∀ n, P9411586729771394903.a n = A360924 n

end A360924

/-! ## A360924.P3982283479929831372

`comp[A076921(n+1)]-n`
-/

namespace A360924.P3982283479929831372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076921 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A360924.P3982283479929831372

namespace A360924

/-- `comp[A076921(n+1)]-n` -/
def P3982283479929831372.Spec : Prop :=
  ∀ n, P3982283479929831372.a n = A360924 n

end A360924

/-! ## A360924.P941761461052248022

`comp[A232091(n+1)]-n`
-/

namespace A360924.P941761461052248022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232091 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A360924.P941761461052248022

namespace A360924

/-- `comp[A232091(n+1)]-n` -/
def P941761461052248022.Spec : Prop :=
  ∀ n, P941761461052248022.a n = A360924 n

end A360924

/-! ## A360924.P6310516341869669560

`comp[A008733(n+2)]-n`
-/

namespace A360924.P6310516341869669560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008733 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A360924.P6310516341869669560

namespace A360924

/-- `comp[A008733(n+2)]-n` -/
def P6310516341869669560.Spec : Prop :=
  ∀ n, P6310516341869669560.a n = A360924 n

end A360924

/-! ## A360924.P3400871102867678454

`comp[A008797(2*n)]-n`
-/

namespace A360924.P3400871102867678454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008797 (2 * n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)

end

end A360924.P3400871102867678454

namespace A360924

/-- `comp[A008797(2*n)]-n` -/
def P3400871102867678454.Spec : Prop :=
  ∀ n, P3400871102867678454.a n = A360924 n

end A360924

/-! ## A360924.P1037078026592676667

`A001281(A027709(n))`
-/

namespace A360924.P1037078026592676667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A027709 n).toNat

end

end A360924.P1037078026592676667

namespace A360924

/-- `A001281(A027709(n))` -/
def P1037078026592676667.Spec : Prop :=
  ∀ n, P1037078026592676667.a n = A360924 n

end A360924

/-!
# A360925: Smallest number of moves needed to win Integer Lunar Lander from starting position (n,0).

The programs for A360925, the canonical program `A360925.P4337466135380320817` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360925 has offset 0).

The definition of A360925 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 251 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360925.P4337466135380320817

`ceil(2*sqrt(C(n, 2)))+n`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A360925

/-- `ceil(2*sqrt(C(n, 2)))+n` -/
def P4337466135380320817.Spec : Prop :=
  ∀ n, P4337466135380320817.a n = A360925 n

theorem P4337466135380320817.correct : P4337466135380320817.Spec := by
  intro n
  simp only [A360925]

end A360925

/-! ## A360925.P12808007116882897063

`ceil(sqrt((n-1)*2*n)+n)`
-/

namespace A360925.P12808007116882897063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (((n : ℤ) - 1) * (2 * n : ℤ) : ℝ) + (n : ℝ)⌉

end

end A360925.P12808007116882897063

namespace A360925

/-- `ceil(sqrt((n-1)*2*n)+n)` -/
def P12808007116882897063.Spec : Prop :=
  ∀ n, P12808007116882897063.a n = A360925 n

end A360925

/-! ## A360925.P11335516926957529144

`ceil(sqrt(A014107(n)+n))+n`
-/

namespace A360925.P11335516926957529144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A014107 n + (n : ℤ) : ℝ)⌉ + (n : ℤ)

end

end A360925.P11335516926957529144

namespace A360925

/-- `ceil(sqrt(A014107(n)+n))+n` -/
def P11335516926957529144.Spec : Prop :=
  ∀ n, P11335516926957529144.a n = A360925 n

end A360925

/-! ## A360925.P15963484606655837227

`A360923(∑[n]+n)`
-/

namespace A360925.P15963484606655837227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360923 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A360925.P15963484606655837227

namespace A360925

/-- `A360923(∑[n]+n)` -/
def P15963484606655837227.Spec : Prop :=
  ∀ n, P15963484606655837227.a n = A360925 n

end A360925

/-! ## A360925.P16674529854735947728

`A057427(n)*A360923(A000096(n))`
-/

namespace A360925.P16674529854735947728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A360923 (A000096 n).toNat

end

end A360925.P16674529854735947728

namespace A360925

/-- `A057427(n)*A360923(A000096(n))` -/
def P16674529854735947728.Spec : Prop :=
  ∀ n, P16674529854735947728.a n = A360925 n

end A360925

/-! ## A360925.P8806318203480286813

`A360923(A000096(n))%A008000(n)`
-/

namespace A360925.P8806318203480286813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360923 (A000096 n).toNat) (A008000 n)

end

end A360925.P8806318203480286813

namespace A360925

/-- `A360923(A000096(n))%A008000(n)` -/
def P8806318203480286813.Spec : Prop :=
  ∀ n, P8806318203480286813.a n = A360925 n

end A360925

/-! ## A360925.P4921844000009101841

`A289508(2*(n+2))*A360923(A000096(n))`
-/

namespace A360925.P4921844000009101841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (2 * (n + 2)) * A360923 (A000096 n).toNat

end

end A360925.P4921844000009101841

namespace A360925

/-- `A289508(2*(n+2))*A360923(A000096(n))` -/
def P4921844000009101841.Spec : Prop :=
  ∀ n, P4921844000009101841.a n = A360925 n

end A360925

/-! ## A360925.P770475492001260150

`record[A360923(n)/A116395(n)]`
-/

namespace A360925.P770475492001260150
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360923 n : ℚ) / (A116395 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360925.P770475492001260150

namespace A360925

/-- `record[A360923(n)/A116395(n)]` -/
def P770475492001260150.Spec : Prop :=
  ∀ n, P770475492001260150.a n = (A360925 n : ℚ)

end A360925

/-! ## A360925.P16856503831097027782

`record[gcd(A025581(n), A360923(n))]`
-/

namespace A360925.P16856503831097027782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A025581 n) (A360923 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360925.P16856503831097027782

namespace A360925

/-- `record[gcd(A025581(n), A360923(n))]` -/
def P16856503831097027782.Spec : Prop :=
  ∀ n, (P16856503831097027782.a n : ℤ) = A360925 n

end A360925

/-!
# A360926: Smallest number of moves needed to win Integer Lunar Lander with a starting position of (n,n).

The programs for A360926, the canonical program `A360926.P4629588072312420784` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360926 has offset 0).

The definition of A360926 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 301 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360926.P11136949046798802770

`ceil(2*sqrt(∑[n])+n)`
-/

namespace A360926.P11136949046798802770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) + (n : ℝ)⌉

end

end A360926.P11136949046798802770

namespace A360926

/-- `ceil(2*sqrt(∑[n])+n)` -/
def P11136949046798802770.Spec : Prop :=
  ∀ n, P11136949046798802770.a n = A360926 n

end A360926

/-! ## A360926.P9365785362085355657

`ceil(2*sqrt(C(n+1, 2)))+n`
-/

namespace A360926.P9365785362085355657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (Nat.choose (n + 1) 2 : ℝ)⌉ + (n : ℤ)

end

end A360926.P9365785362085355657

namespace A360926

/-- `ceil(2*sqrt(C(n+1, 2)))+n` -/
def P9365785362085355657.Spec : Prop :=
  ∀ n, P9365785362085355657.a n = A360926 n

end A360926

/-! ## A360926.P1026452682540736259

`ceil(sqrt(A046092(n)))+n`
-/

namespace A360926.P1026452682540736259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A046092 n : ℝ)⌉ + (n : ℤ)

end

end A360926.P1026452682540736259

namespace A360926

/-- `ceil(sqrt(A046092(n)))+n` -/
def P1026452682540736259.Spec : Prop :=
  ∀ n, P1026452682540736259.a n = A360926 n

end A360926

/-! ## A360926.P5081251986838117002

`ceil(2*sqrt(A000217(n)))+n`
-/

namespace A360926.P5081251986838117002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * Real.sqrt (A000217 n : ℝ)⌉ + (n : ℤ)

end

end A360926.P5081251986838117002

namespace A360926

/-- `ceil(2*sqrt(A000217(n)))+n` -/
def P5081251986838117002.Spec : Prop :=
  ∀ n, P5081251986838117002.a n = A360926 n

end A360926

/-! ## A360926.P4629588072312420784

`A248232(n+1)-A028310(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A360926

/-- `A248232(n+1)-A028310(n)` -/
def P4629588072312420784.Spec : Prop :=
  ∀ n, P4629588072312420784.a n = A360926 n

theorem P4629588072312420784.correct : P4629588072312420784.Spec := by
  intro n
  simp only [A360926]

end A360926

/-! ## A360926.P12074851862754743131

`A360925(n+1)-1`
-/

namespace A360926.P12074851862754743131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360925 (n + 1) - 1

end

end A360926.P12074851862754743131

namespace A360926

/-- `A360925(n+1)-1` -/
def P12074851862754743131.Spec : Prop :=
  ∀ n, P12074851862754743131.a n = A360926 n

end A360926

/-! ## A360926.P10457310921849369362

`A023443(A360925(n+1))`
-/

namespace A360926.P10457310921849369362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A360925 (n + 1)).toNat

end

end A360926.P10457310921849369362

namespace A360926

/-- `A023443(A360925(n+1))` -/
def P10457310921849369362.Spec : Prop :=
  ∀ n, P10457310921849369362.a n = A360926 n

end A360926

/-! ## A360926.P18377369636060500775

`A248232(n+1)-A055086(A076921(n+1))`
-/

namespace A360926.P18377369636060500775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248232 (n + 1) - A055086 (A076921 (n + 1)).toNat

end

end A360926.P18377369636060500775

namespace A360926

/-- `A248232(n+1)-A055086(A076921(n+1))` -/
def P18377369636060500775.Spec : Prop :=
  ∀ n, P18377369636060500775.a n = A360926 n

end A360926

/-! ## A360926.P17006583479597333526

`A360923(∑[n+2])-1`
-/

namespace A360926.P17006583479597333526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360923 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A360926.P17006583479597333526

namespace A360926

/-- `A360923(∑[n+2])-1` -/
def P17006583479597333526.Spec : Prop :=
  ∀ n, P17006583479597333526.a n = A360926 n

end A360926

/-! ## A360926.P13118175679092544526

`record[A360923(n+1)-A116395(n+1)]`
-/

namespace A360926.P13118175679092544526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360923 (n + 1) - A116395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360926.P13118175679092544526

namespace A360926

/-- `record[A360923(n+1)-A116395(n+1)]` -/
def P13118175679092544526.Spec : Prop :=
  ∀ n, P13118175679092544526.a n = A360926 n

end A360926

/-!
# A360927: Expansion of the g.f. x*(1 + 3*x + 4*x^2 + 4*x^3)/((1 - x)^2*(1 + x)).

The programs for A360927, the canonical program `A360927.P3978124309396208725` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360927 has offset 0).

The definition of A360927 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+3x^2+4x^3+4x^4)/(1-x-x^2+x^3))` (program `A360927.P3978124309396208725`, by `A360927.P3978124309396208725.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A360927.P3978124309396208725

`ogf((x+3x^2+4x^3+4x^4)/(1-x-x^2+x^3))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A360927

/-- `ogf((x+3x^2+4x^3+4x^4)/(1-x-x^2+x^3))` -/
def P3978124309396208725.Spec : Prop :=
  ∀ n, P3978124309396208725.a n = A360927 n

theorem P3978124309396208725.correct : P3978124309396208725.Spec := by
  intro n
  simp only [A360927]

end A360927

/-! ## A360927.P6422557333736015039

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=9, a(4)=16`
-/

namespace A360927.P6422557333736015039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 4, 9, 16] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A360927.P6422557333736015039

namespace A360927

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P6422557333736015039.Spec : Prop :=
  ∀ n, P6422557333736015039.a n = A360927 n

end A360927

/-! ## A360927.P17289187374777068404

`a(n-2)+12` with `a(0)=0, a(1)=1, a(2)=4, a(3)=9`
-/

namespace A360927.P17289187374777068404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 4, 9] fun n a =>
  a (n - 2) + 12

end

end A360927.P17289187374777068404

namespace A360927

/-- `a(n-2)+12` -/
def P17289187374777068404.Spec : Prop :=
  ∀ n, (P17289187374777068404.a n : ℤ) = A360927 n

end A360927

/-! ## A360927.P1037353692636649253

`∑[or(4, a(n-2))]` with `a(0)=0, a(1)=1, a(2)=3`
-/

namespace A360927.P1037353692636649253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 3] fun n f1 =>
  Nat.lor 4 (f1 (n - 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360927.P1037353692636649253

namespace A360927

/-- `∑[or(4, a(n-2))]` -/
def P1037353692636649253.Spec : Prop :=
  ∀ n, (P1037353692636649253.a n : ℤ) = A360927 n

end A360927

/-! ## A360927.P17077388716906349858

`∑[12-a(n-1)]` with `a(0)=0, a(1)=1, a(2)=3, a(3)=5`
-/

namespace A360927.P17077388716906349858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 3, 5] fun n f1 =>
  12 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360927.P17077388716906349858

namespace A360927

/-- `∑[12-a(n-1)]` -/
def P17077388716906349858.Spec : Prop :=
  ∀ n, P17077388716906349858.a n = A360927 n

end A360927

/-! ## A360927.P14096252667759986759

`comp[or(2, n)]+4*floor(n-atan(n))`
-/

namespace A360927.P14096252667759986759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + 4 * ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋

end

end A360927.P14096252667759986759

namespace A360927

/-- `comp[or(2, n)]+4*floor(n-atan(n))` -/
def P14096252667759986759.Spec : Prop :=
  ∀ n, P14096252667759986759.a n = A360927 n

end A360927

/-! ## A360927.P14982976018096591924

`record[and(1-and(2, n), and(3*n, -3))]`
-/

namespace A360927.P14982976018096591924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (1 - (Nat.land 2 n : ℤ)) (Int.land (3 * n : ℤ) (-3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360927.P14982976018096591924

namespace A360927

/-- `record[and(1-and(2, n), and(3*n, -3))]` -/
def P14982976018096591924.Spec : Prop :=
  ∀ n, P14982976018096591924.a n = A360927 n

end A360927

/-! ## A360927.P1738405040939547118

`∑[or(2, 6*n+5)%floor(2/acot(n))]`
-/

namespace A360927.P1738405040939547118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Nat.lor 2 (6 * n + 5) : ℤ) ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360927.P1738405040939547118

namespace A360927

/-- `∑[or(2, 6*n+5)%floor(2/acot(n))]` -/
def P1738405040939547118.Spec : Prop :=
  ∀ n, P1738405040939547118.a n = A360927 n

end A360927

/-! ## A360927.P13008948467700128142

`∑[A071585(ceil(ϕ*a(n-1)))]` with `a(0)=0`
-/

namespace A360927.P13008948467700128142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A071585 ⌈Real.goldenRatio * (f1 (n - 1) : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360927.P13008948467700128142

namespace A360927

/-- `∑[A071585(ceil(ϕ*a(n-1)))]` -/
def P13008948467700128142.Spec : Prop :=
  ∀ n, P13008948467700128142.a n = A360927 n

end A360927

/-! ## A360927.P6359078032798966461

`A160843(n)%A354902(n)`
-/

namespace A360927.P6359078032798966461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160843 n) (A354902 n)

end

end A360927.P6359078032798966461

namespace A360927

/-- `A160843(n)%A354902(n)` -/
def P6359078032798966461.Spec : Prop :=
  ∀ n, P6359078032798966461.a n = A360927 n

end A360927

/-! ## A360927.P17431976244415730116

`∑[A139049(n+1)%A172022(n+1)]`
-/

namespace A360927.P17431976244415730116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A139049 (n + 1)) (A172022 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A360927.P17431976244415730116

namespace A360927

/-- `∑[A139049(n+1)%A172022(n+1)]` -/
def P17431976244415730116.Spec : Prop :=
  ∀ n, P17431976244415730116.a n = A360927 n

end A360927

/-! ## A360927.P16363206312140675568

`record[n²%A168398(n+1)]`
-/

namespace A360927.P16363206312140675568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) (A168398 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A360927.P16363206312140675568

namespace A360927

/-- `record[n²%A168398(n+1)]` -/
def P16363206312140675568.Spec : Prop :=
  ∀ n, P16363206312140675568.a n = A360927 n

end A360927

/-! ## A360927.P4144857393451796687

`A273309(n)-A054554(n+1)`
-/

namespace A360927.P4144857393451796687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273309 n - A054554 (n + 1)

end

end A360927.P4144857393451796687

namespace A360927

/-- `A273309(n)-A054554(n+1)` -/
def P4144857393451796687.Spec : Prop :=
  ∀ n, P4144857393451796687.a n = A360927 n

end A360927

/-! ## A360927.P10416291130710520225

`A047409(A075123(n+2))-(2*n+1)`
-/

namespace A360927.P10416291130710520225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047409 (A075123 (n + 2)).toNat - (2 * n + 1 : ℤ)

end

end A360927.P10416291130710520225

namespace A360927

/-- `A047409(A075123(n+2))-(2*n+1)` -/
def P10416291130710520225.Spec : Prop :=
  ∀ n, P10416291130710520225.a n = A360927 n

end A360927

/-! ## A360927.P1149799484170933896

`eq[A084100(n), A099544(n+1)]`
-/

namespace A360927.P1149799484170933896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084100 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099544 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A360927.P1149799484170933896

namespace A360927

/-- `eq[A084100(n), A099544(n+1)]` -/
def P1149799484170933896.Spec : Prop :=
  ∀ n, (P1149799484170933896.a n : ℤ) = A360927 n

end A360927

/-! ## A360927.P15702890704508286603

`eq[A131015(n), A302130(n+1)]`
-/

namespace A360927.P15702890704508286603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131015 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302130 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A360927.P15702890704508286603

namespace A360927

/-- `eq[A131015(n), A302130(n+1)]` -/
def P15702890704508286603.Spec : Prop :=
  ∀ n, (P15702890704508286603.a n : ℤ) = A360927 n

end A360927

/-! ## A360927.P9732139207619360698

`eq[A313583(n), A315039(n)]`
-/

namespace A360927.P9732139207619360698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313583 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315039 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A360927.P9732139207619360698

namespace A360927

/-- `eq[A313583(n), A315039(n)]` -/
def P9732139207619360698.Spec : Prop :=
  ∀ n, (P9732139207619360698.a n : ℤ) = A360927 n

end A360927

/-! ## A360927.P5714014011296094611

`eq[A313900(n), A314198(n)]`
-/

namespace A360927.P5714014011296094611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A313900 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A314198 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A360927.P5714014011296094611

namespace A360927

/-- `eq[A313900(n), A314198(n)]` -/
def P5714014011296094611.Spec : Prop :=
  ∀ n, (P5714014011296094611.a n : ℤ) = A360927 n

end A360927

/-!
# A360930: Odd numbers which cannot be expressed as p + q*(q-1) where p and q are primes.

The programs for A360930, there is no canonical definition to state claims against.
-/

/-! ## A360930.P5745182697245589199

`and(A201258(n+1), A244780(A008778(n)))`
-/

namespace A360930.P5745182697245589199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A201258 (n + 1)) (A244780 (A008778 n).toNat)

end

end A360930.P5745182697245589199

/-!
# A360932: Primes of the form H(m,k) = F(k+1)*F(m-k+2) - F(k)*F(m-k+1), where F(m) is the m-th Fibonacci number and m >= 0, 0 <= k <= m.

The programs for A360932, there is no canonical definition to state claims against.
-/

/-! ## A360932.P6397136167700153187

`eq[char[A108038(n)], A003415(n)]`
-/

namespace A360932.P6397136167700153187
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108038 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A360932.P6397136167700153187

/-! ## A360932.P5398120586668561503

`filter[A113321(2*(n+1)), A192490(#)]`
-/

namespace A360932.P5398120586668561503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113321 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A192490 (f1 j).toNat = 1) n)

end

end A360932.P5398120586668561503

/-! ## A360932.P10742786978578401582

`∩[A078668(n+1), A191840(n+1)]`
-/

namespace A360932.P10742786978578401582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191840 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360932.P10742786978578401582

/-! ## A360932.P1742846411277526391

`∩[A078668(n+1), A256133(n+1)]`
-/

namespace A360932.P1742846411277526391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078668 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256133 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360932.P1742846411277526391

/-! ## A360932.P5189347987961920993

`∩[A095080(n+1), A246786(n+1)]`
-/

namespace A360932.P5189347987961920993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246786 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360932.P5189347987961920993

/-!
# A360933: Expansion of e.g.f. Sum_{k>=0} exp((3^k - 1)*x) * x^k/k!.

The programs for A360933, there is no canonical definition to state claims against.
-/

/-! ## A360933.P16866223451765591042

`A333200(a(n-1)+n+1)` with `a(0)=1, a(1)=1`
-/

namespace A360933.P16866223451765591042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A333200 (a (n - 1) + (n + 1 : ℤ)).toNat

end

end A360933.P16866223451765591042

/-!
# A360934: Expansion of e.g.f. Sum_{k>=0} exp((4^k - 1)*x) * x^k/k!.

The programs for A360934, there is no canonical definition to state claims against.
-/

/-! ## A360934.P16461036847316488193

`ceil(p?[A303963(n+1)]/8)`
-/

namespace A360934.P16461036847316488193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 8⌉

end

end A360934.P16461036847316488193

/-!
# A360935: Expansion of e.g.f. Sum_{k>=0} exp((k^k - 1)*x) * x^k/k!.

The programs for A360935, there is no canonical definition to state claims against.
-/

/-! ## A360935.P11475942011275257103

`∏{p}[∑[floor((3/acot(n))^(n-2))]², -#]`
-/

namespace A360935.P11475942011275257103
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 / SequenceMachineLib.acot (n : ℝ)) ^ ((n : ℤ) - 2 : ℤ)⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(p : ℤ))

end

end A360935.P11475942011275257103

/-!
# A360936: Triangle read by rows: T(n,k) is the k-th Lie-Betti number of the ladder graph on 2*n vertices, n >= 2, k >= 0.

The programs for A360936, there is no canonical definition to state claims against.
-/

/-! ## A360936.P9034009275467989766

`A361014(A077168(n)+2)`
-/

namespace A360936.P9034009275467989766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361014 (A077168 n + 2).toNat

end

end A360936.P9034009275467989766

/-! ## A360936.P15389851830706011787

`A361014(A161952(n+1)+2)`
-/

namespace A360936.P15389851830706011787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361014 (A161952 (n + 1) + 2).toNat

end

end A360936.P15389851830706011787

/-! ## A360936.P13987983018592879094

`A361014(A187829(n+2)+1)`
-/

namespace A360936.P13987983018592879094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361014 (A187829 (n + 2) + 1).toNat

end

end A360936.P13987983018592879094

/-! ## A360936.P11944482608589703868

`filter[A361014(n+3), A071023(#)]`
-/

namespace A360936.P11944482608589703868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361014 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A071023 (f1 j).toNat = 1) n)

end

end A360936.P11944482608589703868

/-! ## A360936.P7440833228522377682

`filter[A361014(n+3), A215581(#)]`
-/

namespace A360936.P7440833228522377682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361014 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215581 (f1 j).toNat = 1) n)

end

end A360936.P7440833228522377682

/-!
# A360937: Triangle read by rows: T(n, k) is the k-th Lie-Betti number of a wheel graph on n vertices, for n >= 3 and k >= 0.

The programs for A360937, there is no canonical definition to state claims against.
-/

/-! ## A360937.P9027633794296078276

`A360625(A000005(2^n)+6)`
-/

namespace A360937.P9027633794296078276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360625 (A000005 (2 ^ n) + 6).toNat

end

end A360937.P9027633794296078276

/-! ## A360937.P307710242294274429

`A360625(A187829(n+1)+6)`
-/

namespace A360937.P307710242294274429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360625 (A187829 (n + 1) + 6).toNat

end

end A360937.P307710242294274429

/-! ## A360937.P8470847242388191640

`A360625(n+7)%A135751(n+3)`
-/

namespace A360937.P8470847242388191640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A360625 (n + 7)) (A135751 (n + 3))

end

end A360937.P8470847242388191640

/-! ## A360937.P14112211034032460508

`A360625(A077168(n)+6)`
-/

namespace A360937.P14112211034032460508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360625 (A077168 n + 6).toNat

end

end A360937.P14112211034032460508

/-!
# A360939: E.g.f. satisfies A(x) = exp( 2*x*A(x) / (1-x) ).

The programs for A360939, there is no canonical definition to state claims against.
-/

/-! ## A360939.P11421979712938832371

`A352448(n)-A376098(n)`
-/

namespace A360939.P11421979712938832371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352448 n - A376098 n

end

end A360939.P11421979712938832371

/-! ## A360939.P3761041450489710945

`A376098(n+1)/(n+1)-A376098(n)`
-/

namespace A360939.P3761041450489710945
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A376098 (n + 1) : ℚ) / (n + 1 : ℚ) - (A376098 n : ℚ)

end

end A360939.P3761041450489710945

/-!
# A360941: a(n) is the least multiple of m that is a happy number (A007770).

The programs for A360941, there is no canonical definition to state claims against.
-/

/-! ## A360941.P12656054298754315425

`A360942(n+1)*(n+1)`
-/

namespace A360941.P12656054298754315425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360942 (n + 1) * (n + 1 : ℤ)

end

end A360941.P12656054298754315425

/-!
# A360942: a(n) is the least k such that k*n is a happy number (A007770).

The programs for A360942, there is no canonical definition to state claims against.
-/

/-! ## A360942.P7548782060816190398

`A360941(n+1)/(n+1)`
-/

namespace A360942.P7548782060816190398
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360941 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A360942.P7548782060816190398

/-!
# A360944: Numbers m such that phi(m) is a triangular number, where phi is the Euler totient function (A000010).

The programs for A360944, the canonical program `A360944.P4031922297665866421` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360944 has offset 1).

The definition of A360944 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 306 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360944.P15465553139969903454

`eq[1, A002260(A000010(n+1)+1)]+1`
-/

namespace A360944.P15465553139969903454
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360944.P15465553139969903454

namespace A360944

/-- `eq[1, A002260(A000010(n+1)+1)]+1` -/
def P15465553139969903454.Spec : Prop :=
  ∀ n, (P15465553139969903454.a n : ℤ) = A360944 (n + 1)

end A360944

/-! ## A360944.P2379812668754167971

`eq[0, A002262(A000010(n+1))]+1`
-/

namespace A360944.P2379812668754167971
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360944.P2379812668754167971

namespace A360944

/-- `eq[0, A002262(A000010(n+1))]+1` -/
def P2379812668754167971.Spec : Prop :=
  ∀ n, (P2379812668754167971.a n : ℤ) = A360944 (n + 1)

end A360944

/-! ## A360944.P4031922297665866421

`eq[2, A035214(sqrt(A127473(n+1)))]+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A360944

/-- `eq[2, A035214(sqrt(A127473(n+1)))]+1` -/
def P4031922297665866421.Spec : Prop :=
  ∀ n, (P4031922297665866421.a n : ℤ) = A360944 (n + 1)

theorem P4031922297665866421.correct : P4031922297665866421.Spec := by
  intro n
  simp only [A360944, Nat.add_sub_cancel]

end A360944

/-! ## A360944.P14205238323273136785

`eq[1, A158405(A000010(n+1)+1)]+1`
-/

namespace A360944.P14205238323273136785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158405 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360944.P14205238323273136785

namespace A360944

/-- `eq[1, A158405(A000010(n+1)+1)]+1` -/
def P14205238323273136785.Spec : Prop :=
  ∀ n, (P14205238323273136785.a n : ℤ) = A360944 (n + 1)

end A360944

/-! ## A360944.P7816307492682968079

`eq[1, A210196(A000010(n+1)+1)]+1`
-/

namespace A360944.P7816307492682968079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210196 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360944.P7816307492682968079

namespace A360944

/-- `eq[1, A210196(A000010(n+1)+1)]+1` -/
def P7816307492682968079.Spec : Prop :=
  ∀ n, (P7816307492682968079.a n : ℤ) = A360944 (n + 1)

end A360944

/-! ## A360944.P10959196948963207724

`eq[1, A245093(A000010(n+1)+1)]+1`
-/

namespace A360944.P10959196948963207724
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245093 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360944.P10959196948963207724

namespace A360944

/-- `eq[1, A245093(A000010(n+1)+1)]+1` -/
def P10959196948963207724.Spec : Prop :=
  ∀ n, (P10959196948963207724.a n : ℤ) = A360944 (n + 1)

end A360944

/-! ## A360944.P9925816310933248348

`eq[1, A277227(A000010(n+1)+1)]+1`
-/

namespace A360944.P9925816310933248348
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277227 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360944.P9925816310933248348

namespace A360944

/-- `eq[1, A277227(A000010(n+1)+1)]+1` -/
def P9925816310933248348.Spec : Prop :=
  ∀ n, (P9925816310933248348.a n : ℤ) = A360944 (n + 1)

end A360944

/-! ## A360944.P13629952306860056639

`eq[1, A327844(A000010(n+1)+1)]+1`
-/

namespace A360944.P13629952306860056639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327844 (A000010 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360944.P13629952306860056639

namespace A360944

/-- `eq[1, A327844(A000010(n+1)+1)]+1` -/
def P13629952306860056639.Spec : Prop :=
  ∀ n, (P13629952306860056639.a n : ℤ) = A360944 (n + 1)

end A360944

/-! ## A360944.P4777123109449241895

`eq[2, A131818(A000010(n+1)+2)]+1`
-/

namespace A360944.P4777123109449241895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (A000010 (n + 1) + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A360944.P4777123109449241895

namespace A360944

/-- `eq[2, A131818(A000010(n+1)+2)]+1` -/
def P4777123109449241895.Spec : Prop :=
  ∀ n, (P4777123109449241895.a n : ℤ) = A360944 (n + 1)

end A360944

/-! ## A360944.P281494484698928232

`eq[A000005(((-1)^n)²), A004736(A000010(n+1))]+1`
-/

namespace A360944.P281494484698928232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (((-1) ^ n) ^ 2).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A360944.P281494484698928232

namespace A360944

/-- `eq[A000005(((-1)^n)²), A004736(A000010(n+1))]+1` -/
def P281494484698928232.Spec : Prop :=
  ∀ n, (P281494484698928232.a n : ℤ) = A360944 (n + 1)

end A360944

/-!
# A360945: a(n) = numerator of (Zeta(2*n+1,1/4) - Zeta(2*n+1,3/4))/Pi^(2*n+1) where Zeta is the Hurwitz zeta function.

The programs for A360945, there is no canonical definition to state claims against.
-/

/-! ## A360945.P10556430852886433881

`A046982(2*n)`
-/

namespace A360945.P10556430852886433881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046982 (2 * n)

end

end A360945.P10556430852886433881

/-! ## A360945.P6643900464760356664

`A001316(n)*A099612(2*n)`
-/

namespace A360945.P6643900464760356664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n * A099612 (2 * n)

end

end A360945.P6643900464760356664

/-! ## A360945.P3879559353774524976

`A048896(2*n)*A099612(2*n)`
-/

namespace A360945.P3879559353774524976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (2 * n) * A099612 (2 * n)

end

end A360945.P3879559353774524976

/-! ## A360945.P17296873925602075800

`A048896(2*n)*A050970(2*n+1)`
-/

namespace A360945.P17296873925602075800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048896 (2 * n) * A050970 (2 * n + 1)

end

end A360945.P17296873925602075800

/-! ## A360945.P8788784123096067521

`lcm(A099612(A005843(n)), A335257(n+1))`
-/

namespace A360945.P8788784123096067521
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A099612 (A005843 n).toNat) (A335257 (n + 1))

end

end A360945.P8788784123096067521

/-!
# A360948: a(n) = Sum_{d|n} (n/d)^(d-1) * binomial(d+n/d-1,d).

The programs for A360948, the canonical program `A360948.P8523637098592212987` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360948 has offset 1).

The definition of A360948 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A360948.P8523637098592212987

`∑{d}[n+1, ((n+1)/#)^(#-1)*C(#+(n+1)/#-1, #)]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A360948

/-- `∑{d}[n+1, ((n+1)/#)^(#-1)*C(#+(n+1)/#-1, #)]` -/
def P8523637098592212987.Spec : Prop :=
  ∀ n, P8523637098592212987.a n = (A360948 (n + 1) : ℚ)

end A360948

/-!
# A360949: G.f. A(x) satisfies: 1 = Sum_{n>=0} (-x/2)^n * (A(x)^n + (-1)^n)^n.

The programs for A360949, there is no canonical definition to state claims against.
-/

/-! ## A360949.P2621386946337371221

`A325574(n)/2^n`
-/

namespace A360949.P2621386946337371221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325574 n : ℚ) / (2 ^ n : ℚ)

end

end A360949.P2621386946337371221

/-! ## A360949.P8835435034699748955

`A360980(A325574(n)/A000079(n))`
-/

namespace A360949.P8835435034699748955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360980 (SequenceMachineLib.roundAway ((A325574 n : ℚ) / (A000079 n : ℚ))).toNat

end

end A360949.P8835435034699748955

/-!
# A360950: Expansion of g.f. A(x) satisfying A(x) = Sum_{n>=0} d^n/dx^n x^(2*n) * A(x)^n / n!.

The programs for A360950, there is no canonical definition to state claims against.
-/

/-! ## A360950.P1785408928856826515

`(n+1)*A229619(n+1)`
-/

namespace A360950.P1785408928856826515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A229619 (n + 1)

end

end A360950.P1785408928856826515

/-! ## A360950.P9067583068202453454

`lcm(A034710(n+1), A266491(A229619(n+1)))`
-/

namespace A360950.P9067583068202453454
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034710 (n + 1)) (A266491 (A229619 (n + 1)).toNat)

end

end A360950.P9067583068202453454

/-!
# A360951: Expansion of e.g.f. (cosh(x) - 1)*(1 + x)*exp(x).

The programs for A360951, the canonical program `A360951.P11060254111176722639` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360951 has offset 0).

The definition of A360951 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360951.P11060254111176722639

`A045623(n)-A323227(n)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A360951

/-- `A045623(n)-A323227(n)` -/
def P11060254111176722639.Spec : Prop :=
  ∀ n, P11060254111176722639.a n = A360951 n

theorem P11060254111176722639.correct : P11060254111176722639.Spec := by
  intro n
  simp only [A360951]

end A360951

/-! ## A360951.P13552521676165793891

`A129953(n)-A184985(n+1)`
-/

namespace A360951.P13552521676165793891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129953 n - A184985 (n + 1)

end

end A360951.P13552521676165793891

namespace A360951

/-- `A129953(n)-A184985(n+1)` -/
def P13552521676165793891.Spec : Prop :=
  ∀ n, P13552521676165793891.a n = A360951 n

end A360951

/-! ## A360951.P18175321103656805178

`A134311(n)-A131352(n)`
-/

namespace A360951.P18175321103656805178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134311 n - A131352 n

end

end A360951.P18175321103656805178

namespace A360951

/-- `A134311(n)-A131352(n)` -/
def P18175321103656805178.Spec : Prop :=
  ∀ n, P18175321103656805178.a n = A360951 n

end A360951

/-! ## A360951.P17430911124491966515

`A221882(n+1)%A084860(n)`
-/

namespace A360951.P17430911124491966515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A221882 (n + 1)) (A084860 n)

end

end A360951.P17430911124491966515

namespace A360951

/-- `A221882(n+1)%A084860(n)` -/
def P17430911124491966515.Spec : Prop :=
  ∀ n, P17430911124491966515.a n = A360951 n

end A360951

/-! ## A360951.P8505533710758763632

`A250652(n+1)%A087447(n)`
-/

namespace A360951.P8505533710758763632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A250652 (n + 1)) (A087447 n)

end

end A360951.P8505533710758763632

namespace A360951

/-- `A250652(n+1)%A087447(n)` -/
def P8505533710758763632.Spec : Prop :=
  ∀ n, P8505533710758763632.a n = A360951 n

end A360951

/-!
# A360952: Number of strict integer partitions of n with non-integer median; a(0) = 1.

The programs for A360952, there is no canonical definition to state claims against.
-/

/-! ## A360952.P8806517723534281121

`A000009(n)-A359907(n)`
-/

namespace A360952.P8806517723534281121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 n - A359907 n

end

end A360952.P8806517723534281121

/-! ## A360952.P4167543070380870541

`∑[A087897(n)]-A359907(n)`
-/

namespace A360952.P4167543070380870541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A359907 n

end

end A360952.P4167543070380870541

/-! ## A360952.P10073791929742217917

`A111133(n)+1-A359907(n)`
-/

namespace A360952.P10073791929742217917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111133 n + (1 - A359907 n)

end

end A360952.P10073791929742217917

/-! ## A360952.P18446548953892197031

`A172033(2*n)-A359907(n)`
-/

namespace A360952.P18446548953892197031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172033 (2 * n) - A359907 n

end

end A360952.P18446548953892197031

/-! ## A360952.P848890087252104388

`ceil(A087135(n)/2)-A359907(n)`
-/

namespace A360952.P848890087252104388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A087135 n : ℚ) / 2⌉ - A359907 n

end

end A360952.P848890087252104388

/-! ## A360952.P12472434205944701147

`A219347(A000124(n))-A359907(n)`
-/

namespace A360952.P12472434205944701147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 (A000124 n).toNat - A359907 n

end

end A360952.P12472434205944701147

/-! ## A360952.P319558516084568736

`A241701(A001840(n))-A359907(n)`
-/

namespace A360952.P319558516084568736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241701 (A001840 n).toNat - A359907 n

end

end A360952.P319558516084568736

/-! ## A360952.P5840729213346483131

`A052839(n)+A057428(n)-A359907(n)`
-/

namespace A360952.P5840729213346483131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052839 n + (A057428 n - A359907 n)

end

end A360952.P5840729213346483131

/-!
# A360953: Numbers whose right half of prime indices (exclusive) adds up to half the total sum of prime indices.

The programs for A360953, there is no canonical definition to state claims against.
-/

/-! ## A360953.P11490427620259394959

`eq[A360677(n+1), A360678(n+1)]+1`
-/

namespace A360953.P11490427620259394959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360677 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360678 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A360953.P11490427620259394959

/-! ## A360953.P10456305611664803999

`eq[char[A320924(n+1)], A324924(n+1)]`
-/

namespace A360953.P10456305611664803999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320924 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324924 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A360953.P10456305611664803999

/-! ## A360953.P17784518747410081998

`∩[A335235(n+1), A357976(n+1)]`
-/

namespace A360953.P17784518747410081998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335235 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357976 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360953.P17784518747410081998

/-!
# A360955: Number of finite sets of positive integers whose right half (inclusive) sums to n.

The programs for A360955, there is no canonical definition to state claims against.
-/

/-! ## A360955.P12778448648830251128

`A263846(A005509(n))`
-/

namespace A360955.P12778448648830251128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263846 (A005509 n).toNat

end

end A360955.P12778448648830251128

/-! ## A360955.P12190824327000405795

`A108917(n)+A102683(A129921(n))`
-/

namespace A360955.P12190824327000405795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108917 n + A102683 (A129921 n).toNat

end

end A360955.P12190824327000405795

/-! ## A360955.P2662041439917335663

`A226538(n)-A185264(A048407(n))`
-/

namespace A360955.P2662041439917335663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226538 n - A185264 (A048407 n).toNat

end

end A360955.P2662041439917335663

/-! ## A360955.P546669005765995295

`A226538(n)-A184946(A008292(n+1))`
-/

namespace A360955.P546669005765995295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226538 n - A184946 (A008292 (n + 1)).toNat

end

end A360955.P546669005765995295

/-! ## A360955.P13527597432978073310

`A038348(n)-A345228(A345235(n+1))`
-/

namespace A360955.P13527597432978073310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038348 n - A345228 (A345235 (n + 1)).toNat

end

end A360955.P13527597432978073310

/-!
# A360960: Inverse permutation to A360959.

The programs for A360960, there is no canonical definition to state claims against.
-/

/-! ## A360960.P11095142122818225794

`A266412(n+1)+A134824(A153893(n))`
-/

namespace A360960.P11095142122818225794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266412 (n + 1) + A134824 (A153893 n).toNat

end

end A360960.P11095142122818225794

/-! ## A360960.P10485809557027586978

`A266412(n+1)-A000035(A001333(n))`
-/

namespace A360960.P10485809557027586978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266412 (n + 1) - A000035 (A001333 n).toNat

end

end A360960.P10485809557027586978

/-! ## A360960.P18114075279793219987

`A266412(n+1)-A011558(A005248(n))`
-/

namespace A360960.P18114075279793219987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266412 (n + 1) - A011558 (A005248 n).toNat

end

end A360960.P18114075279793219987

/-! ## A360960.P7205245608420554368

`A266412(n+1)-A057427(A001006(n))`
-/

namespace A360960.P7205245608420554368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266412 (n + 1) - A057427 (A001006 n).toNat

end

end A360960.P7205245608420554368

/-! ## A360960.P5239992451571310356

`A266412(n+1)-A094635(A000079(n))`
-/

namespace A360960.P5239992451571310356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266412 (n + 1) - A094635 (A000079 n).toNat

end

end A360960.P5239992451571310356

/-!
# A360961: Triangle T(m,n) read by rows: the number of homomorphisms of the complete graph on n vertices to the quasi-complete graph on m vertices, m>=3, 3<=n

The programs for A360961, there is no canonical definition to state claims against.
-/

/-! ## A360961.P3960911086898732379

`∑{d}[A319242((n+2)²), #]`
-/

namespace A360961.P3960911086898732379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319242 ((n + 2) ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A360961.P3960911086898732379

/-! ## A360961.P6542655810032314570

`A000203(A319242((n+2)²))`
-/

namespace A360961.P6542655810032314570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A319242 ((n + 2) ^ 2)).toNat

end

end A360961.P6542655810032314570

/-!
# A360966: a(n) = denominator of (Zeta(2*n+1,1/4) - Zeta(2*n+1,3/4))/Pi^(2*n+1) where Zeta is the Hurwitz zeta function.

The programs for A360966, there is no canonical definition to state claims against.
-/

/-! ## A360966.P13660824555119285565

`A046983(2*n)`
-/

namespace A360966.P13660824555119285565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046983 (2 * n)

end

end A360966.P13660824555119285565

/-! ## A360966.P4487664187402432149

`A099617(2*n)/A004732(2*n)`
-/

namespace A360966.P4487664187402432149
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099617 (2 * n) : ℚ) / (A004732 (2 * n) : ℚ)

end

end A360966.P4487664187402432149

/-! ## A360966.P7755608510081950364

`gcd(A049606(2*n), A099617(2*n))`
-/

namespace A360966.P7755608510081950364
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049606 (2 * n)) (A099617 (2 * n))

end

end A360966.P7755608510081950364

/-! ## A360966.P3101860317904106327

`A162445(n)/A061549(n)`
-/

namespace A360966.P3101860317904106327
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162445 n : ℚ) / (A061549 n : ℚ)

end

end A360966.P3101860317904106327

/-! ## A360966.P4081920147523204222

`A162445(n)/A046161(2*n)`
-/

namespace A360966.P4081920147523204222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162445 n : ℚ) / (A046161 (2 * n) : ℚ)

end

end A360966.P4081920147523204222

/-!
# A360967: Array T(n,m) = (2^(m*(2*n+1))+1)/(2^m+1) read by antidiagonals.

The programs for A360967, there is no canonical definition to state claims against.
-/

/-! ## A360967.P14314499172013371594

`A358505(A136367(n+1))+1`
-/

namespace A360967.P14314499172013371594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358505 (A136367 (n + 1)).toNat + 1

end

end A360967.P14314499172013371594

/-!
# A360969: Multiplicative with a(p^e) = e^2, p prime and e > 0.

The programs for A360969, the canonical program `A360969.P9537499425783326170` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360969 has offset 1).

The definition of A360969 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360969.P9537499425783326170

`A005361(n+1)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A360969

/-- `A005361(n+1)²` -/
def P9537499425783326170.Spec : Prop :=
  ∀ n, P9537499425783326170.a n = A360969 (n + 1)

theorem P9537499425783326170.correct : P9537499425783326170.Spec := by
  intro n
  simp only [A360969, Nat.add_sub_cancel]

end A360969

/-! ## A360969.P14039686715468212421

`∏{e}[n+1, #²]`
-/

namespace A360969.P14039686715468212421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2

end

end A360969.P14039686715468212421

namespace A360969

/-- `∏{e}[n+1, #²]` -/
def P14039686715468212421.Spec : Prop :=
  ∀ n, (P14039686715468212421.a n : ℤ) = A360969 (n + 1)

end A360969

/-! ## A360969.P11507689193377539906

`∏{e}[n+1, #]^2`
-/

namespace A360969.P11507689193377539906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) ^ 2

end

end A360969.P11507689193377539906

namespace A360969

/-- `∏{e}[n+1, #]^2` -/
def P11507689193377539906.Spec : Prop :=
  ∀ n, (P11507689193377539906.a n : ℤ) = A360969 (n + 1)

end A360969

/-! ## A360969.P17581906513268422790

`∏{e}[xor(n, -1), #]²`
-/

namespace A360969.P17581906513268422790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) ^ 2

end

end A360969.P17581906513268422790

namespace A360969

/-- `∏{e}[xor(n, -1), #]²` -/
def P17581906513268422790.Spec : Prop :=
  ∀ n, (P17581906513268422790.a n : ℤ) = A360969 (n + 1)

end A360969

/-! ## A360969.P7935905302384711489

`4^∑{e}[n+1, log2(#)]`
-/

namespace A360969.P7935905302384711489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (4 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p : ℝ))

end

end A360969.P7935905302384711489

namespace A360969

/-- `4^∑{e}[n+1, log2(#)]` -/
def P7935905302384711489.Spec : Prop :=
  ∀ n, P7935905302384711489.a n = (A360969 (n + 1) : ℝ)

end A360969

/-! ## A360969.P4807270168510443931

`exp(∑{e}[n+1, log(#²)])`
-/

namespace A360969.P4807270168510443931
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ p ∈ Nat.primeFactors (f1 n), Real.log (Nat.factorization (f1 n) p ^ 2 : ℝ))

end

end A360969.P4807270168510443931

namespace A360969

/-- `exp(∑{e}[n+1, log(#²)])` -/
def P4807270168510443931.Spec : Prop :=
  ∀ n, P4807270168510443931.a n = (A360969 (n + 1) : ℝ)

end A360969

/-! ## A360969.P7361717106851409249

`∏{e}[n-Δ[n²], #]²`
-/

namespace A360969.P7361717106851409249
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) ^ 2

end

end A360969.P7361717106851409249

namespace A360969

/-- `∏{e}[n-Δ[n²], #]²` -/
def P7361717106851409249.Spec : Prop :=
  ∀ n, (P7361717106851409249.a n : ℤ) = A360969 (n + 1)

end A360969

/-! ## A360969.P12613139332800655027

`∏{p}[n+1, val(n+1, #)²]`
-/

namespace A360969.P12613139332800655027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p ^ 2

end

end A360969.P12613139332800655027

namespace A360969

/-- `∏{p}[n+1, val(n+1, #)²]` -/
def P12613139332800655027.Spec : Prop :=
  ∀ n, (P12613139332800655027.a n : ℤ) = A360969 (n + 1)

end A360969

/-! ## A360969.P11668630313639069177

`abs(∏{e}[2*n-(n-1), -#])²`
-/

namespace A360969.P11668630313639069177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(Nat.factorization (f1 n).natAbs p : ℤ))| ^ 2

end

end A360969.P11668630313639069177

namespace A360969

/-- `abs(∏{e}[2*n-(n-1), -#])²` -/
def P11668630313639069177.Spec : Prop :=
  ∀ n, P11668630313639069177.a n = A360969 (n + 1)

end A360969

/-! ## A360969.P6480792771424278316

`∏{e}[2*n-(n-1), sqrt(#)]²²`
-/

namespace A360969.P6480792771424278316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Real.sqrt (Nat.factorization (f1 n).natAbs p : ℝ)) ^ 2) ^ 2

end

end A360969.P6480792771424278316

namespace A360969

/-- `∏{e}[2*n-(n-1), sqrt(#)]²²` -/
def P6480792771424278316.Spec : Prop :=
  ∀ n, P6480792771424278316.a n = (A360969 (n + 1) : ℝ)

end A360969

/-! ## A360969.P5405827131495636981

`A303915(n+1)²`
-/

namespace A360969.P5405827131495636981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303915 (n + 1) ^ 2

end

end A360969.P5405827131495636981

namespace A360969

/-- `A303915(n+1)²` -/
def P5405827131495636981.Spec : Prop :=
  ∀ n, P5405827131495636981.a n = A360969 (n + 1)

end A360969

/-! ## A360969.P8658385458080890772

`sqrt(A361132(n+1))`
-/

namespace A360969.P8658385458080890772
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A361132 (n + 1) : ℝ)

end

end A360969.P8658385458080890772

namespace A360969

/-- `sqrt(A361132(n+1))` -/
def P8658385458080890772.Spec : Prop :=
  ∀ n, P8658385458080890772.a n = (A360969 (n + 1) : ℝ)

end A360969

/-! ## A360969.P15501190848898816154

`A000290(∏{e}[n+1, #])`
-/

namespace A360969.P15501190848898816154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A360969.P15501190848898816154

namespace A360969

/-- `A000290(∏{e}[n+1, #])` -/
def P15501190848898816154.Spec : Prop :=
  ∀ n, P15501190848898816154.a n = A360969 (n + 1)

end A360969

/-! ## A360969.P5992458927360556824

`(A183094(n+1)+1)²`
-/

namespace A360969.P5992458927360556824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A183094 (n + 1) + 1) ^ 2

end

end A360969.P5992458927360556824

namespace A360969

/-- `(A183094(n+1)+1)²` -/
def P5992458927360556824.Spec : Prop :=
  ∀ n, P5992458927360556824.a n = A360969 (n + 1)

end A360969

/-! ## A360969.P1081853778874116310

`A000005((n+1)/∏{p}[n+1, #])²`
-/

namespace A360969.P1081853778874116310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat ^ 2

end

end A360969.P1081853778874116310

namespace A360969

/-- `A000005((n+1)/∏{p}[n+1, #])²` -/
def P1081853778874116310.Spec : Prop :=
  ∀ n, P1081853778874116310.a n = A360969 (n + 1)

end A360969

/-! ## A360969.P1719855161439883479

`A035116(A003557(n+1))`
-/

namespace A360969.P1719855161439883479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (A003557 (n + 1)).toNat

end

end A360969.P1719855161439883479

namespace A360969

/-- `A035116(A003557(n+1))` -/
def P1719855161439883479.Spec : Prop :=
  ∀ n, P1719855161439883479.a n = A360969 (n + 1)

end A360969

/-! ## A360969.P6781347001542032288

`A035116(A292589(n+1))`
-/

namespace A360969.P6781347001542032288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (A292589 (n + 1)).toNat

end

end A360969.P6781347001542032288

namespace A360969

/-- `A035116(A292589(n+1))` -/
def P6781347001542032288.Spec : Prop :=
  ∀ n, P6781347001542032288.a n = A360969 (n + 1)

end A360969

/-! ## A360969.P11074840683942851451

`A035116(A396938(n+1))`
-/

namespace A360969.P11074840683942851451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035116 (A396938 (n + 1)).toNat

end

end A360969.P11074840683942851451

namespace A360969

/-- `A035116(A396938(n+1))` -/
def P11074840683942851451.Spec : Prop :=
  ∀ n, P11074840683942851451.a n = A360969 (n + 1)

end A360969

/-! ## A360969.P6169324196560350967

`A366763(A057521(n+1))²`
-/

namespace A360969.P6169324196560350967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366763 (A057521 (n + 1)).toNat ^ 2

end

end A360969.P6169324196560350967

namespace A360969

/-- `A366763(A057521(n+1))²` -/
def P6169324196560350967.Spec : Prop :=
  ∀ n, P6169324196560350967.a n = A360969 (n + 1)

end A360969

/-! ## A360969.P16358200822814926227

`A360970(n+1)/A005361(n+1)`
-/

namespace A360969.P16358200822814926227
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360970 (n + 1) : ℚ) / (A005361 (n + 1) : ℚ)

end

end A360969.P16358200822814926227

namespace A360969

/-- `A360970(n+1)/A005361(n+1)` -/
def P16358200822814926227.Spec : Prop :=
  ∀ n, P16358200822814926227.a n = (A360969 (n + 1) : ℚ)

end A360969

/-!
# A360970: Multiplicative with a(p^e) = e^3, p prime and e > 0.

The programs for A360970, the canonical program `A360970.P1568768849045067679` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360970 has offset 1).

The definition of A360970 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360970.P1568768849045067679

`A005361(n+1)^3`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A360970

/-- `A005361(n+1)^3` -/
def P1568768849045067679.Spec : Prop :=
  ∀ n, P1568768849045067679.a n = A360970 (n + 1)

theorem P1568768849045067679.correct : P1568768849045067679.Spec := by
  intro n
  simp only [A360970, Nat.add_sub_cancel]

end A360970

/-! ## A360970.P15322276298265253312

`∏{e}[n+1, #^3]`
-/

namespace A360970.P15322276298265253312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 3

end

end A360970.P15322276298265253312

namespace A360970

/-- `∏{e}[n+1, #^3]` -/
def P15322276298265253312.Spec : Prop :=
  ∀ n, (P15322276298265253312.a n : ℤ) = A360970 (n + 1)

end A360970

/-! ## A360970.P6771850456190554881

`8^∑{e}[n+1, log2(#)]`
-/

namespace A360970.P6771850456190554881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (8 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p : ℝ))

end

end A360970.P6771850456190554881

namespace A360970

/-- `8^∑{e}[n+1, log2(#)]` -/
def P6771850456190554881.Spec : Prop :=
  ∀ n, P6771850456190554881.a n = (A360970 (n + 1) : ℝ)

end A360970

/-! ## A360970.P14076869061207376832

`∏{e}[xor(n, -1), #]^3`
-/

namespace A360970.P14076869061207376832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) ^ 3

end

end A360970.P14076869061207376832

namespace A360970

/-- `∏{e}[xor(n, -1), #]^3` -/
def P14076869061207376832.Spec : Prop :=
  ∀ n, (P14076869061207376832.a n : ℤ) = A360970 (n + 1)

end A360970

/-! ## A360970.P11871127038541773530

`exp(∑{e}[n+1, log(#)])^3`
-/

namespace A360970.P11871127038541773530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ p ∈ Nat.primeFactors (f1 n), Real.log (Nat.factorization (f1 n) p : ℝ)) ^ 3

end

end A360970.P11871127038541773530

namespace A360970

/-- `exp(∑{e}[n+1, log(#)])^3` -/
def P11871127038541773530.Spec : Prop :=
  ∀ n, P11871127038541773530.a n = (A360970 (n + 1) : ℝ)

end A360970

/-! ## A360970.P12650756114971642557

`∏{e}[n+1, #*sqrt(#)]²`
-/

namespace A360970.P12650756114971642557
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℝ) * Real.sqrt (Nat.factorization (f1 n) p : ℝ)) ^ 2

end

end A360970.P12650756114971642557

namespace A360970

/-- `∏{e}[n+1, #*sqrt(#)]²` -/
def P12650756114971642557.Spec : Prop :=
  ∀ n, P12650756114971642557.a n = (A360970 (n + 1) : ℝ)

end A360970

/-! ## A360970.P11010148798037761531

`∏{e}[ceil(sqrt(∑[2*n])), #]^3`
-/

namespace A360970.P11010148798037761531
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℝ)⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p) ^ 3

end

end A360970.P11010148798037761531

namespace A360970

/-- `∏{e}[ceil(sqrt(∑[2*n])), #]^3` -/
def P11010148798037761531.Spec : Prop :=
  ∀ n, (P11010148798037761531.a n : ℤ) = A360970 (n + 1)

end A360970

/-! ## A360970.P3860119043873361290

`abs(∏{e}[n+1, -(#*#²)])`
-/

namespace A360970.P3860119043873361290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p * Nat.factorization (f1 n) p ^ 2 : ℤ))|

end

end A360970.P3860119043873361290

namespace A360970

/-- `abs(∏{e}[n+1, -(#*#²)])` -/
def P3860119043873361290.Spec : Prop :=
  ∀ n, P3860119043873361290.a n = A360970 (n + 1)

end A360970

/-! ## A360970.P17528232731122850714

`∏{p}[n+1, val(n+1, #)^3]`
-/

namespace A360970.P17528232731122850714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n + 1) p ^ 3

end

end A360970.P17528232731122850714

namespace A360970

/-- `∏{p}[n+1, val(n+1, #)^3]` -/
def P17528232731122850714.Spec : Prop :=
  ∀ n, (P17528232731122850714.a n : ℤ) = A360970 (n + 1)

end A360970

/-! ## A360970.P2601865211763253353

`∏{e}[n+1, #²]*∏{e}[n+1, #]`
-/

namespace A360970.P2601865211763253353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2) * (∏ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p)

end

end A360970.P2601865211763253353

namespace A360970

/-- `∏{e}[n+1, #²]*∏{e}[n+1, #]` -/
def P2601865211763253353.Spec : Prop :=
  ∀ n, (P2601865211763253353.a n : ℤ) = A360970 (n + 1)

end A360970

/-! ## A360970.P8386884264463723945

`abs(∏{e}[2*n-(n-1), -#])*abs(∏{e}[2*n-(n-1), -#])²`
-/

namespace A360970.P8386884264463723945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(Nat.factorization (f1 n).natAbs p : ℤ))| * |∏ p ∈ Nat.primeFactors (f2 n).natAbs, (-(Nat.factorization (f2 n).natAbs p : ℤ))| ^ 2

end

end A360970.P8386884264463723945

namespace A360970

/-- `abs(∏{e}[2*n-(n-1), -#])*abs(∏{e}[2*n-(n-1), -#])²` -/
def P8386884264463723945.Spec : Prop :=
  ∀ n, P8386884264463723945.a n = A360970 (n + 1)

end A360970

/-! ## A360970.P8441631693166764204

`A000578(∏{e}[n+1, #])`
-/

namespace A360970.P8441631693166764204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A360970.P8441631693166764204

namespace A360970

/-- `A000578(∏{e}[n+1, #])` -/
def P8441631693166764204.Spec : Prop :=
  ∀ n, P8441631693166764204.a n = A360970 (n + 1)

end A360970

/-! ## A360970.P18251846135838559881

`A000005((n+1)/∏{p}[n+1, #])^3`
-/

namespace A360970.P18251846135838559881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat ^ 3

end

end A360970.P18251846135838559881

namespace A360970

/-- `A000005((n+1)/∏{p}[n+1, #])^3` -/
def P18251846135838559881.Spec : Prop :=
  ∀ n, P18251846135838559881.a n = A360970 (n + 1)

end A360970

/-! ## A360970.P352911359194489962

`A000578(A005361(n+1))`
-/

namespace A360970.P352911359194489962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A005361 (n + 1)).toNat

end

end A360970.P352911359194489962

namespace A360970

/-- `A000578(A005361(n+1))` -/
def P352911359194489962.Spec : Prop :=
  ∀ n, P352911359194489962.a n = A360970 (n + 1)

end A360970

/-! ## A360970.P13563569206784852397

`A319089(A003557(n+1))`
-/

namespace A360970.P13563569206784852397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319089 (A003557 (n + 1)).toNat

end

end A360970.P13563569206784852397

namespace A360970

/-- `A319089(A003557(n+1))` -/
def P13563569206784852397.Spec : Prop :=
  ∀ n, P13563569206784852397.a n = A360970 (n + 1)

end A360970

/-! ## A360970.P13418965716180773415

`A000093(A360969(n+1))`
-/

namespace A360970.P13418965716180773415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A360969 (n + 1)).toNat

end

end A360970.P13418965716180773415

namespace A360970

/-- `A000093(A360969(n+1))` -/
def P13418965716180773415.Spec : Prop :=
  ∀ n, P13418965716180773415.a n = A360970 (n + 1)

end A360970

/-! ## A360970.P2588101457941043625

`A319089(A292589(n+1))`
-/

namespace A360970.P2588101457941043625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319089 (A292589 (n + 1)).toNat

end

end A360970.P2588101457941043625

namespace A360970

/-- `A319089(A292589(n+1))` -/
def P2588101457941043625.Spec : Prop :=
  ∀ n, P2588101457941043625.a n = A360970 (n + 1)

end A360970

/-! ## A360970.P11646672611606465791

`A319089(A396938(n+1))`
-/

namespace A360970.P11646672611606465791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319089 (A396938 (n + 1)).toNat

end

end A360970.P11646672611606465791

namespace A360970

/-- `A319089(A396938(n+1))` -/
def P11646672611606465791.Spec : Prop :=
  ∀ n, P11646672611606465791.a n = A360970 (n + 1)

end A360970

/-! ## A360970.P2261258093113069224

`A005361(n+1)*A360969(n+1)`
-/

namespace A360970.P2261258093113069224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A360969 (n + 1)

end

end A360970.P2261258093113069224

namespace A360970

/-- `A005361(n+1)*A360969(n+1)` -/
def P2261258093113069224.Spec : Prop :=
  ∀ n, P2261258093113069224.a n = A360970 (n + 1)

end A360970

/-! ## A360970.P15751712899055054447

`A361132(n+1)/A005361(n+1)`
-/

namespace A360970.P15751712899055054447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A361132 (n + 1) : ℚ) / (A005361 (n + 1) : ℚ)

end

end A360970.P15751712899055054447

namespace A360970

/-- `A361132(n+1)/A005361(n+1)` -/
def P15751712899055054447.Spec : Prop :=
  ∀ n, P15751712899055054447.a n = (A360970 (n + 1) : ℚ)

end A360970

/-!
# A360973: Expansion of g.f. A(x) satisfying A(x) = Sum_{n>=0} d^n/dx^n x^(3*n) * A(x)^n / n!.

The programs for A360973, there is no canonical definition to state claims against.
-/

/-! ## A360973.P10037644150216592063

`(2*n+1)*A360976(n+1)`
-/

namespace A360973.P10037644150216592063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * A360976 (n + 1)

end

end A360973.P10037644150216592063

/-! ## A360973.P10432463338702799293

`lcm(A001511(4^n), A360976(n+1))`
-/

namespace A360973.P10432463338702799293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001511 (4 ^ n)) (A360976 (n + 1))

end

end A360973.P10432463338702799293

/-! ## A360973.P6972019483754981995

`A360976(n+1)*A361398(A024036(n))`
-/

namespace A360973.P6972019483754981995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360976 (n + 1) * A361398 (A024036 n).toNat

end

end A360973.P6972019483754981995

/-!
# A360974: Expansion of g.f. A(x) satisfying A(x) = Sum_{n>=0} d^n/dx^n x^(2*n) * A(x)^(2*n) / n!.

The programs for A360974, there is no canonical definition to state claims against.
-/

/-! ## A360974.P5447487771826559075

`(n+1)*A360977(n+1)`
-/

namespace A360974.P5447487771826559075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A360977 (n + 1)

end

end A360974.P5447487771826559075

/-!
# A360975: Expansion of g.f. A(x) satisfying A(x) = Sum_{n>=0} d^n/dx^n x^(2*n) * A(x)^(3*n) / n!.

The programs for A360975, there is no canonical definition to state claims against.
-/

/-! ## A360975.P11954640474991628520

`(n+1)*A360978(n+1)`
-/

namespace A360975.P11954640474991628520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A360978 (n + 1)

end

end A360975.P11954640474991628520

/-! ## A360975.P10014426777031936427

`A360978(n+1)/(n+1)^A008683(A003629(n+1))`
-/

namespace A360975.P10014426777031936427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360978 (n + 1) : ℚ) / (n + 1 : ℚ) ^ (A008683 (A003629 (n + 1)).toNat : ℤ)

end

end A360975.P10014426777031936427

/-!
# A360976: G.f. satisfies: A(x) = Series_Reversion(x - x^3*A'(x)).

The programs for A360976, there is no canonical definition to state claims against.
-/

/-! ## A360976.P2746910118492035382

`A360973(n)/(2*n+1)`
-/

namespace A360976.P2746910118492035382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360973 n : ℚ) / (2 * n + 1 : ℚ)

end

end A360976.P2746910118492035382

/-! ## A360976.P4170204246293579050

`round(A360973(n)/A005408(n))`
-/

namespace A360976.P4170204246293579050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A360973 n : ℚ) / (A005408 n : ℚ))

end

end A360976.P4170204246293579050

/-! ## A360976.P18393738377433645627

`A010051(A060544(n+1))+A360973(n)/A005408(n)`
-/

namespace A360976.P18393738377433645627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010051 (A060544 (n + 1)).toNat : ℚ) + (A360973 n : ℚ) / (A005408 n : ℚ)

end

end A360976.P18393738377433645627

/-! ## A360976.P4213060160397100558

`A010051(A062768(n+1))+A360973(n)/A005408(n)`
-/

namespace A360976.P4213060160397100558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010051 (A062768 (n + 1)).toNat : ℚ) + (A360973 n : ℚ) / (A005408 n : ℚ)

end

end A360976.P4213060160397100558

/-! ## A360976.P12037487914245393374

`A010051(A335448(n+1))+A360973(n)/A005408(n)`
-/

namespace A360976.P12037487914245393374
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010051 (A335448 (n + 1)).toNat : ℚ) + (A360973 n : ℚ) / (A005408 n : ℚ)

end

end A360976.P12037487914245393374

/-!
# A360977: G.f. satisfies: A(x) = Series_Reversion(x - x^2*A'(x)^2).

The programs for A360977, there is no canonical definition to state claims against.
-/

/-! ## A360977.P8085513942833122508

`A360974(n)/(n+1)`
-/

namespace A360977.P8085513942833122508
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360974 n : ℚ) / (n + 1 : ℚ)

end

end A360977.P8085513942833122508

/-! ## A360977.P9351858023239820420

`A000027(A360974(n))/A185974(n)`
-/

namespace A360977.P9351858023239820420
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (A360974 n).toNat : ℚ) / (A185974 n : ℚ)

end

end A360977.P9351858023239820420

/-!
# A360978: G.f. satisfies: A(x) = Series_Reversion(x - x^2*A'(x)^3).

The programs for A360978, there is no canonical definition to state claims against.
-/

/-! ## A360978.P14252015357612342610

`A360975(n)/(n+1)`
-/

namespace A360978.P14252015357612342610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360975 n : ℚ) / (n + 1 : ℚ)

end

end A360978.P14252015357612342610

/-! ## A360978.P8994115946170313160

`ceil(A360975(n)/A008619(2*n))`
-/

namespace A360978.P8994115946170313160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A360975 n : ℚ) / (A008619 (2 * n) : ℚ)⌉

end

end A360978.P8994115946170313160

/-!
# A360979: Primes that share no digits with their digit sum.

The programs for A360979, there is no canonical definition to state claims against.
-/

/-! ## A360979.P16312788542428875974

`p?[A111801(n+1)+10]`
-/

namespace A360979.P16312788542428875974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111801 (n + 1) + 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A360979.P16312788542428875974

/-! ## A360979.P7721374145478297638

`A065091(lt[A038807(n), A271269(n+1)])`
-/

namespace A360979.P7721374145478297638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038807 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A360979.P7721374145478297638

/-! ## A360979.P2760917031123324297

`lt[A161370(A032741(n)), A119704(3*n)]`
-/

namespace A360979.P2760917031123324297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161370 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119704 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360979.P2760917031123324297

/-! ## A360979.P7061961500110342073

`lt[A325325(A258851(n)), A282748(3*n+1)]`
-/

namespace A360979.P7061961500110342073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325325 (A258851 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282748 (3 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A360979.P7061961500110342073

/-! ## A360979.P6654303770503748922

`A000040(lt[A117163(3*(n+1)), A117169(n+5)])`
-/

namespace A360979.P6654303770503748922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117163 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117169 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A360979.P6654303770503748922

/-!
# A360980: a(n) is the least multiple of n that is an odious number (A000069).

The programs for A360980, there is no canonical definition to state claims against.
-/

/-! ## A360980.P2744920640142168307

`A178757(n+1)*(n+1)`
-/

namespace A360980.P2744920640142168307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178757 (n + 1) * (n + 1 : ℤ)

end

end A360980.P2744920640142168307

/-! ## A360980.P6041579044862826730

`dr(A262502(A157403((n+1)/((n^3)%4+1))))*A159481(2*n+1)`
-/

namespace A360980.P6041579044862826730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.digitalRoot (A262502 (A157403 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n ^ 3 % 4 + 1 : ℕ) : ℚ))).toNat).toNat) : ℤ) * A159481 (2 * n + 1)

end

end A360980.P6041579044862826730

/-! ## A360980.P8331621616546480610

`(n+1)*A008960(A000265(n+1)^A135302(n))`
-/

namespace A360980.P8331621616546480610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A008960 (SequenceMachineLib.roundAway ((A000265 (n + 1) : ℚ) ^ (A135302 n : ℤ))).toNat

end

end A360980.P8331621616546480610

/-! ## A360980.P7413605405488585303

`A090915(A000265(n+1)^A135302(n))*A159481(2*n+1)`
-/

namespace A360980.P7413605405488585303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090915 (SequenceMachineLib.roundAway ((A000265 (n + 1) : ℚ) ^ (A135302 n : ℤ))).toNat * A159481 (2 * n + 1)

end

end A360980.P7413605405488585303

/-!
# A360981: a(n) is the least positive multiple of n that is an evil number (A001969).

The programs for A360981, there is no canonical definition to state claims against.
-/

/-! ## A360981.P7994679604362615512

`A180938(n+1)*(n+1)`
-/

namespace A360981.P7994679604362615512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180938 (n + 1) * (n + 1 : ℤ)

end

end A360981.P7994679604362615512

/-! ## A360981.P10289721904635691701

`(n+1)*A351836(n+1)^Δ[A115384(n)]`
-/

namespace A360981.P10289721904635691701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115384 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A351836 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A360981.P10289721904635691701

/-! ## A360981.P5489630145311780728

`(n+1)*gcd(Δ[A159481(n)], A351836(n+1))`
-/

namespace A360981.P5489630145311780728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159481 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * Int.gcd (f1 (n + 1) - f1 n) (A351836 (n + 1))

end

end A360981.P5489630145311780728

/-! ## A360981.P2632173595912105717

`(n+1)*A351836(n+1)^A164555(A178757(n+1))`
-/

namespace A360981.P2632173595912105717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (A351836 (n + 1) : ℚ) ^ (A164555 (A178757 (n + 1)).toNat : ℤ)

end

end A360981.P2632173595912105717

/-! ## A360981.P15002162802848871450

`(n+1)*floor(root(A351836(n+1), A351835(n+1)))`
-/

namespace A360981.P15002162802848871450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ⌊(A351836 (n + 1) : ℝ) ^ (1 / (A351835 (n + 1) : ℝ))⌋

end

end A360981.P15002162802848871450

/-!
# A360984: Triangular array read by rows. T(n,k) is the number of idempotent Boolean relation matrices on [n] with exactly k reflexive points, n >= 0, 0 <= k <= n.

The programs for A360984, there is no canonical definition to state claims against.
-/

/-! ## A360984.P3487581725273297786

`A300362(A000045(n)*A005706(2*(n+1)))`
-/

namespace A360984.P3487581725273297786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300362 (A000045 n * A005706 (2 * (n + 1))).toNat

end

end A360984.P3487581725273297786

/-!
# A360986: Primes whose sum of decimal digits has the same set of decimal digits as the prime.

The programs for A360986, there is no canonical definition to state claims against.
-/

/-! ## A360986.P11263563769633372728

`∩[A030291(n+1), A249515(n+1)]`
-/

namespace A360986.P11263563769633372728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360986.P11263563769633372728

/-! ## A360986.P420487579759790234

`∩[A182051(n+1), A249515(n+1)]`
-/

namespace A360986.P420487579759790234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182051 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A360986.P420487579759790234

/-! ## A360986.P8729767459205280643

`p?[A249515(n+1)]`
-/

namespace A360986.P8729767459205280643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249515 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A360986.P8729767459205280643

/-! ## A360986.P13940835490853000390

`p?[record[A249515(A262519(n))]]`
-/

namespace A360986.P13940835490853000390
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249515 (A262519 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A360986.P13940835490853000390

/-! ## A360986.P5978395841392229996

`p?[record[A249515(A328396(n))]]`
-/

namespace A360986.P5978395841392229996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249515 (A328396 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A360986.P5978395841392229996

/-!
# A360988: E.g.f. A(x) satisfies A(x) = exp(x * A(-x)^3).

The programs for A360988, there is no canonical definition to state claims against.
-/

/-! ## A360988.P9482209578953108897

`A368185(A374632(n))-A181888(n+1)`
-/

namespace A360988.P9482209578953108897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368185 (A374632 n).toNat - A181888 (n + 1)

end

end A360988.P9482209578953108897

/-!
# A360989: E.g.f. satisfies A(x) = exp(x / A(-x)^2).

The programs for A360989, there is no canonical definition to state claims against.
-/

/-! ## A360989.P13485075408412550206

`A317830(or(3, A126455(n)))`
-/

namespace A360989.P13485075408412550206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317830 (Int.lor 3 (A126455 n)).toNat

end

end A360989.P13485075408412550206

/-!
# A360991: Expansion of e.g.f. exp(exp(x) - 1 + x^2/2).

The programs for A360991, there is no canonical definition to state claims against.
-/

/-! ## A360991.P2245813827972758928

`A062135(n)+A002265(A056325(n+2))`
-/

namespace A360991.P2245813827972758928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062135 n + A002265 (A056325 (n + 2)).toNat

end

end A360991.P2245813827972758928

/-! ## A360991.P10376433223447390424

`A284726(A121689(n)*A359178(n+1))`
-/

namespace A360991.P10376433223447390424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284726 (A121689 n * A359178 (n + 1)).toNat

end

end A360991.P10376433223447390424

/-!
# A360993: Numbers k such that (2^k - 1)^3 + 2 is a semiprime.

The programs for A360993, there is no canonical definition to state claims against.
-/

/-! ## A360993.P13720044996723327402

`A059264(n+1)+A010060(A000166(n))`
-/

namespace A360993.P13720044996723327402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059264 (n + 1) + A010060 (A000166 n).toNat

end

end A360993.P13720044996723327402

/-! ## A360993.P4244082299367982435

`A059362(n+1)+A010060(A000166(n))`
-/

namespace A360993.P4244082299367982435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059362 (n + 1) + A010060 (A000166 n).toNat

end

end A360993.P4244082299367982435

/-! ## A360993.P5668775978826333712

`A059264(n+1)+A010060(A005638(n))`
-/

namespace A360993.P5668775978826333712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059264 (n + 1) + A010060 (A005638 n).toNat

end

end A360993.P5668775978826333712

/-! ## A360993.P11696086009373935775

`A059362(n+1)+A010060(A005638(n))`
-/

namespace A360993.P11696086009373935775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059362 (n + 1) + A010060 (A005638 n).toNat

end

end A360993.P11696086009373935775

/-! ## A360993.P7320233207750496972

`A119615(n+1)+A010060(A000166(n))`
-/

namespace A360993.P7320233207750496972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119615 (n + 1) + A010060 (A000166 n).toNat

end

end A360993.P7320233207750496972

/-!
# A360996: Multiplicative with a(p^e) = 5*e, p prime and e > 0.

The programs for A360996, the canonical program `A360996.P18226206419198246505` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360996 has offset 1).

The definition of A360996 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005361, A082476, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360996.P18226206419198246505

`A005361(n+1)*A082476(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A360996

/-- `A005361(n+1)*A082476(n+1)` -/
def P18226206419198246505.Spec : Prop :=
  ∀ n, P18226206419198246505.a n = A360996 (n + 1)

theorem P18226206419198246505.correct : P18226206419198246505.Spec := by
  intro n
  simp only [A360996, Nat.add_sub_cancel]

end A360996

/-! ## A360996.P2108612479175021543

`∏{e}[n+1, 5*#]`
-/

namespace A360996.P2108612479175021543
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 5 * Nat.factorization (f1 n) p

end

end A360996.P2108612479175021543

namespace A360996

/-- `∏{e}[n+1, 5*#]` -/
def P2108612479175021543.Spec : Prop :=
  ∀ n, (P2108612479175021543.a n : ℤ) = A360996 (n + 1)

end A360996

/-! ## A360996.P3172514669881940542

`∏{p}[n+1, 5*val(n+1, #)]`
-/

namespace A360996.P3172514669881940542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 5 * SequenceMachineLib.valuation (n + 1) p

end

end A360996.P3172514669881940542

namespace A360996

/-- `∏{p}[n+1, 5*val(n+1, #)]` -/
def P3172514669881940542.Spec : Prop :=
  ∀ n, (P3172514669881940542.a n : ℤ) = A360996 (n + 1)

end A360996

/-! ## A360996.P15178884417591741171

`∏{p}[n+1, val((n+1)^5, #)]`
-/

namespace A360996.P15178884417591741171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation ((n + 1) ^ 5) p

end

end A360996.P15178884417591741171

namespace A360996

/-- `∏{p}[n+1, val((n+1)^5, #)]` -/
def P15178884417591741171.Spec : Prop :=
  ∀ n, (P15178884417591741171.a n : ℤ) = A360996 (n + 1)

end A360996

/-! ## A360996.P4456437656841144044

`A000005((n+1)/∏{p}[n+1, #])*∏{p}[n+1, 5%(#+4)]`
-/

namespace A360996.P4456437656841144044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))).toNat * ((∏ p ∈ Nat.primeFactors (f2 n), 5 % (p + 4) : ℕ) : ℤ)

end

end A360996.P4456437656841144044

namespace A360996

/-- `A000005((n+1)/∏{p}[n+1, #])*∏{p}[n+1, 5%(#+4)]` -/
def P4456437656841144044.Spec : Prop :=
  ∀ n, P4456437656841144044.a n = A360996 (n + 1)

end A360996

/-! ## A360996.P16356352841273563602

`A028310(∏{e}[n+1, A008706(#)])`
-/

namespace A360996.P16356352841273563602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∏ p ∈ Nat.primeFactors (f1 n), A008706 (Nat.factorization (f1 n) p)).toNat

end

end A360996.P16356352841273563602

namespace A360996

/-- `A028310(∏{e}[n+1, A008706(#)])` -/
def P16356352841273563602.Spec : Prop :=
  ∀ n, P16356352841273563602.a n = A360996 (n + 1)

end A360996

/-! ## A360996.P14321596810802482424

`A247517(n+1)/A389698(n+1)`
-/

namespace A360996.P14321596810802482424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A247517 (n + 1) : ℚ) / (A389698 (n + 1) : ℚ)

end

end A360996.P14321596810802482424

namespace A360996

/-- `A247517(n+1)/A389698(n+1)` -/
def P14321596810802482424.Spec : Prop :=
  ∀ n, P14321596810802482424.a n = (A360996 (n + 1) : ℚ)

end A360996

/-! ## A360996.P8560151637759089308

`2^∑{e}[n+1, log2(#)]*A062367(A007947(n+1))`
-/

namespace A360996.P8560151637759089308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p : ℝ)) * (A062367 (A007947 (n + 1)).toNat : ℝ)

end

end A360996.P8560151637759089308

namespace A360996

/-- `2^∑{e}[n+1, log2(#)]*A062367(A007947(n+1))` -/
def P8560151637759089308.Spec : Prop :=
  ∀ n, P8560151637759089308.a n = (A360996 (n + 1) : ℝ)

end A360996

/-! ## A360996.P17030626898008182867

`5*A067029(n+1)*a(A028234(n+1)-1)` with `a(0)=1`
-/

namespace A360996.P17030626898008182867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  5 * (A067029 (n + 1) * a (A028234 (n + 1) - 1).toNat)

end

end A360996.P17030626898008182867

namespace A360996

/-- `5*A067029(n+1)*a(A028234(n+1)-1)` -/
def P17030626898008182867.Spec : Prop :=
  ∀ n, P17030626898008182867.a n = A360996 (n + 1)

end A360996

/-! ## A360996.P7384615198160629455

`A000005(A003557(n+1))*A082476(n+1)`
-/

namespace A360996.P7384615198160629455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A003557 (n + 1)).toNat * A082476 (n + 1)

end

end A360996.P7384615198160629455

namespace A360996

/-- `A000005(A003557(n+1))*A082476(n+1)` -/
def P7384615198160629455.Spec : Prop :=
  ∀ n, P7384615198160629455.a n = A360996 (n + 1)

end A360996

/-! ## A360996.P9008618319211984981

`A000005(A292589(n+1))*A082476(n+1)`
-/

namespace A360996.P9008618319211984981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A292589 (n + 1)).toNat * A082476 (n + 1)

end

end A360996.P9008618319211984981

namespace A360996

/-- `A000005(A292589(n+1))*A082476(n+1)` -/
def P9008618319211984981.Spec : Prop :=
  ∀ n, P9008618319211984981.a n = A360996 (n + 1)

end A360996

/-! ## A360996.P6919568804083230217

`A082476(n+1)*A190867(A064549(n+1))`
-/

namespace A360996.P6919568804083230217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082476 (n + 1) * A190867 (A064549 (n + 1)).toNat

end

end A360996.P6919568804083230217

namespace A360996

/-- `A082476(n+1)*A190867(A064549(n+1))` -/
def P6919568804083230217.Spec : Prop :=
  ∀ n, P6919568804083230217.a n = A360996 (n + 1)

end A360996

/-!
# A360997: Multiplicative with a(p^e) = e + 3.

The programs for A360997, the canonical program `A360997.P15884179674524214355` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360997 has offset 1).

The definition of A360997 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007425, A007426, A074816, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A360997.P15884179674524214355

`A074816(n+1)*A007426(n+1)/A007425(n+1)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A360997

/-- `A074816(n+1)*A007426(n+1)/A007425(n+1)` -/
def P15884179674524214355.Spec : Prop :=
  ∀ n, P15884179674524214355.a n = (A360997 (n + 1) : ℚ)

end A360997

/-! ## A360997.P1118167161600557864

`A000005(A361264(n+1))`
-/

namespace A360997.P1118167161600557864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A361264 (n + 1)).toNat

end

end A360997.P1118167161600557864

namespace A360997

/-- `A000005(A361264(n+1))` -/
def P1118167161600557864.Spec : Prop :=
  ∀ n, P1118167161600557864.a n = A360997 (n + 1)

end A360997

/-! ## A360997.P1645772873685283729

`∏{e}[n+1, #+3]`
-/

namespace A360997.P1645772873685283729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 3)

end

end A360997.P1645772873685283729

namespace A360997

/-- `∏{e}[n+1, #+3]` -/
def P1645772873685283729.Spec : Prop :=
  ∀ n, (P1645772873685283729.a n : ℤ) = A360997 (n + 1)

end A360997

/-! ## A360997.P12283707107477713391

`2^∑{e}[n+1, log2(#+3)]`
-/

namespace A360997.P12283707107477713391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p + 3 : ℝ))

end

end A360997.P12283707107477713391

namespace A360997

/-- `2^∑{e}[n+1, log2(#+3)]` -/
def P12283707107477713391.Spec : Prop :=
  ∀ n, P12283707107477713391.a n = (A360997 (n + 1) : ℝ)

end A360997

/-! ## A360997.P412176857198565349

`∏{p}[n+1, val(n+1, #)+3]`
-/

namespace A360997.P412176857198565349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), (SequenceMachineLib.valuation (n + 1) p + 3)

end

end A360997.P412176857198565349

namespace A360997

/-- `∏{p}[n+1, val(n+1, #)+3]` -/
def P412176857198565349.Spec : Prop :=
  ∀ n, (P412176857198565349.a n : ℤ) = A360997 (n + 1)

end A360997

/-! ## A360997.P9147293184409572584

`A064553(A003961(A003961(A181819(n+1))))`
-/

namespace A360997.P9147293184409572584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064553 (A003961 (A003961 (A181819 (n + 1)).toNat).toNat).toNat

end

end A360997.P9147293184409572584

namespace A360997

/-- `A064553(A003961(A003961(A181819(n+1))))` -/
def P9147293184409572584.Spec : Prop :=
  ∀ n, P9147293184409572584.a n = A360997 (n + 1)

end A360997

/-! ## A360997.P13259717838552530071

`A343443((n+1)*∏{p}[n+1, #])`
-/

namespace A360997.P13259717838552530071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343443 ((n + 1) * (∏ p ∈ Nat.primeFactors (f1 n), p))

end

end A360997.P13259717838552530071

namespace A360997

/-- `A343443((n+1)*∏{p}[n+1, #])` -/
def P13259717838552530071.Spec : Prop :=
  ∀ n, P13259717838552530071.a n = A360997 (n + 1)

end A360997

/-! ## A360997.P6625831722409884326

`A343443(A064549(n+1))`
-/

namespace A360997.P6625831722409884326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343443 (A064549 (n + 1)).toNat

end

end A360997.P6625831722409884326

namespace A360997

/-- `A343443(A064549(n+1))` -/
def P6625831722409884326.Spec : Prop :=
  ∀ n, P6625831722409884326.a n = A360997 (n + 1)

end A360997

/-! ## A360997.P1009675108656980725

`A343443((n+1)*A007947(n+1))`
-/

namespace A360997.P1009675108656980725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343443 ((n + 1 : ℤ) * A007947 (n + 1)).toNat

end

end A360997.P1009675108656980725

namespace A360997

/-- `A343443((n+1)*A007947(n+1))` -/
def P1009675108656980725.Spec : Prop :=
  ∀ n, P1009675108656980725.a n = A360997 (n + 1)

end A360997

/-! ## A360997.P12886629866121077528

`A343443(A355038(n+1)/(n+1))`
-/

namespace A360997.P12886629866121077528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343443 (SequenceMachineLib.roundAway ((A355038 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A360997.P12886629866121077528

namespace A360997

/-- `A343443(A355038(n+1)/(n+1))` -/
def P12886629866121077528.Spec : Prop :=
  ∀ n, P12886629866121077528.a n = A360997 (n + 1)

end A360997

/-! ## A360997.P12395101310990920154

`A343443(A001694(A348018(n+1)))`
-/

namespace A360997.P12395101310990920154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343443 (A001694 (A348018 (n + 1)).toNat).toNat

end

end A360997.P12395101310990920154

namespace A360997

/-- `A343443(A001694(A348018(n+1)))` -/
def P12395101310990920154.Spec : Prop :=
  ∀ n, P12395101310990920154.a n = A360997 (n + 1)

end A360997

/-! ## A360997.P10770150151604741749

`A363194(A348018(A355261((n+1)²)))`
-/

namespace A360997.P10770150151604741749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363194 (A348018 (A355261 ((n + 1) ^ 2)).toNat).toNat

end

end A360997.P10770150151604741749

namespace A360997

/-- `A363194(A348018(A355261((n+1)²)))` -/
def P10770150151604741749.Spec : Prop :=
  ∀ n, P10770150151604741749.a n = A360997 (n + 1)

end A360997

/-! ## A360997.P2440079756159638400

`A363194(A348018((n+1)*A007947(n+1)))`
-/

namespace A360997.P2440079756159638400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363194 (A348018 ((n + 1 : ℤ) * A007947 (n + 1)).toNat).toNat

end

end A360997.P2440079756159638400

namespace A360997

/-- `A363194(A348018((n+1)*A007947(n+1)))` -/
def P2440079756159638400.Spec : Prop :=
  ∀ n, P2440079756159638400.a n = A360997 (n + 1)

end A360997

/-! ## A360997.P4307906876016815039

`A363194(A348018(A355038(n+1)/(n+1)))`
-/

namespace A360997.P4307906876016815039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363194 (A348018 (SequenceMachineLib.roundAway ((A355038 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat).toNat

end

end A360997.P4307906876016815039

namespace A360997

/-- `A363194(A348018(A355038(n+1)/(n+1)))` -/
def P4307906876016815039.Spec : Prop :=
  ∀ n, P4307906876016815039.a n = A360997 (n + 1)

end A360997

/-! ## A360997.P12923556658733349722

`A363194(A348018(A064549(A348018(A306458(n+1)))))`
-/

namespace A360997.P12923556658733349722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363194 (A348018 (A064549 (A348018 (A306458 (n + 1)).toNat).toNat).toNat).toNat

end

end A360997.P12923556658733349722

namespace A360997

/-- `A363194(A348018(A064549(A348018(A306458(n+1)))))` -/
def P12923556658733349722.Spec : Prop :=
  ∀ n, P12923556658733349722.a n = A360997 (n + 1)

end A360997

/-!
# A360998: Triangle read by rows: T(n,k) is the number of tilings of an n X k rectangle by integer-sided rectangular pieces that cannot be rearranged to produce a different tiling of the rectangle (including rotations and reflections of the original tiling), 1 <= k <= n.

The programs for A360998, there is no canonical definition to state claims against.
-/

/-! ## A360998.P14284336275651145400

`A352671(A352707(n+1)+A305367(n+1))`
-/

namespace A360998.P14284336275651145400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352671 (A352707 (n + 1) + A305367 (n + 1)).toNat

end

end A360998.P14284336275651145400

/-! ## A360998.P6472663030868287918

`A160093(A190885(n+1)*A207703(n+1))`
-/

namespace A360998.P6472663030868287918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160093 (A190885 (n + 1) * A207703 (n + 1)).toNat

end

end A360998.P6472663030868287918

/-! ## A360998.P17520976347625888634

`A001221((A198982(n+1)+1)*A280382(n+1))`
-/

namespace A360998.P17520976347625888634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((A198982 (n + 1) + 1) * A280382 (n + 1)).toNat

end

end A360998.P17520976347625888634

/-! ## A360998.P8620486401655593854

`A001221(A038330(n)+A038300(n))`
-/

namespace A360998.P8620486401655593854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A038330 n + A038300 n).toNat

end

end A360998.P8620486401655593854

/-! ## A360998.P10153180012942771341

`A196062(A239196(n+2))`
-/

namespace A360998.P10153180012942771341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196062 (A239196 (n + 2)).toNat

end

end A360998.P10153180012942771341

/-!
# A360999: Number of tilings of an n X 2 rectangle by integer-sided rectangular pieces that cannot be rearranged to produce a different tiling of the rectangle (including rotations and reflections of the original tiling).

The programs for A360999, the canonical program `A360999.P16342541274025162897` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A360999 has offset 1).

The definition of A360999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A360999.P647806966241685403

`∑{d}[n+1, (2%#)!]+floor(acot(n))`
-/

namespace A360999.P647806966241685403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Nat.factorial (2 % d) : ℕ) : ℤ) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A360999.P647806966241685403

namespace A360999

/-- `∑{d}[n+1, (2%#)!]+floor(acot(n))` -/
def P647806966241685403.Spec : Prop :=
  ∀ n, P647806966241685403.a n = A360999 (n + 1)

end A360999

/-! ## A360999.P16576732763880528329

`floor(A086369(n+1)+acot(n))`
-/

namespace A360999.P16576732763880528329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A086369 (n + 1) : ℝ) + SequenceMachineLib.acot (n : ℝ)⌋

end

end A360999.P16576732763880528329

namespace A360999

/-- `floor(A086369(n+1)+acot(n))` -/
def P16576732763880528329.Spec : Prop :=
  ∀ n, P16576732763880528329.a n = A360999 (n + 1)

end A360999

/-! ## A360999.P16342541274025162897

`A000007(n)+∑{d}[n+1, (2%#)!]`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A360999

/-- `A000007(n)+∑{d}[n+1, (2%#)!]` -/
def P16342541274025162897.Spec : Prop :=
  ∀ n, P16342541274025162897.a n = A360999 (n + 1)

theorem P16342541274025162897.correct : P16342541274025162897.Spec := by
  intro n
  simp only [A360999, Nat.add_sub_cancel]

end A360999

/-! ## A360999.P17817636326536743096

`A114003(n+1)-Δ[ceil(abs((1-n)/2))]`
-/

namespace A360999.P17817636326536743096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1) - (f1 (n + 1) - f1 n)

end

end A360999.P17817636326536743096

namespace A360999

/-- `A114003(n+1)-Δ[ceil(abs((1-n)/2))]` -/
def P17817636326536743096.Spec : Prop :=
  ∀ n, P17817636326536743096.a n = A360999 (n + 1)

end A360999

/-! ## A360999.P13443189642972039664

`A004275(∏{e}[n+1, #+1])+log2(gcd(2, n))`
-/

namespace A360999.P13443189642972039664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A004275 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1)) : ℝ) + Real.logb 2 (Nat.gcd 2 n : ℝ)

end

end A360999.P13443189642972039664

namespace A360999

/-- `A004275(∏{e}[n+1, #+1])+log2(gcd(2, n))` -/
def P13443189642972039664.Spec : Prop :=
  ∀ n, P13443189642972039664.a n = (A360999 (n + 1) : ℝ)

end A360999

/-! ## A360999.P2038556389069702284

`A086369(A028310(n)+1)`
-/

namespace A360999.P2038556389069702284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086369 (A028310 n + 1).toNat

end

end A360999.P2038556389069702284

namespace A360999

/-- `A086369(A028310(n)+1)` -/
def P2038556389069702284.Spec : Prop :=
  ∀ n, P2038556389069702284.a n = A360999 (n + 1)

end A360999

/-! ## A360999.P8242847656973634167

`A254667(A086369(n+1))`
-/

namespace A360999.P8242847656973634167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 (A086369 (n + 1)).toNat

end

end A360999.P8242847656973634167

namespace A360999

/-- `A254667(A086369(n+1))` -/
def P8242847656973634167.Spec : Prop :=
  ∀ n, P8242847656973634167.a n = A360999 (n + 1)

end A360999

/-! ## A360999.P14085062385240055045

`A086369(A054977(n)+n)`
-/

namespace A360999.P14085062385240055045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086369 (A054977 n + (n : ℤ)).toNat

end

end A360999.P14085062385240055045

namespace A360999

/-- `A086369(A054977(n)+n)` -/
def P14085062385240055045.Spec : Prop :=
  ∀ n, P14085062385240055045.a n = A360999 (n + 1)

end A360999

/-! ## A360999.P18186313639833345665

`A233583(A086369(n+1)+1)`
-/

namespace A360999.P18186313639833345665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A086369 (n + 1) + 1).toNat

end

end A360999.P18186313639833345665

namespace A360999

/-- `A233583(A086369(n+1)+1)` -/
def P18186313639833345665.Spec : Prop :=
  ∀ n, P18186313639833345665.a n = A360999 (n + 1)

end A360999

/-! ## A360999.P14488384642886834251

`A086369(n+1)+A000007(n)`
-/

namespace A360999.P14488384642886834251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086369 (n + 1) + A000007 n

end

end A360999.P14488384642886834251

namespace A360999

/-- `A086369(n+1)+A000007(n)` -/
def P14488384642886834251.Spec : Prop :=
  ∀ n, P14488384642886834251.a n = A360999 (n + 1)

end A360999

/-! ## A360999.P17884422673150297174

`A325765(n)+A076984(n+1)`
-/

namespace A360999.P17884422673150297174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325765 n + A076984 (n + 1)

end

end A360999.P17884422673150297174

namespace A360999

/-- `A325765(n)+A076984(n+1)` -/
def P17884422673150297174.Spec : Prop :=
  ∀ n, P17884422673150297174.a n = A360999 (n + 1)

end A360999

/-! ## A360999.P7439962905096772954

`A086369(n+2-A057427(n))`
-/

namespace A360999.P7439962905096772954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086369 ((n + 2 : ℤ) - A057427 n).toNat

end

end A360999.P7439962905096772954

namespace A360999

/-- `A086369(n+2-A057427(n))` -/
def P7439962905096772954.Spec : Prop :=
  ∀ n, P7439962905096772954.a n = A360999 (n + 1)

end A360999

/-! ## A360999.P1245681214187439165

`A070824(n+1)+A062558(n+1)`
-/

namespace A360999.P1245681214187439165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070824 (n + 1) + A062558 (n + 1)

end

end A360999.P1245681214187439165

namespace A360999

/-- `A070824(n+1)+A062558(n+1)` -/
def P1245681214187439165.Spec : Prop :=
  ∀ n, P1245681214187439165.a n = A360999 (n + 1)

end A360999

/-! ## A360999.P889276655203694541

`A076984(A046523(n+1))+A076984(n+1)`
-/

namespace A360999.P889276655203694541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (A046523 (n + 1)).toNat + A076984 (n + 1)

end

end A360999.P889276655203694541

namespace A360999

/-- `A076984(A046523(n+1))+A076984(n+1)` -/
def P889276655203694541.Spec : Prop :=
  ∀ n, P889276655203694541.a n = A360999 (n + 1)

end A360999

/-! ## A360999.P9708231303097335197

`A076984(A071364(n+1))+A076984(n+1)`
-/

namespace A360999.P9708231303097335197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (A071364 (n + 1)).toNat + A076984 (n + 1)

end

end A360999.P9708231303097335197

namespace A360999

/-- `A076984(A071364(n+1))+A076984(n+1)` -/
def P9708231303097335197.Spec : Prop :=
  ∀ n, P9708231303097335197.a n = A360999 (n + 1)

end A360999

/-! ## A360999.P13979279886559229502

`A076984(n+1)+A076984(n+1)-A266070(n+1)`
-/

namespace A360999.P13979279886559229502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076984 (n + 1) + (A076984 (n + 1) - A266070 (n + 1))

end

end A360999.P13979279886559229502

namespace A360999

/-- `A076984(n+1)+A076984(n+1)-A266070(n+1)` -/
def P13979279886559229502.Spec : Prop :=
  ∀ n, P13979279886559229502.a n = A360999 (n + 1)

end A360999

/-! ## A360999.P4688726617671320433

`A086369(A233583(n+2))`
-/

namespace A360999.P4688726617671320433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086369 (A233583 (n + 2)).toNat

end

end A360999.P4688726617671320433

namespace A360999

/-- `A086369(A233583(n+2))` -/
def P4688726617671320433.Spec : Prop :=
  ∀ n, P4688726617671320433.a n = A360999 (n + 1)

end A360999

/-! ## A360999.P8800920325829205520

`A361000(A003961(n+1))`
-/

namespace A360999.P8800920325829205520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361000 (A003961 (n + 1)).toNat

end

end A360999.P8800920325829205520

namespace A360999

/-- `A361000(A003961(n+1))` -/
def P8800920325829205520.Spec : Prop :=
  ∀ n, P8800920325829205520.a n = A360999 (n + 1)

end A360999

/-! ## A360999.P7038393310543648185

`A361000(A064988(n+1))`
-/

namespace A360999.P7038393310543648185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361000 (A064988 (n + 1)).toNat

end

end A360999.P7038393310543648185

namespace A360999

/-- `A361000(A064988(n+1))` -/
def P7038393310543648185.Spec : Prop :=
  ∀ n, P7038393310543648185.a n = A360999 (n + 1)

end A360999

