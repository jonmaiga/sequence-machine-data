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
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C037
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A331301: Lexicographically earliest infinite sequence such that a(i) = a(j) => f(i) = f(j), where f(n) = min(n, A225546(n)) for all other n, except for odd primes p, f(p) = 0.

The programs for A331301, there is no canonical definition to state claims against.
-/

/-! ## A331301.P1996229548893789390

`A324192(A065299(n+1))+A300827(n+1)`
-/

namespace A331301.P1996229548893789390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324192 (A065299 (n + 1)).toNat + A300827 (n + 1)

end

end A331301.P1996229548893789390

/-! ## A331301.P7522977413012903621

`A300827(n+1)+A011655(A006094(n+1))`
-/

namespace A331301.P7522977413012903621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300827 (n + 1) + A011655 (A006094 (n + 1)).toNat

end

end A331301.P7522977413012903621

/-! ## A331301.P13617996330150417227

`A300827(n+1)+A057427(A111124(n))`
-/

namespace A331301.P13617996330150417227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300827 (n + 1) + A057427 (A111124 n).toNat

end

end A331301.P13617996330150417227

/-! ## A331301.P16265274322696043275

`A300827(n+1)+A057427(A001083(n+3)-(A111123(n)+1))`
-/

namespace A331301.P16265274322696043275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300827 (n + 1) + A057427 (A001083 (n + 3) - (A111123 n + 1)).toNat

end

end A331301.P16265274322696043275

/-!
# A331302: Number of 4k+3 composites encountered when traversing from n to the root of A005940-tree.

The programs for A331302, there is no canonical definition to state claims against.
-/

/-! ## A331302.P13030141177637681735

`A219558(A126865(n+1))+A101637(A154105(n))`
-/

namespace A331302.P13030141177637681735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219558 (A126865 (n + 1)).toNat + A101637 (A154105 n).toNat

end

end A331302.P13030141177637681735

/-! ## A331302.P11225240387253868238

`A219558(A126865(n+1))%A005408(A046772(n))`
-/

namespace A331302.P11225240387253868238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A219558 (A126865 (n + 1)).toNat) (A005408 (A046772 n).toNat)

end

end A331302.P11225240387253868238

/-! ## A331302.P16931510726906410378

`A353639(A096300(n+2))+A219558(A126865(n+1))`
-/

namespace A331302.P16931510726906410378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353639 (A096300 (n + 2)).toNat + A219558 (A126865 (n + 1)).toNat

end

end A331302.P16931510726906410378

/-! ## A331302.P10597335341529873590

`and(A017653(A238217(n+2)), A219558(A126865(n+1)))`
-/

namespace A331302.P10597335341529873590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A017653 (A238217 (n + 2)).toNat) (A219558 (A126865 (n + 1)).toNat)

end

end A331302.P10597335341529873590

/-! ## A331302.P14393279416973986973

`A286052(A001844(n))+A219558(A126865(n+1))`
-/

namespace A331302.P14393279416973986973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286052 (A001844 n).toNat + A219558 (A126865 (n + 1)).toNat

end

end A331302.P14393279416973986973

/-! ## A331302.P8100338450348710457

`A019426(A005843(n)²)*A219558(A126865(n+1))`
-/

namespace A331302.P8100338450348710457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019426 (A005843 n ^ 2).toNat * A219558 (A126865 (n + 1)).toNat

end

end A331302.P8100338450348710457

/-! ## A331302.P2348589373090474906

`A219558(A126865(n+1))^A339971(n)²`
-/

namespace A331302.P2348589373090474906
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A219558 (A126865 (n + 1)).toNat : ℚ) ^ (A339971 n ^ 2 : ℤ)

end

end A331302.P2348589373090474906

/-! ## A331302.P4663183302316248337

`A219558(A126865(n+1))^(A001221(A178751(2*n+1))/2)`
-/

namespace A331302.P4663183302316248337
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A219558 (A126865 (n + 1)).toNat : ℝ) ^ ((A001221 (A178751 (2 * n + 1)).toNat : ℚ) / 2 : ℝ)

end

end A331302.P4663183302316248337

/-!
# A331304: For n <= 4, a(n) = n, for n > 4, if n is prime, a(n) = 3 + 2*A000035(A000720(n)), otherwise a(n) = 3 + n - A000720(n).

The programs for A331304, there is no canonical definition to state claims against.
-/

/-! ## A331304.P15020760046238457004

`A319704(A332808(n+1))%A064431(n+1)`
-/

namespace A331304.P15020760046238457004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319704 (A332808 (n + 1)).toNat) (A064431 (n + 1))

end

end A331304.P15020760046238457004

/-! ## A331304.P1488841023072412134

`A305900(n+1)-A354449(A379319(3*n+1))`
-/

namespace A331304.P1488841023072412134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305900 (n + 1) - A354449 (A379319 (3 * n + 1)).toNat

end

end A331304.P1488841023072412134

/-!
# A331308: a(n) = min(d(n), d(A225546(n))), where d gives the number of divisors of n, A000005.

The programs for A331308, there is no canonical definition to state claims against.
-/

/-! ## A331308.P9907392699519473591

`A000005(A331288(n+1))%A285448(n+2)`
-/

namespace A331308.P9907392699519473591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A331288 (n + 1)).toNat) (A285448 (n + 2))

end

end A331308.P9907392699519473591

/-! ## A331308.P7239667369069703438

`A000005(A331288(n+1))%A160217(A133310(n))`
-/

namespace A331308.P7239667369069703438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000005 (A331288 (n + 1)).toNat) (A160217 (A133310 n).toNat)

end

end A331308.P7239667369069703438

/-! ## A331308.P1469120909703124264

`A000005(A331288(n+1))^A085384(A085366(n+1))`
-/

namespace A331308.P1469120909703124264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A331288 (n + 1)).toNat : ℚ) ^ (A085384 (A085366 (n + 1)).toNat : ℤ)

end

end A331308.P1469120909703124264

/-! ## A331308.P11402180944843275420

`A035144(A186711(n+1))!*A000005(A331288(n+1))`
-/

namespace A331308.P11402180944843275420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A035144 (A186711 (n + 1)).toNat).toNat : ℤ) * A000005 (A331288 (n + 1)).toNat

end

end A331308.P11402180944843275420

/-! ## A331308.P17983891830123555823

`A035153(A181815(n+1))!*A000005(A331288(n+1))`
-/

namespace A331308.P17983891830123555823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A035153 (A181815 (n + 1)).toNat).toNat : ℤ) * A000005 (A331288 (n + 1)).toNat

end

end A331308.P17983891830123555823

/-! ## A331308.P15432643706885407928

`A000005(A184805(n+1)*A331288(n+1))/2`
-/

namespace A331308.P15432643706885407928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (A184805 (n + 1) * A331288 (n + 1)).toNat : ℚ) / 2

end

end A331308.P15432643706885407928

/-! ## A331308.P8640597487309338869

`A000005(A331288(n+1)%A338361(A160664(n)))`
-/

namespace A331308.P8640597487309338869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.tmod (A331288 (n + 1)) (A338361 (A160664 n).toNat)).toNat

end

end A331308.P8640597487309338869

/-! ## A331308.P2266125268502844715

`A053186((2*n)²)+A000005(A331288(n+1))`
-/

namespace A331308.P2266125268502844715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 ((2 * n) ^ 2) + A000005 (A331288 (n + 1)).toNat

end

end A331308.P2266125268502844715

/-!
# A331309: a(n) = A000005(A225546(n)), where A000005 gives the number of divisors of n.

The programs for A331309, there is no canonical definition to state claims against.
-/

/-! ## A331309.P7832792071556686889

`A000005(A225546(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331309.P7832792071556686889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A225546 (n + 1)).toNat

end

end A331309.P7832792071556686889

/-! ## A331309.P1026588060759725266

`A336315(A336321(n+1))`
-/

namespace A331309.P1026588060759725266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336315 (A336321 (n + 1)).toNat

end

end A331309.P1026588060759725266

/-! ## A331309.P17676361482423697666

`A335914(n+1)/A225546(n+1)`
-/

namespace A331309.P17676361482423697666
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335914 (n + 1) : ℚ) / (A225546 (n + 1) : ℚ)

end

end A331309.P17676361482423697666

/-! ## A331309.P14793746289685899089

`A335914(n+1)/A122111(A336321(n+1))`
-/

namespace A331309.P14793746289685899089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A335914 (n + 1) : ℚ) / (A122111 (A336321 (n + 1)).toNat : ℚ)

end

end A331309.P14793746289685899089

/-! ## A331309.P15203735549755193624

`A322813(A336321(n+1)²)`
-/

namespace A331309.P15203735549755193624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322813 (A336321 (n + 1) ^ 2).toNat

end

end A331309.P15203735549755193624

/-!
# A331310: a(n) = gcd(n, A293442(n)).

The programs for A331310, the canonical program `A331310.P15036600505263651020` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331310 has offset 1).

The definition of A331310 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A293442, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A331310.P15036600505263651020

`gcd(n+1, A293442(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A331310

/-- `gcd(n+1, A293442(n+1))` -/
def P15036600505263651020.Spec : Prop :=
  ∀ n, (P15036600505263651020.a n : ℤ) = A331310 (n + 1)

theorem P15036600505263651020.correct : P15036600505263651020.Spec := by
  intro n
  simp only [A331310, Nat.add_sub_cancel]

end A331310

/-! ## A331310.P13460930408320142061

`A331287(n+1)/A331311(n+1)`
-/

namespace A331310.P13460930408320142061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331287 (n + 1) : ℚ) / (A331311 (n + 1) : ℚ)

end

end A331310.P13460930408320142061

namespace A331310

/-- `A331287(n+1)/A331311(n+1)` -/
def P13460930408320142061.Spec : Prop :=
  ∀ n, P13460930408320142061.a n = (A331310 (n + 1) : ℚ)

end A331310

/-! ## A331310.P15207931975691410338

`gcd(∏{e}[n+1, A019565(#)], A328399(2*n))`
-/

namespace A331310.P15207931975691410338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ p ∈ Nat.primeFactors (f1 n), A019565 (Nat.factorization (f1 n) p)) (A328399 (2 * n))

end

end A331310.P15207931975691410338

namespace A331310

/-- `gcd(∏{e}[n+1, A019565(#)], A328399(2*n))` -/
def P15207931975691410338.Spec : Prop :=
  ∀ n, (P15207931975691410338.a n : ℤ) = A331310 (n + 1)

end A331310

/-! ## A331310.P175178304876892742

`gcd(∏{e}[n+1, A276086(A276156(#))], A000027(n+1))`
-/

namespace A331310.P175178304876892742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (∏ p ∈ Nat.primeFactors (f1 n), A276086 (A276156 (Nat.factorization (f1 n) p)).toNat) (A000027 (n + 1))

end

end A331310.P175178304876892742

namespace A331310

/-- `gcd(∏{e}[n+1, A276086(A276156(#))], A000027(n+1))` -/
def P175178304876892742.Spec : Prop :=
  ∀ n, (P175178304876892742.a n : ℤ) = A331310 (n + 1)

end A331310

/-! ## A331310.P13107671247320385660

`gcd(A131738(n), A293443(A268385(n+1)))`
-/

namespace A331310.P13107671247320385660
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131738 n) (A293443 (A268385 (n + 1)).toNat)

end

end A331310.P13107671247320385660

namespace A331310

/-- `gcd(A131738(n), A293443(A268385(n+1)))` -/
def P13107671247320385660.Spec : Prop :=
  ∀ n, (P13107671247320385660.a n : ℤ) = A331310 (n + 1)

end A331310

/-! ## A331310.P11121168442035887042

`A050873(A293442(n+1)+∑[n])`
-/

namespace A331310.P11121168442035887042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (A293442 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A331310.P11121168442035887042

namespace A331310

/-- `A050873(A293442(n+1)+∑[n])` -/
def P11121168442035887042.Spec : Prop :=
  ∀ n, P11121168442035887042.a n = A331310 (n + 1)

end A331310

/-! ## A331310.P7274368875095847237

`gcd(A000027(n+1), A180493(A318470(n+1)))`
-/

namespace A331310.P7274368875095847237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000027 (n + 1)) (A180493 (A318470 (n + 1)).toNat)

end

end A331310.P7274368875095847237

namespace A331310

/-- `gcd(A000027(n+1), A180493(A318470(n+1)))` -/
def P7274368875095847237.Spec : Prop :=
  ∀ n, (P7274368875095847237.a n : ℤ) = A331310 (n + 1)

end A331310

/-! ## A331310.P9077650674427441731

`gcd(A002260(A001844(n)), A318470(n+1))`
-/

namespace A331310.P9077650674427441731
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002260 (A001844 n).toNat) (A318470 (n + 1))

end

end A331310.P9077650674427441731

namespace A331310

/-- `gcd(A002260(A001844(n)), A318470(n+1))` -/
def P9077650674427441731.Spec : Prop :=
  ∀ n, (P9077650674427441731.a n : ℤ) = A331310 (n + 1)

end A331310

/-!
# A331311: a(n) = A331287(n) / A331310(n).

The programs for A331311, there is no canonical definition to state claims against.
-/

/-! ## A331311.P16754999488233620766

`A331287(n+1)/A331310(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331311.P16754999488233620766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331287 (n + 1) : ℚ) / (A331310 (n + 1) : ℚ)

end

end A331311.P16754999488233620766

/-! ## A331311.P16608511324647184733

`gcd(A000188(n+1), A005900(∑{d}[n+1, #]²))`
-/

namespace A331311.P16608511324647184733
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000188 (n + 1)) (A005900 ((∑ d ∈ Nat.divisors (f1 n), d) ^ 2))

end

end A331311.P16608511324647184733

/-! ## A331311.P469778445574955218

`gcd(A000188(n+1), A008611(A258974(n+1)))`
-/

namespace A331311.P469778445574955218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000188 (n + 1)) (A008611 (A258974 (n + 1)).toNat)

end

end A331311.P469778445574955218

/-! ## A331311.P10568574763078051259

`gcd(A026008(A000188(n+1)), A319191(n+1))`
-/

namespace A331311.P10568574763078051259
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A026008 (A000188 (n + 1)).toNat) (A319191 (n + 1))

end

end A331311.P10568574763078051259

/-! ## A331311.P15058367970147249638

`gcd(A165992(n), A249739(n+1))`
-/

namespace A331311.P15058367970147249638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A165992 n) (A249739 (n + 1))

end

end A331311.P15058367970147249638

/-!
# A331312: a(n) = A225546(n) / A293442(n).

The programs for A331312, there is no canonical definition to state claims against.
-/

/-! ## A331312.P2405245937775642161

`A225546(n+1)/A293442(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331312.P2405245937775642161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225546 (n + 1) : ℚ) / (A293442 (n + 1) : ℚ)

end

end A331312.P2405245937775642161

/-! ## A331312.P16910385392325272218

`A225546(n+1)/A318470(n+1)`
-/

namespace A331312.P16910385392325272218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225546 (n + 1) : ℚ) / (A318470 (n + 1) : ℚ)

end

end A331312.P16910385392325272218

/-! ## A331312.P4759473497838995221

`A122111(A336321(n+1))/A293442(n+1)`
-/

namespace A331312.P4759473497838995221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122111 (A336321 (n + 1)).toNat : ℚ) / (A293442 (n + 1) : ℚ)

end

end A331312.P4759473497838995221

/-! ## A331312.P11696630202617734587

`A122111(A336321(n+1))/A318470(n+1)`
-/

namespace A331312.P11696630202617734587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122111 (A336321 (n + 1)).toNat : ℚ) / (A318470 (n + 1) : ℚ)

end

end A331312.P11696630202617734587

/-! ## A331312.P13810271152032956593

`A225546(n+1)/A293443(A268385(n+1))`
-/

namespace A331312.P13810271152032956593
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225546 (n + 1) : ℚ) / (A293443 (A268385 (n + 1)).toNat : ℚ)

end

end A331312.P13810271152032956593

/-!
# A331313: Expansion of Pi in balanced ternary.

The programs for A331313, there is no canonical definition to state claims against.
-/

/-! ## A331313.P15485805121879027564

`A002819(A205696(2*n+1))^A000292(n)`
-/

namespace A331313.P15485805121879027564
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002819 (A205696 (2 * n + 1)).toNat : ℚ) ^ (A000292 n : ℤ)

end

end A331313.P15485805121879027564

/-! ## A331313.P15878845413527641932

`A175629(A214899(n)-n)`
-/

namespace A331313.P15878845413527641932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175629 (A214899 n - (n : ℤ)).toNat

end

end A331313.P15878845413527641932

/-! ## A331313.P12388114953035292139

`A008683(xor(3, A124881(3*(n+1))))`
-/

namespace A331313.P12388114953035292139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (Int.xor 3 (A124881 (3 * (n + 1)))).toNat

end

end A331313.P12388114953035292139

/-! ## A331313.P14476538789226745424

`A014709(A018168(n))-A001221(n+1)`
-/

namespace A331313.P14476538789226745424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 (A018168 n).toNat - A001221 (n + 1)

end

end A331313.P14476538789226745424

/-! ## A331313.P2249095640403968633

`A347871(A005418(n+2))-A348264(n+1)`
-/

namespace A331313.P2249095640403968633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347871 (A005418 (n + 2)).toNat - A348264 (n + 1)

end

end A331313.P2249095640403968633

/-!
# A331314: Dirichlet convolution of the identity function with the reduced totient function.

The programs for A331314, there is no canonical definition to state claims against.
-/

/-! ## A331314.P1878277349414745387

`∑{d}[n+1, A369601(#)]`
-/

namespace A331314.P1878277349414745387
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A369601 d

end

end A331314.P1878277349414745387

/-! ## A331314.P12250299324570848103

`∑{d}[n+1, (n+1)/#*A002322(#)]`
-/

namespace A331314.P12250299324570848103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℚ) / (d : ℚ) * (A002322 d : ℚ)

end

end A331314.P12250299324570848103

/-! ## A331314.P1165589540119181792

`∑{d}[n+1, A000010(#)*A141258((n+1)/#)]`
-/

namespace A331314.P1165589540119181792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A141258 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A331314.P1165589540119181792

/-! ## A331314.P14201170550491459482

`∑{d}[n+1, A000203(#)*A369700((n+1)/#)]`
-/

namespace A331314.P14201170550491459482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d * A369700 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A331314.P14201170550491459482

/-! ## A331314.P13066522991737380416

`∑{d}[n+1, A008683(#)*A365648((n+1)/#)]`
-/

namespace A331314.P13066522991737380416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A365648 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A331314.P13066522991737380416

/-! ## A331314.P67241948344481743

`∑{d}[n+1, A008836(#)*A365647((n+1)/#)]`
-/

namespace A331314.P67241948344481743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008836 d * A365647 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A331314.P67241948344481743

/-!
# A331315: Array read by antidiagonals: A(n,k) is the number of nonnegative integer matrices with k columns and any number of nonzero rows with column sums n and columns in nonincreasing lexicographic order.

The programs for A331315, there is no canonical definition to state claims against.
-/

/-! ## A331315.P6507819207459036985

`A006519(A316674(n))*A330942(n)`
-/

namespace A331315.P6507819207459036985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A316674 n).toNat * A330942 n

end

end A331315.P6507819207459036985

/-!
# A331316: Number of nonnegative integer matrices with n distinct columns and any number of distinct nonzero rows with each column sum being 2 and rows in decreasing lexicographic order.

The programs for A331316, there is no canonical definition to state claims against.
-/

/-! ## A331316.P797824430010321335

`A331160(∑[n+2]+3)`
-/

namespace A331316.P797824430010321335
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331160 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A331316.P797824430010321335

/-! ## A331316.P5456648266962711332

`A331160(A340266(n+1))%A224766(n)`
-/

namespace A331316.P5456648266962711332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331160 (A340266 (n + 1)).toNat) (A224766 n)

end

end A331316.P5456648266962711332

/-! ## A331316.P6939104111455755173

`lcm(A033999(n), A331160(A340266(n+1)))`
-/

namespace A331316.P6939104111455755173
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A331160 (A340266 (n + 1)).toNat)

end

end A331316.P6939104111455755173

/-! ## A331316.P17009318868653570934

`A331160(A152948(n+4))%A013711(n)`
-/

namespace A331316.P17009318868653570934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331160 (A152948 (n + 4)).toNat) (A013711 n)

end

end A331316.P17009318868653570934

/-! ## A331316.P7380894495175702842

`A001511(2*n+5)*A331160(A152948(n+4))`
-/

namespace A331316.P7380894495175702842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (2 * n + 5) * A331160 (A152948 (n + 4)).toNat

end

end A331316.P7380894495175702842

/-!
# A331317: Number of nonnegative integer matrices with 2 distinct columns and any number of distinct nonzero rows with each column sum being n and rows in decreasing lexicographic order.

The programs for A331317, there is no canonical definition to state claims against.
-/

/-! ## A331317.P17199797097713372580

`A219554(n)-A000009(n)`
-/

namespace A331317.P17199797097713372580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219554 n - A000009 n

end

end A331317.P17199797097713372580

/-! ## A331317.P4285138090168940830

`A219554(n)-abs(A081360(n))`
-/

namespace A331317.P4285138090168940830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219554 n - |A081360 n|

end

end A331317.P4285138090168940830

/-! ## A331317.P9652026756545412152

`A219554(n)-∑[A087897(n)]`
-/

namespace A331317.P9652026756545412152
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219554 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331317.P9652026756545412152

/-! ## A331317.P16607431440132103456

`A219554(n)-A035457(2*n)`
-/

namespace A331317.P16607431440132103456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219554 n - A035457 (2 * n)

end

end A331317.P16607431440132103456

/-! ## A331317.P1510325577263766710

`A219554(n)-(A282892(n)+A035363(n))`
-/

namespace A331317.P1510325577263766710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219554 n - (A282892 n + A035363 n)

end

end A331317.P1510325577263766710

/-! ## A331317.P1390353959354375410

`A219554(n)-gcd(A000038(n), A081360(n))`
-/

namespace A331317.P1390353959354375410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219554 n - (Int.gcd (A000038 n) (A081360 n) : ℤ)

end

end A331317.P1390353959354375410

/-! ## A331317.P5878947515965987761

`A219554(n)-A201377(∑[n])`
-/

namespace A331317.P5878947515965987761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219554 n - A201377 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331317.P5878947515965987761

/-! ## A331317.P14763757707635243064

`A201377(∑[n]+n)-A000009(n)`
-/

namespace A331317.P14763757707635243064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201377 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A000009 n

end

end A331317.P14763757707635243064

/-! ## A331317.P2765491284147974593

`A219554(n)-A054242(∑[n])`
-/

namespace A331317.P2765491284147974593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219554 n - A054242 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331317.P2765491284147974593

/-!
# A331319: a(n) = [x^n](x - 2*x^3)/(1 - 2*x*(x + 1))^2.

The programs for A331319, the canonical program `A331319.P10631085223340539815` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331319 has offset 0).

The definition of A331319 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331319.P10631085223340539815

`4*a(n-1)-8*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=1, a(2)=4, a(3)=14`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A331319

/-- `4*a(n-1)-8*a(n-3)-4*a(n-4)` -/
def P10631085223340539815.Spec : Prop :=
  ∀ n, P10631085223340539815.a n = A331319 n

theorem P10631085223340539815.correct : P10631085223340539815.Spec := by
  intro n
  simp only [A331319]

end A331319

/-! ## A331319.P16698451317294552825

`A293007(n)+2*(a(n-1)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A331319.P16698451317294552825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A293007 n + 2 * (a (n - 1) + a (n - 2))

end

end A331319.P16698451317294552825

namespace A331319

/-- `A293007(n)+2*(a(n-1)+a(n-2))` -/
def P16698451317294552825.Spec : Prop :=
  ∀ n, P16698451317294552825.a n = A331319 n

end A331319

/-! ## A331319.P11588358875627633192

`A331320(n)-A152035(n)`
-/

namespace A331319.P11588358875627633192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331320 n - A152035 n

end

end A331319.P11588358875627633192

namespace A331319

/-- `A331320(n)-A152035(n)` -/
def P11588358875627633192.Spec : Prop :=
  ∀ n, P11588358875627633192.a n = A331319 n

end A331319

/-! ## A331319.P8049624726862762183

`A002605(n)+A293007(n)+A074358(n)`
-/

namespace A331319.P8049624726862762183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 n + (A293007 n + A074358 n)

end

end A331319.P8049624726862762183

namespace A331319

/-- `A002605(n)+A293007(n)+A074358(n)` -/
def P8049624726862762183.Spec : Prop :=
  ∀ n, P8049624726862762183.a n = A331319 n

end A331319

/-! ## A331319.P11792901886207366082

`A028859(n)+A074358(n)-A152035(n)`
-/

namespace A331319.P11792901886207366082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 n + (A074358 n - A152035 n)

end

end A331319.P11792901886207366082

namespace A331319

/-- `A028859(n)+A074358(n)-A152035(n)` -/
def P11792901886207366082.Spec : Prop :=
  ∀ n, P11792901886207366082.a n = A331319 n

end A331319

/-!
# A331320: a(n) = [x^n] ((x + 1)*(2*x - 1)*(2*x^2 - 1))/(2*x^2 + 2*x - 1)^2.

The programs for A331320, the canonical program `A331320.P7309982572107165088` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331320 has offset 0).

The definition of A331320 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331320.P7309982572107165088

`4*a(n-1)-8*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=26, a(4)=80`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A331320

/-- `4*a(n-1)-8*a(n-3)-4*a(n-4)` -/
def P7309982572107165088.Spec : Prop :=
  ∀ n, P7309982572107165088.a n = A331320 n

theorem P7309982572107165088.correct : P7309982572107165088.Spec := by
  intro n
  simp only [A331320]

end A331320

/-! ## A331320.P16148078046974676217

`A293007(n)+2*(a(n-1)+a(n-2))` with `a(0)=1, a(1)=3, a(2)=8`
-/

namespace A331320.P16148078046974676217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 8] fun n a =>
  A293007 n + 2 * (a (n - 1) + a (n - 2))

end

end A331320.P16148078046974676217

namespace A331320

/-- `A293007(n)+2*(a(n-1)+a(n-2))` -/
def P16148078046974676217.Spec : Prop :=
  ∀ n, P16148078046974676217.a n = A331320 n

end A331320

/-! ## A331320.P11111077470872031137

`A074358(n)+A028859(n)`
-/

namespace A331320.P11111077470872031137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074358 n + A028859 n

end

end A331320.P11111077470872031137

namespace A331320

/-- `A074358(n)+A028859(n)` -/
def P11111077470872031137.Spec : Prop :=
  ∀ n, P11111077470872031137.a n = A331320 n

end A331320

/-! ## A331320.P12013606994612635412

`A331319(n)+A152035(n)`
-/

namespace A331320.P12013606994612635412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331319 n + A152035 n

end

end A331320.P12013606994612635412

namespace A331320

/-- `A331319(n)+A152035(n)` -/
def P12013606994612635412.Spec : Prop :=
  ∀ n, P12013606994612635412.a n = A331320 n

end A331320

/-! ## A331320.P2225497517635760276

`A074358(n)+∑[A052945(n)]`
-/

namespace A331320.P2225497517635760276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052945 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074358 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331320.P2225497517635760276

namespace A331320

/-- `A074358(n)+∑[A052945(n)]` -/
def P2225497517635760276.Spec : Prop :=
  ∀ n, P2225497517635760276.a n = A331320 n

end A331320

/-! ## A331320.P4215044347155980144

`A002605(n+1)+A074358(n)+A002605(n)`
-/

namespace A331320.P4215044347155980144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002605 (n + 1) + (A074358 n + A002605 n)

end

end A331320.P4215044347155980144

namespace A331320

/-- `A002605(n+1)+A074358(n)+A002605(n)` -/
def P4215044347155980144.Spec : Prop :=
  ∀ n, P4215044347155980144.a n = A331320 n

end A331320

/-! ## A331320.P2354491857766203931

`A293005(n+1)+A074358(n)-A293005(n)`
-/

namespace A331320.P2354491857766203931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293005 (n + 1) + (A074358 n - A293005 n)

end

end A331320.P2354491857766203931

namespace A331320

/-- `A293005(n+1)+A074358(n)-A293005(n)` -/
def P2354491857766203931.Spec : Prop :=
  ∀ n, P2354491857766203931.a n = A331320 n

end A331320

/-!
# A331321: a(n) = [x^n] ((x^2 - 1)*(x^2 + x - 1))/(x^2 + 2*x - 1)^2.

The programs for A331321, the canonical program `A331321.P2594329637476167748` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331321 has offset 0).

The definition of A331321 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331321.P2594329637476167748

`4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=23, a(4)=64`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A331321

/-- `4*a(n-1)-2*a(n-2)-4*a(n-3)-a(n-4)` -/
def P2594329637476167748.Spec : Prop :=
  ∀ n, P2594329637476167748.a n = A331321 n

theorem P2594329637476167748.correct : P2594329637476167748.Spec := by
  intro n
  simp only [A331321]

end A331321

/-! ## A331321.P17825367537891194238

`A119915(n)+A052542(n)`
-/

namespace A331321.P17825367537891194238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119915 n + A052542 n

end

end A331321.P17825367537891194238

namespace A331321

/-- `A119915(n)+A052542(n)` -/
def P17825367537891194238.Spec : Prop :=
  ∀ n, P17825367537891194238.a n = A331321 n

theorem P17825367537891194238.correct : P17825367537891194238.Spec := by
  intro n
  simp only [A331321, Nat.add_sub_cancel, A331321.P17825367537891194238.a, A331321.P2594329637476167748.a, A052542, A052542.P15719751164566101536.a, A119915, A119915.P7571024474425089576.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A331321

/-! ## A331321.P12603341447835895621

`A119915(n)+A082766(2*n+1)`
-/

namespace A331321.P12603341447835895621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119915 n + A082766 (2 * n + 1)

end

end A331321.P12603341447835895621

namespace A331321

/-- `A119915(n)+A082766(2*n+1)` -/
def P12603341447835895621.Spec : Prop :=
  ∀ n, P12603341447835895621.a n = A331321 n

end A331321

/-! ## A331321.P10781402717039851598

`A026937(n)-Δ[A074084(n)]`
-/

namespace A331321.P10781402717039851598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074084 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026937 n - (f1 (n + 1) - f1 n)

end

end A331321.P10781402717039851598

namespace A331321

/-- `A026937(n)-Δ[A074084(n)]` -/
def P10781402717039851598.Spec : Prop :=
  ∀ n, P10781402717039851598.a n = A331321 n

end A331321

/-! ## A331321.P11457137835204760143

`Δ[A000129(n)+Δ[A074084(n)]]`
-/

namespace A331321.P11457137835204760143
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074084 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331321.P11457137835204760143

namespace A331321

/-- `Δ[A000129(n)+Δ[A074084(n)]]` -/
def P11457137835204760143.Spec : Prop :=
  ∀ n, P11457137835204760143.a n = A331321 n

end A331321

/-! ## A331321.P1289268747184041745

`Δ[A054447(n)-A190215(A134869(n+1))]`
-/

namespace A331321.P1289268747184041745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054447 n - A190215 (A134869 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331321.P1289268747184041745

namespace A331321

/-- `Δ[A054447(n)-A190215(A134869(n+1))]` -/
def P1289268747184041745.Spec : Prop :=
  ∀ n, P1289268747184041745.a n = A331321 n

end A331321

/-!
# A331322: a(n) = (3*n + 1)!/(n!)^3.

The programs for A331322, the canonical program `A331322.P7040374156949271354` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331322 has offset 0).

The definition of A331322 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331322.P11253844900962229874

`(3*n+1)*C(2*n, n)*C(3*n, n)`
-/

namespace A331322.P11253844900962229874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (3 * n + 1) * Nat.choose (2 * n) n * Nat.choose (3 * n) n

end

end A331322.P11253844900962229874

namespace A331322

/-- `(3*n+1)*C(2*n, n)*C(3*n, n)` -/
def P11253844900962229874.Spec : Prop :=
  ∀ n, (P11253844900962229874.a n : ℤ) = A331322 n

theorem P11253844900962229874.correct : P11253844900962229874.Spec := by
  intro n
  simp only [A331322, Nat.add_sub_cancel, A331322.P11253844900962229874.a, A331322.P7040374156949271354.a, A006480, A006480.P12463522902644750404.a, A000984, A000984.P7946844122574426130.a, A005809, A005809.P15087077436016713419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331322

/-! ## A331322.P7040374156949271354

`(3*n+1)*A006480(n)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A331322

/-- `(3*n+1)*A006480(n)` -/
def P7040374156949271354.Spec : Prop :=
  ∀ n, P7040374156949271354.a n = A331322 n

theorem P7040374156949271354.correct : P7040374156949271354.Spec := by
  intro n
  simp only [A331322]

end A331322

/-! ## A331322.P18223120314011644662

`(n+1)²*A117671(n)*A000108(n)`
-/

namespace A331322.P18223120314011644662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A117671 n * A000108 n

end

end A331322.P18223120314011644662

namespace A331322

/-- `(n+1)²*A117671(n)*A000108(n)` -/
def P18223120314011644662.Spec : Prop :=
  ∀ n, P18223120314011644662.a n = A331322 n

end A331322

/-! ## A331322.P8529045410714617818

`(3*n+1)!/n!^3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A331322.P8529045410714617818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (3 * n + 1) : ℚ) / (Nat.factorial n ^ 3 : ℚ)

end

end A331322.P8529045410714617818

namespace A331322

/-- `(3*n+1)!/n!^3` -/
def P8529045410714617818.Spec : Prop :=
  ∀ n, P8529045410714617818.a n = (A331322 n : ℚ)

end A331322

/-! ## A331322.P4868631614247983230

`3*(9-n^-2)*a(n-1)` with `a(0)=1`
-/

namespace A331322.P4868631614247983230
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * ((9 - (n : ℚ) ^ (-2 : ℤ)) * a (n - 1))

end

end A331322.P4868631614247983230

namespace A331322

/-- `3*(9-n^-2)*a(n-1)` -/
def P4868631614247983230.Spec : Prop :=
  ∀ n, P4868631614247983230.a n = (A331322 n : ℚ)

end A331322

/-! ## A331322.P13930246168085289862

`A318107(∑[n+1]+1)`
-/

namespace A331322.P13930246168085289862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318107 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A331322.P13930246168085289862

namespace A331322

/-- `A318107(∑[n+1]+1)` -/
def P13930246168085289862.Spec : Prop :=
  ∀ n, P13930246168085289862.a n = A331322 n

end A331322

/-! ## A331322.P8077139899370677486

`(n+1)²*A024489(n+1)`
-/

namespace A331322.P8077139899370677486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A024489 (n + 1)

end

end A331322.P8077139899370677486

namespace A331322

/-- `(n+1)²*A024489(n+1)` -/
def P8077139899370677486.Spec : Prop :=
  ∀ n, P8077139899370677486.a n = A331322 n

end A331322

/-! ## A331322.P17160300299410019689

`(n+1)²*A215294(2*n+1)`
-/

namespace A331322.P17160300299410019689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A215294 (2 * n + 1)

end

end A331322.P17160300299410019689

namespace A331322

/-- `(n+1)²*A215294(2*n+1)` -/
def P17160300299410019689.Spec : Prop :=
  ∀ n, P17160300299410019689.a n = A331322 n

end A331322

/-! ## A331322.P13685459403501112206

`A006480(n)*A016777(n)`
-/

namespace A331322.P13685459403501112206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006480 n * A016777 n

end

end A331322.P13685459403501112206

namespace A331322

/-- `A006480(n)*A016777(n)` -/
def P13685459403501112206.Spec : Prop :=
  ∀ n, P13685459403501112206.a n = A331322 n

theorem P13685459403501112206.correct : P13685459403501112206.Spec := by
  intro n
  simp only [A331322, Nat.add_sub_cancel, A331322.P13685459403501112206.a, A331322.P7040374156949271354.a, A006480, A006480.P12463522902644750404.a, A016777, A016777.P9931792138852554157.a, A000984, A000984.P7946844122574426130.a, A005809, A005809.P15087077436016713419.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331322

/-! ## A331322.P11616631214316304578

`A002457(n)*A045721(n)`
-/

namespace A331322.P11616631214316304578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 n * A045721 n

end

end A331322.P11616631214316304578

namespace A331322

/-- `A002457(n)*A045721(n)` -/
def P11616631214316304578.Spec : Prop :=
  ∀ n, P11616631214316304578.a n = A331322 n

end A331322

/-!
# A331323: a(n) = [x^n] (1 - 2*x)/(1 - 8*x + 4*x^2)^(3/2).

The programs for A331323, the canonical program `A331323.P3105328153056745567` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331323 has offset 0).

The definition of A331323 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331323.P3105328153056745567

`(10*n*a(n-1)+20*(1-n)*a(n-2)+8*(n-1)*a(n-3))/n` with `a(0)=1, a(1)=10, a(2)=90`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A331323

/-- `(10*n*a(n-1)+20*(1-n)*a(n-2)+8*(n-1)*a(n-3))/n` -/
def P3105328153056745567.Spec : Prop :=
  ∀ n, P3105328153056745567.a n = (A331323 n : ℚ)

end A331323

/-! ## A331323.P15233322483004179007

`(n+1)*A098663(n)`
-/

namespace A331323.P15233322483004179007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A098663 n

end

end A331323.P15233322483004179007

namespace A331323

/-- `(n+1)*A098663(n)` -/
def P15233322483004179007.Spec : Prop :=
  ∀ n, P15233322483004179007.a n = A331323 n

end A331323

/-! ## A331323.P15653284779710551212

`(n+1)/3*A255688(n+1)`
-/

namespace A331323.P15653284779710551212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A255688 (n + 1) : ℚ)

end

end A331323.P15653284779710551212

namespace A331323

/-- `(n+1)/3*A255688(n+1)` -/
def P15653284779710551212.Spec : Prop :=
  ∀ n, P15653284779710551212.a n = (A331323 n : ℚ)

end A331323

/-! ## A331323.P289209302680919312

`A331511(A055999(n+3))`
-/

namespace A331323.P289209302680919312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331511 (A055999 (n + 3)).toNat

end

end A331323.P289209302680919312

namespace A331323

/-- `A331511(A055999(n+3))` -/
def P289209302680919312.Spec : Prop :=
  ∀ n, P289209302680919312.a n = A331323 n

end A331323

/-! ## A331323.P4875007433193623904

`A331511(Δ[A026054(n+3)])`
-/

namespace A331323.P4875007433193623904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026054 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331511 (f1 (n + 1) - f1 n).toNat

end

end A331323.P4875007433193623904

namespace A331323

/-- `A331511(Δ[A026054(n+3)])` -/
def P4875007433193623904.Spec : Prop :=
  ∀ n, P4875007433193623904.a n = A331323 n

end A331323

/-! ## A331323.P17850695903986738637

`A331511(A000217(n+6)-6)`
-/

namespace A331323.P17850695903986738637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331511 (A000217 (n + 6) - 6).toNat

end

end A331323.P17850695903986738637

namespace A331323

/-- `A331511(A000217(n+6)-6)` -/
def P17850695903986738637.Spec : Prop :=
  ∀ n, P17850695903986738637.a n = A331323 n

end A331323

/-!
# A331324: Prime numbers p_k such that p_k == 1 (mod 10) and p_(k+1) == 7 (mod 10).

The programs for A331324, the canonical program `A331324.P4018148825300603067` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331324 has offset 1).

The definition of A331324 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 889 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331324.P4018148825300603067

`p?[A063482(eq[7, A007652(n+1)])]`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A331324

/-- `p?[A063482(eq[7, A007652(n+1)])]` -/
def P4018148825300603067.Spec : Prop :=
  ∀ n, P4018148825300603067.a n = A331324 (n + 1)

theorem P4018148825300603067.correct : P4018148825300603067.Spec := by
  intro n
  simp only [A331324, Nat.add_sub_cancel]

end A331324

/-! ## A331324.P7702877996928820566

`filter[A129812(n+2), A185705(#)]`
-/

namespace A331324.P7702877996928820566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129812 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185705 (f1 j).toNat = 1) n)

end

end A331324.P7702877996928820566

namespace A331324

/-- `filter[A129812(n+2), A185705(#)]` -/
def P7702877996928820566.Spec : Prop :=
  ∀ n, P7702877996928820566.a n = A331324 (n + 1)

end A331324

/-! ## A331324.P414350535326277182

`∩[A016861(n), A129812(n+2)]`
-/

namespace A331324.P414350535326277182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129812 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331324.P414350535326277182

namespace A331324

/-- `∩[A016861(n), A129812(n+2)]` -/
def P414350535326277182.Spec : Prop :=
  ∀ n, (P414350535326277182.a n : ℤ) = A331324 (n + 1)

end A331324

/-! ## A331324.P6381105353365354882

`∩[A129812(n+2), A017281(n)]`
-/

namespace A331324.P6381105353365354882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129812 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331324.P6381105353365354882

namespace A331324

/-- `∩[A129812(n+2), A017281(n)]` -/
def P6381105353365354882.Spec : Prop :=
  ∀ n, (P6381105353365354882.a n : ℤ) = A331324 (n + 1)

end A331324

/-! ## A331324.P15561535594467162300

`∩[A129812(n+2), A391163(n)]`
-/

namespace A331324.P15561535594467162300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129812 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391163 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331324.P15561535594467162300

namespace A331324

/-- `∩[A129812(n+2), A391163(n)]` -/
def P15561535594467162300.Spec : Prop :=
  ∀ n, (P15561535594467162300.a n : ℤ) = A331324 (n + 1)

end A331324

/-! ## A331324.P11609672123761805814

`∩[A004615(n+1), A129812(n+2)]`
-/

namespace A331324.P11609672123761805814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129812 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331324.P11609672123761805814

namespace A331324

/-- `∩[A004615(n+1), A129812(n+2)]` -/
def P11609672123761805814.Spec : Prop :=
  ∀ n, (P11609672123761805814.a n : ℤ) = A331324 (n + 1)

end A331324

/-! ## A331324.P5052288987205170407

`∩[A030430(n+1), A129812(n+2)]`
-/

namespace A331324.P5052288987205170407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030430 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129812 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331324.P5052288987205170407

namespace A331324

/-- `∩[A030430(n+1), A129812(n+2)]` -/
def P5052288987205170407.Spec : Prop :=
  ∀ n, (P5052288987205170407.a n : ℤ) = A331324 (n + 1)

end A331324

/-! ## A331324.P6664312357482972478

`∩[A045453(n+1), A129812(n+2)]`
-/

namespace A331324.P6664312357482972478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129812 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331324.P6664312357482972478

namespace A331324

/-- `∩[A045453(n+1), A129812(n+2)]` -/
def P6664312357482972478.Spec : Prop :=
  ∀ n, (P6664312357482972478.a n : ℤ) = A331324 (n + 1)

end A331324

/-! ## A331324.P7225548265398826949

`∩[A084906(n+1), A129812(n+2)]`
-/

namespace A331324.P7225548265398826949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084906 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129812 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331324.P7225548265398826949

namespace A331324

/-- `∩[A084906(n+1), A129812(n+2)]` -/
def P7225548265398826949.Spec : Prop :=
  ∀ n, (P7225548265398826949.a n : ℤ) = A331324 (n + 1)

end A331324

/-! ## A331324.P7811555971409268120

`∩[A090756(n+1), A129812(n+2)]`
-/

namespace A331324.P7811555971409268120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129812 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331324.P7811555971409268120

namespace A331324

/-- `∩[A090756(n+1), A129812(n+2)]` -/
def P7811555971409268120.Spec : Prop :=
  ∀ n, (P7811555971409268120.a n : ℤ) = A331324 (n + 1)

end A331324

/-! ## A331324.P4326611357665224029

`∩[A105179(n+1), A129812(n+2)]`
-/

namespace A331324.P4326611357665224029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129812 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331324.P4326611357665224029

namespace A331324

/-- `∩[A105179(n+1), A129812(n+2)]` -/
def P4326611357665224029.Spec : Prop :=
  ∀ n, (P4326611357665224029.a n : ℤ) = A331324 (n + 1)

end A331324

/-!
# A331325: a(n) = n!*[x^n] cosh(x/(1-x))/(1-x).

The programs for A331325, there is no canonical definition to state claims against.
-/

/-! ## A331325.P1162281137249232161

`A088312(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A331325.P1162281137249232161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A088312 n + (n : ℤ) * a (n - 1)

end

end A331325.P1162281137249232161

/-! ## A331325.P8902855001387889789

`A331326(n)+A009940(n)`
-/

namespace A331325.P8902855001387889789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331326 n + A009940 n

end

end A331325.P8902855001387889789

/-! ## A331325.P14319452489596686009

`A002720(n)-A331326(n)`
-/

namespace A331325.P14319452489596686009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n - A331326 n

end

end A331325.P14319452489596686009

/-! ## A331325.P10013859525325518988

`(A009940(n)+A002720(n))/2`
-/

namespace A331325.P10013859525325518988
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009940 n + A002720 n : ℚ) / 2

end

end A331325.P10013859525325518988

/-! ## A331325.P10976284237994685881

`A056953(2*n)-A331326(n)`
-/

namespace A331325.P10976284237994685881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056953 (2 * n) - A331326 n

end

end A331325.P10976284237994685881

/-! ## A331325.P10700394270630098838

`A176120(∑[n]+n)-A331326(n)`
-/

namespace A331325.P10700394270630098838
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 (∑ j ∈ Finset.range (n + 1), f1 j + n) - A331326 n

end

end A331325.P10700394270630098838

/-! ## A331325.P14988289709049737235

`A000142(n)+A331326(n)-A087860(n)`
-/

namespace A331325.P14988289709049737235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n + (A331326 n - A087860 n)

end

end A331325.P14988289709049737235

/-!
# A331326: a(n) = n!*[x^n] sinh(x/(1 - x))/(1 - x).

The programs for A331326, there is no canonical definition to state claims against.
-/

/-! ## A331326.P11891261572063284611

`A331325(n)-A009940(n)`
-/

namespace A331326.P11891261572063284611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331325 n - A009940 n

end

end A331326.P11891261572063284611

/-! ## A331326.P4087197996246750006

`A088313(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A331326.P4087197996246750006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A088313 n + (n : ℤ) * a (n - 1)

end

end A331326.P4087197996246750006

/-! ## A331326.P7286450354336256898

`A002720(n)-A331325(n)`
-/

namespace A331326.P7286450354336256898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002720 n - A331325 n

end

end A331326.P7286450354336256898

/-! ## A331326.P754791933127099629

`A056953(2*n)-A331325(n)`
-/

namespace A331326.P754791933127099629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056953 (2 * n) - A331325 n

end

end A331326.P754791933127099629

/-! ## A331326.P15679703144632724590

`(A002720(n)-A009940(n))/2`
-/

namespace A331326.P15679703144632724590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002720 n - A009940 n : ℚ) / 2

end

end A331326.P15679703144632724590

/-! ## A331326.P15562757691132640127

`A176120(A000096(n))-A331325(n)`
-/

namespace A331326.P15562757691132640127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176120 (A000096 n).toNat - A331325 n

end

end A331326.P15562757691132640127

/-! ## A331326.P9534453072724244269

`A087860(n)+A331325(n)-A000142(n)`
-/

namespace A331326.P9534453072724244269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087860 n + (A331325 n - A000142 n)

end

end A331326.P9534453072724244269

/-!
# A331327: T(n, k) = [x^k] Pochhammer(x, n-k) for n >= 0, 0 <= k <= floor(n/2). Irregular triangle read by rows.

The programs for A331327, there is no canonical definition to state claims against.
-/

/-! ## A331327.P641572863055916905

`A132393(A091018(n))`
-/

namespace A331327.P641572863055916905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A091018 n).toNat

end

end A331327.P641572863055916905

/-! ## A331327.P16779779405810163245

`A132393(A056536(n+1)-1)`
-/

namespace A331327.P16779779405810163245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132393 (A056536 (n + 1) - 1).toNat

end

end A331327.P16779779405810163245

/-! ## A331327.P14262026068323305824

`abs(A048994(A056536(n+1)-1))`
-/

namespace A331327.P14262026068323305824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048994 (A056536 (n + 1) - 1).toNat|

end

end A331327.P14262026068323305824

/-! ## A331327.P5439102733487354667

`gcd(A000038(n), A048994(A091018(n)))`
-/

namespace A331327.P5439102733487354667
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A048994 (A091018 n).toNat)

end

end A331327.P5439102733487354667

/-! ## A331327.P5185673696864741473

`lcm(A020985(n), A048994(A091018(n)))`
-/

namespace A331327.P5185673696864741473
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A048994 (A091018 n).toNat)

end

end A331327.P5185673696864741473

/-! ## A331327.P1326196352133555818

`gcd(A008683(4*(n+1)), A048994(A056536(n+1)-1))`
-/

namespace A331327.P1326196352133555818
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (4 * (n + 1))) (A048994 (A056536 (n + 1) - 1).toNat)

end

end A331327.P1326196352133555818

/-!
# A331328: Evaluation of the Little-Schröder polynomials at 1/2 and normalized with 2^n.

The programs for A331328, there is no canonical definition to state claims against.
-/

/-! ## A331328.P12412437144053499020

`A286098(Δ[A029894(n)])`
-/

namespace A331328.P12412437144053499020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286098 (f1 (n + 1) - f1 n).toNat

end

end A331328.P12412437144053499020

/-!
# A331329: a(n) = binomial(5*n, n)*hypergeom([-4*n, -n], [-5*n], -1).

The programs for A331329, there is no canonical definition to state claims against.
-/

/-! ## A331329.P4452432248333466720

`A114123(A062728(n))`
-/

namespace A331329.P4452432248333466720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114123 (A062728 n).toNat

end

end A331329.P4452432248333466720

/-! ## A331329.P16941662190215264369

`A184883(A062725(n))`
-/

namespace A331329.P16941662190215264369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184883 (A062725 n).toNat

end

end A331329.P16941662190215264369

/-! ## A331329.P2506081360384293224

`A114123(A062725(n)+n)`
-/

namespace A331329.P2506081360384293224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114123 (A062725 n + (n : ℤ)).toNat

end

end A331329.P2506081360384293224

/-! ## A331329.P3948791901096324513

`A184883(A062728(n)-n)`
-/

namespace A331329.P3948791901096324513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184883 (A062728 n - (n : ℤ)).toNat

end

end A331329.P3948791901096324513

/-! ## A331329.P12125218395870505389

`A184883(A007742(n)+A000096(n))`
-/

namespace A331329.P12125218395870505389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184883 (A007742 n + A000096 n).toNat

end

end A331329.P12125218395870505389

/-!
# A331330: a(n) is the number of sparse rulers of length n where the length of the first segment is unique.

The programs for A331330, there is no canonical definition to state claims against.
-/

/-! ## A331330.P2682813888407152186

`A331332(∑[n]+1)`
-/

namespace A331330.P2682813888407152186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331332 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A331330.P2682813888407152186

/-! ## A331330.P5597735922726424053

`or(char[1], A331332(A000124(n)))`
-/

namespace A331330.P5597735922726424053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A331332 (A000124 n).toNat)

end

end A331330.P5597735922726424053

/-! ## A331330.P9475530193062591747

`A057427(n)*A331332(A000124(n))`
-/

namespace A331330.P9475530193062591747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A331332 (A000124 n).toNat

end

end A331330.P9475530193062591747

/-! ## A331330.P3377991653356656256

`A331332(A000124(n))%A000079(n)`
-/

namespace A331330.P3377991653356656256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331332 (A000124 n).toNat) (A000079 n)

end

end A331330.P3377991653356656256

/-! ## A331330.P594770979283466798

`lcm(A057077(n), A331332(A000124(n)))`
-/

namespace A331330.P594770979283466798
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A057077 n) (A331332 (A000124 n).toNat)

end

end A331330.P594770979283466798

/-! ## A331330.P15337760001026990069

`and(A057428(n), A331332(A000124(n)))`
-/

namespace A331330.P15337760001026990069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A331332 (A000124 n).toNat)

end

end A331330.P15337760001026990069

/-! ## A331330.P14240843055267467725

`A309332(A108769(n+1))*A331332(A000124(n))`
-/

namespace A331330.P14240843055267467725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309332 (A108769 (n + 1)).toNat * A331332 (A000124 n).toNat

end

end A331330.P14240843055267467725

/-! ## A331330.P16690929794514935584

`A331332(A000124(n))+A014707(n²)`
-/

namespace A331330.P16690929794514935584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331332 (A000124 n).toNat + A014707 (n ^ 2)

end

end A331330.P16690929794514935584

/-!
# A331331: Triangle read by rows, T(n, k) (0 <= k <= n) = (-m)^(n-k)*[x^k] KummerU(-n, 1/m, x) for m = 3.

The programs for A331331, there is no canonical definition to state claims against.
-/

/-! ## A331331.P272574444133363681

`A007318(n)*A136214(n)`
-/

namespace A331331.P272574444133363681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A136214 n

end

end A331331.P272574444133363681

/-! ## A331331.P8712753042088872570

`abs(A108086(n)*A136214(n))`
-/

namespace A331331.P8712753042088872570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n * A136214 n|

end

end A331331.P8712753042088872570

/-! ## A331331.P7230136365586279973

`abs(A117440(n)*A136214(n))`
-/

namespace A331331.P7230136365586279973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n * A136214 n|

end

end A331331.P7230136365586279973

/-! ## A331331.P917804029430718612

`abs(A130595(n)*A136214(n))`
-/

namespace A331331.P917804029430718612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n * A136214 n|

end

end A331331.P917804029430718612

/-! ## A331331.P7253708903070454278

`sqrt(A008459(n))*A136214(n)`
-/

namespace A331331.P7253708903070454278
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A136214 n : ℝ)

end

end A331331.P7253708903070454278

/-!
# A331332: Sparse ruler statistics: T(n,k) (0 <= k <= n) is the number of rulers with length n where the length of the first segment appears k times. Triangle read by rows.

The programs for A331332, there is no canonical definition to state claims against.
-/

/-! ## A331332.P5053156002496703176

`A329861(n)+A044941(2^n)`
-/

namespace A331332.P5053156002496703176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329861 n + A044941 (2 ^ n)

end

end A331332.P5053156002496703176

/-! ## A331332.P3595700268991561061

`A329861(n)+A010051(A022171(n))`
-/

namespace A331332.P3595700268991561061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329861 n + A010051 (A022171 n).toNat

end

end A331332.P3595700268991561061

/-! ## A331332.P742932493110959657

`A329861(n)+A102683(A058696(n))`
-/

namespace A331332.P742932493110959657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329861 n + A102683 (A058696 n).toNat

end

end A331332.P742932493110959657

/-! ## A331332.P10878146212746025564

`A329861(n)+A185284(A000009(n))`
-/

namespace A331332.P10878146212746025564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329861 n + A185284 (A000009 n).toNat

end

end A331332.P10878146212746025564

/-! ## A331332.P4002995257141686646

`A243978(n)+A001222(A347811(n))`
-/

namespace A331332.P4002995257141686646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243978 n + A001222 (A347811 n).toNat

end

end A331332.P4002995257141686646

/-!
# A331333: Interpolating the factorial and the powers of 2. Triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A331333, there is no canonical definition to state claims against.
-/

/-! ## A331333.P18199948041567647171

`abs(2^(n-C(∑[char[∑[n]]], 2))*A021009(n))`
-/

namespace A331333.P18199948041567647171
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(2 : ℚ) ^ ((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) : ℤ) * (A021009 n : ℚ)|

end

end A331333.P18199948041567647171

/-! ## A331333.P8286241795855803147

`(C(comp[∑[n]]-n, 2)-(n+1))!*A133214(n)`
-/

namespace A331333.P8286241795855803147
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat : ℤ) * A133214 n

end

end A331333.P8286241795855803147

/-! ## A331333.P13907203487592600377

`A013609(n)*A094587(n)`
-/

namespace A331333.P13907203487592600377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013609 n * A094587 n

end

end A331333.P13907203487592600377

/-! ## A331333.P18003637495887667206

`A007318(n)*A126064(n)`
-/

namespace A331333.P18003637495887667206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A126064 n

end

end A331333.P18003637495887667206

/-! ## A331333.P2407994221249170129

`A119502(n)*A133214(n)`
-/

namespace A331333.P2407994221249170129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119502 n * A133214 n

end

end A331333.P2407994221249170129

/-!
# A331334: a(n) = n! * [x^n] exp(1 - 1/(2*x + 1))/(2*x + 1).

The programs for A331334, the canonical program `A331334.P16652725097295340821` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331334 has offset 0).

The definition of A331334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331334.P16652725097295340821

`4*(1-n)*((n-1)*a(n-2)+a(n-1))` with `a(0)=1, a(1)=0`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A331334

/-- `4*(1-n)*((n-1)*a(n-2)+a(n-1))` -/
def P16652725097295340821.Spec : Prop :=
  ∀ n, P16652725097295340821.a n = A331334 n

theorem P16652725097295340821.correct : P16652725097295340821.Spec := by
  intro n
  simp only [A331334]

end A331334

/-! ## A331334.P3497663955109610763

`2^n*A056920(2*n)`
-/

namespace A331334.P3497663955109610763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A056920 (2 * n)

end

end A331334.P3497663955109610763

namespace A331334

/-- `2^n*A056920(2*n)` -/
def P3497663955109610763.Spec : Prop :=
  ∀ n, P3497663955109610763.a n = A331334 n

end A331334

/-! ## A331334.P4955226192235689249

`A000079(n)*A131758(A000217(n))`
-/

namespace A331334.P4955226192235689249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A131758 (A000217 n).toNat

end

end A331334.P4955226192235689249

namespace A331334

/-- `A000079(n)*A131758(A000217(n))` -/
def P4955226192235689249.Spec : Prop :=
  ∀ n, P4955226192235689249.a n = A331334 n

end A331334

/-! ## A331334.P16904368532809387627

`(A331325(n)-A331326(n))*A122803(n)`
-/

namespace A331334.P16904368532809387627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A331325 n - A331326 n) * A122803 n

end

end A331334.P16904368532809387627

namespace A331334

/-- `(A331325(n)-A331326(n))*A122803(n)` -/
def P16904368532809387627.Spec : Prop :=
  ∀ n, P16904368532809387627.a n = A331334 n

end A331334

/-! ## A331334.P17383300088100934776

`A000079(n)*A009940(n)*A033999(n)`
-/

namespace A331334.P17383300088100934776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A009940 n * A033999 n

end

end A331334.P17383300088100934776

namespace A331334

/-- `A000079(n)*A009940(n)*A033999(n)` -/
def P17383300088100934776.Spec : Prop :=
  ∀ n, P17383300088100934776.a n = A331334 n

end A331334

/-! ## A331334.P17820726933685027375

`A000032(C(2, n+2))^n*A009940(n)*A033999(n)`
-/

namespace A331334.P17820726933685027375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.choose 2 (n + 2)) ^ n * A009940 n * A033999 n

end

end A331334.P17820726933685027375

namespace A331334

/-- `A000032(C(2, n+2))^n*A009940(n)*A033999(n)` -/
def P17820726933685027375.Spec : Prop :=
  ∀ n, P17820726933685027375.a n = A331334 n

end A331334

/-!
# A331335: L.g.f.: log(Sum_{k>=0} k! * x^k / Product_{j=1..k} (1 - j*x)).

The programs for A331335, there is no canonical definition to state claims against.
-/

/-! ## A331335.P3433235129146668867

`∑{d}[n+1, #*A095993(#)]`
-/

namespace A331335.P3433235129146668867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A095993 d

end

end A331335.P3433235129146668867

/-!
# A331336: L.g.f.: log(Sum_{k>=0} k! * x^k / Product_{j=1..k} (1 - x^j)).

The programs for A331336, there is no canonical definition to state claims against.
-/

/-! ## A331336.P14830403203300244406

`A087894(a(n-1)+1)` with `a(0)=1`
-/

namespace A331336.P14830403203300244406
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A087894 (a (n - 1) + 1).toNat

end

end A331336.P14830403203300244406

/-!
# A331339: E.g.f.: 1 / (1 + log(1 - x - x^2)).

The programs for A331339, there is no canonical definition to state claims against.
-/

/-! ## A331339.P2840682182205546956

`A005206(lcm(A026660(n), A026665(n)))`
-/

namespace A331339.P2840682182205546956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (Int.lcm (A026660 n) (A026665 n))

end

end A331339.P2840682182205546956

/-!
# A331343: a(n) = lcm(1,2,...,n) * Sum_{k=1..n} (2^(k-1) - 1) / k.

The programs for A331343, there is no canonical definition to state claims against.
-/

/-! ## A331343.P7376954744693520135

`A003418(n+1)*A330718(n+1)/A330719(n+1)`
-/

namespace A331343.P7376954744693520135
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 (n + 1) * A330718 (n + 1) : ℚ) / (A330719 (n + 1) : ℚ)

end

end A331343.P7376954744693520135

/-! ## A331343.P571992291815613569

`A279683(n+1)/A025527(n+1)`
-/

namespace A331343.P571992291815613569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A279683 (n + 1) : ℚ) / (A025527 (n + 1) : ℚ)

end

end A331343.P571992291815613569

/-!
# A331344: Number of nonnegative integer matrices with n distinct columns and any number of distinct nonzero rows with each column sum being 3 and rows in decreasing lexicographic order.

The programs for A331344, there is no canonical definition to state claims against.
-/

/-! ## A331344.P7318190240913503592

`A331160(A167614(n+2))`
-/

namespace A331344.P7318190240913503592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331160 (A167614 (n + 2)).toNat

end

end A331344.P7318190240913503592

/-! ## A331344.P6466507575143918678

`A331160(A141214(n)+6)`
-/

namespace A331344.P6466507575143918678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331160 (A141214 n + 6).toNat

end

end A331344.P6466507575143918678

/-! ## A331344.P10266869732220295206

`A331160(A052905(n)+8)`
-/

namespace A331344.P10266869732220295206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331160 (A052905 n + 8).toNat

end

end A331344.P10266869732220295206

/-! ## A331344.P18418890287600055225

`A331160(A055999(n)+9)`
-/

namespace A331344.P18418890287600055225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331160 (A055999 n + 9).toNat

end

end A331344.P18418890287600055225

/-! ## A331344.P422308765018123167

`A331160(eq[3, A002262(n)])`
-/

namespace A331344.P422308765018123167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331160 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331344.P422308765018123167

/-!
# A331345: a(n) = (1/n^2) * Sum_{k>=1} k^n * (1 - 1/n)^(k - 1).

The programs for A331345, there is no canonical definition to state claims against.
-/

/-! ## A331345.P65022673639705217

`A257565(Δ[n²]+∑[4*n])`
-/

namespace A331345.P65022673639705217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257565 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A331345.P65022673639705217

/-!
# A331346: Primes using all the square digits {0, 1, 4, 9} and no others.

The programs for A331346, there is no canonical definition to state claims against.
-/

/-! ## A331346.P12892461944646888711

`A323387(n+10)`
-/

namespace A331346.P12892461944646888711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323387 (n + 10)

end

end A331346.P12892461944646888711

/-!
# A331347: Number of permutations w in S_n that form Boolean intervals [s, w] in the Bruhat order for every simple reflection s in the support of w.

The programs for A331347, the canonical program `A331347.P12911305869225637765` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331347 has offset 1).

The definition of A331347 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331347.P12911305869225637765

`5*a(n-1)-8*a(n-2)+5*a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=15, a(4)=37`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A331347

/-- `5*a(n-1)-8*a(n-2)+5*a(n-3)-a(n-4)` -/
def P12911305869225637765.Spec : Prop :=
  ∀ n, P12911305869225637765.a n = A331347 (n + 1)

theorem P12911305869225637765.correct : P12911305869225637765.Spec := by
  intro n
  simp only [A331347, Nat.add_sub_cancel]

end A331347

/-! ## A331347.P14835907863602653864

`∑[floor(ϕ²*a(n-1))-1]` with `a(0)=1, a(1)=1, a(2)=4`
-/

namespace A331347.P14835907863602653864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 4] fun n f1 =>
  ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331347.P14835907863602653864

namespace A331347

/-- `∑[floor(ϕ²*a(n-1))-1]` -/
def P14835907863602653864.Spec : Prop :=
  ∀ n, P14835907863602653864.a n = A331347 (n + 1)

end A331347

/-! ## A331347.P4573325883988298435

`∑[A055588(n-char[1])]`
-/

namespace A331347.P4573325883988298435
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055588 (n - (if ∃ j, f2 j = n then 1 else 0))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331347.P4573325883988298435

namespace A331347

/-- `∑[A055588(n-char[1])]` -/
def P4573325883988298435.Spec : Prop :=
  ∀ n, P4573325883988298435.a n = A331347 (n + 1)

end A331347

/-! ## A331347.P6757593148369767557

`∑[A001906(n-char[1])+1]`
-/

namespace A331347.P6757593148369767557
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001906 (n - (if ∃ j, f2 j = n then 1 else 0)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331347.P6757593148369767557

namespace A331347

/-- `∑[A001906(n-char[1])+1]` -/
def P6757593148369767557.Spec : Prop :=
  ∀ n, P6757593148369767557.a n = A331347 (n + 1)

end A331347

/-! ## A331347.P13328470307906400067

`∑[1-(char[1]-A001906(n))]`
-/

namespace A331347.P13328470307906400067
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - A001906 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331347.P13328470307906400067

namespace A331347

/-- `∑[1-(char[1]-A001906(n))]` -/
def P13328470307906400067.Spec : Prop :=
  ∀ n, P13328470307906400067.a n = A331347 (n + 1)

end A331347

/-! ## A331347.P11248206125269858952

`∑[A001611(2*n)-char[1]]`
-/

namespace A331347.P11248206125269858952
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (2 * n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331347.P11248206125269858952

namespace A331347

/-- `∑[A001611(2*n)-char[1]]` -/
def P11248206125269858952.Spec : Prop :=
  ∀ n, P11248206125269858952.a n = A331347 (n + 1)

end A331347

/-! ## A331347.P18407987150133880523

`∑[A008346(2*n)-char[1]]`
-/

namespace A331347.P18407987150133880523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008346 (2 * n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331347.P18407987150133880523

namespace A331347

/-- `∑[A008346(2*n)-char[1]]` -/
def P18407987150133880523.Spec : Prop :=
  ∀ n, P18407987150133880523.a n = A331347 (n + 1)

end A331347

/-! ## A331347.P409220540452376099

`A052925(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A331347.P409220540452376099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A052925 n + a (n - 1)

end

end A331347.P409220540452376099

namespace A331347

/-- `A052925(n)+a(n-1)` -/
def P409220540452376099.Spec : Prop :=
  ∀ n, P409220540452376099.a n = A331347 (n + 1)

end A331347

/-! ## A331347.P6380447289232422824

`A055588(n)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A331347.P6380447289232422824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A055588 n + a (n - 1)

end

end A331347.P6380447289232422824

namespace A331347

/-- `A055588(n)+a(n-1)` -/
def P6380447289232422824.Spec : Prop :=
  ∀ n, P6380447289232422824.a n = A331347 (n + 1)

end A331347

/-! ## A331347.P8245260203083481332

`A052952(abs(1-2*n))+n`
-/

namespace A331347.P8245260203083481332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052952 |1 - (2 * n : ℤ)|.toNat + (n : ℤ)

end

end A331347.P8245260203083481332

namespace A331347

/-- `A052952(abs(1-2*n))+n` -/
def P8245260203083481332.Spec : Prop :=
  ∀ n, P8245260203083481332.a n = A331347 (n + 1)

end A331347

/-! ## A331347.P6827662981428102597

`∑[A000045(2*n)]+floor(acot(n))+n`
-/

namespace A331347.P6827662981428102597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊SequenceMachineLib.acot (n : ℝ)⌋ + (n : ℤ)

end

end A331347.P6827662981428102597

namespace A331347

/-- `∑[A000045(2*n)]+floor(acot(n))+n` -/
def P6827662981428102597.Spec : Prop :=
  ∀ n, P6827662981428102597.a n = A331347 (n + 1)

end A331347

/-! ## A331347.P13062085335148299845

`A000045(Δ[n²])+(n-1)%(n+1)`
-/

namespace A331347.P13062085335148299845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)

end

end A331347.P13062085335148299845

namespace A331347

/-- `A000045(Δ[n²])+(n-1)%(n+1)` -/
def P13062085335148299845.Spec : Prop :=
  ∀ n, P13062085335148299845.a n = A331347 (n + 1)

end A331347

/-! ## A331347.P11724129816739359610

`A000045(abs(1-n)+n+2)+n-1`
-/

namespace A331347.P11724129816739359610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (|1 - (n : ℤ)| + (n + 2 : ℤ)).toNat + ((n : ℤ) - 1)

end

end A331347.P11724129816739359610

namespace A331347

/-- `A000045(abs(1-n)+n+2)+n-1` -/
def P11724129816739359610.Spec : Prop :=
  ∀ n, P11724129816739359610.a n = A331347 (n + 1)

end A331347

/-! ## A331347.P13474628455553704618

`floor(A000045(2*n+1)+n²/(n+1))`
-/

namespace A331347.P13474628455553704618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (2 * n + 1) : ℚ) + (n ^ 2 : ℚ) / (n + 1 : ℚ)⌋

end

end A331347.P13474628455553704618

namespace A331347

/-- `floor(A000045(2*n+1)+n²/(n+1))` -/
def P13474628455553704618.Spec : Prop :=
  ∀ n, P13474628455553704618.a n = A331347 (n + 1)

end A331347

/-! ## A331347.P9396823646739553477

`A167270(A004273(n))`
-/

namespace A331347.P9396823646739553477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167270 (A004273 n).toNat

end

end A331347.P9396823646739553477

namespace A331347

/-- `A167270(A004273(n))` -/
def P9396823646739553477.Spec : Prop :=
  ∀ n, P9396823646739553477.a n = A331347 (n + 1)

end A331347

/-! ## A331347.P17399837441965567838

`A028310(n)+A027941(n)`
-/

namespace A331347.P17399837441965567838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + A027941 n

end

end A331347.P17399837441965567838

namespace A331347

/-- `A028310(n)+A027941(n)` -/
def P17399837441965567838.Spec : Prop :=
  ∀ n, P17399837441965567838.a n = A331347 (n + 1)

end A331347

/-! ## A331347.P12548900817010250109

`A167270(A028310(2*n)-1)`
-/

namespace A331347.P12548900817010250109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167270 (A028310 (2 * n) - 1).toNat

end

end A331347.P12548900817010250109

namespace A331347

/-- `A167270(A028310(2*n)-1)` -/
def P12548900817010250109.Spec : Prop :=
  ∀ n, P12548900817010250109.a n = A331347 (n + 1)

end A331347

/-! ## A331347.P7639890419903392015

`A065033(2*n)+A027941(n)`
-/

namespace A331347.P7639890419903392015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (2 * n) + A027941 n

end

end A331347.P7639890419903392015

namespace A331347

/-- `A065033(2*n)+A027941(n)` -/
def P7639890419903392015.Spec : Prop :=
  ∀ n, P7639890419903392015.a n = A331347 (n + 1)

end A331347

/-! ## A331347.P16555843117997050890

`A213043(2*n)-A057427(n)`
-/

namespace A331347.P16555843117997050890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213043 (2 * n) - A057427 n

end

end A331347.P16555843117997050890

namespace A331347

/-- `A213043(2*n)-A057427(n)` -/
def P16555843117997050890.Spec : Prop :=
  ∀ n, P16555843117997050890.a n = A331347 (n + 1)

end A331347

/-! ## A331347.P7535524476956969494

`A004273(n)+A122367(n)-n`
-/

namespace A331347.P7535524476956969494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n + (A122367 n - (n : ℤ))

end

end A331347.P7535524476956969494

namespace A331347

/-- `A004273(n)+A122367(n)-n` -/
def P7535524476956969494.Spec : Prop :=
  ∀ n, P7535524476956969494.a n = A331347 (n + 1)

end A331347

/-!
# A331348: Fill an infinite square array by following a spiral around the origin; if the square at position (x, y) is empty then set either T(x, y) = 1 or T(x, y) = T(2*x, 2*y) = 2 such that the RUNS transform of the sequence of values as they are chosen equals the sequence of values as they are visited; first choose the value 1. This sequence corresponds to the values as they are visited.

The programs for A331348, there is no canonical definition to state claims against.
-/

/-! ## A331348.P8696510910310138508

`A321696(C(A285614(n+1), A359237(2*(n+2))))`
-/

namespace A331348.P8696510910310138508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321696 (Nat.choose (A285614 (n + 1)).toNat (A359237 (2 * (n + 2))).toNat)

end

end A331348.P8696510910310138508

/-! ## A331348.P90917900320048408

`A001285(A153875(n)-A202304(n))`
-/

namespace A331348.P90917900320048408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001285 (A153875 n - A202304 n).toNat

end

end A331348.P90917900320048408

/-! ## A331348.P2851574340438298532

`A122497(A185214(n)+A065091(n+1))`
-/

namespace A331348.P2851574340438298532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122497 (A185214 n + A065091 (n + 1)).toNat

end

end A331348.P2851574340438298532

/-! ## A331348.P11684406397215036245

`A006928(A267099(n+1)%A134827(n+2))`
-/

namespace A331348.P11684406397215036245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006928 (Int.tmod (A267099 (n + 1)) (A134827 (n + 2))).toNat

end

end A331348.P11684406397215036245

/-!
# A331349: Fill an infinite square array by following a spiral around the origin; if the square at position (x, y) is empty then set either T(x, y) = 1 or T(x, y) = T(2*x, 2*y) = 2 such that the RUNS transform of the sequence of values as they are chosen equals the sequence of values as they are visited; first choose the value 1. This sequence corresponds to the values as they are chosen.

The programs for A331349, there is no canonical definition to state claims against.
-/

/-! ## A331349.P17827455192746107701

`A000002(A217155(n+1)+A096105(n+1))`
-/

namespace A331349.P17827455192746107701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (A217155 (n + 1) + A096105 (n + 1)).toNat

end

end A331349.P17827455192746107701

/-! ## A331349.P4188370082973616514

`A000002(lt[A377036(n), A025503(n+1)])`
-/

namespace A331349.P4188370082973616514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377036 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025503 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331349.P4188370082973616514

/-! ## A331349.P14547174972281747569

`A000002(∑[A332404(A050449(n+1))])`
-/

namespace A331349.P14547174972281747569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332404 (A050449 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A331349.P14547174972281747569

/-! ## A331349.P14017297434292376564

`A000002(lt[A226393(n+1), A226359(n)])`
-/

namespace A331349.P14017297434292376564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226393 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226359 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331349.P14017297434292376564

/-! ## A331349.P8657883275490094357

`A000002(lt[A129281(n+1), A098176(n+1)])`
-/

namespace A331349.P8657883275490094357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129281 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000002 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A331349.P8657883275490094357

/-!
# A331350: Number of oriented colorings of the edges (or triangular faces) of a regular 4-dimensional simplex with n available colors.

The programs for A331350, the canonical program `A331350.P4206411268132860274` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331350 has offset 1).

The definition of A331350 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331350.P4206411268132860274

`(24*(n+1)²+20*(n+1)^4+15*(n+1)^6+(n+1)^10)/60`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A331350

/-- `(24*(n+1)²+20*(n+1)^4+15*(n+1)^6+(n+1)^10)/60` -/
def P4206411268132860274.Spec : Prop :=
  ∀ n, P4206411268132860274.a n = (A331350 (n + 1) : ℚ)

end A331350

/-! ## A331350.P14656525790467351761

`2*A331352(n+1)+A331353(n+1)`
-/

namespace A331350.P14656525790467351761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331352 (n + 1) + A331353 (n + 1)

end

end A331350.P14656525790467351761

namespace A331350

/-- `2*A331352(n+1)+A331353(n+1)` -/
def P14656525790467351761.Spec : Prop :=
  ∀ n, P14656525790467351761.a n = A331350 (n + 1)

end A331350

/-! ## A331350.P11039038337654373971

`A063843(n+1)+A331352(n+1)`
-/

namespace A331350.P11039038337654373971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063843 (n + 1) + A331352 (n + 1)

end

end A331350.P11039038337654373971

namespace A331350

/-- `A063843(n+1)+A331352(n+1)` -/
def P11039038337654373971.Spec : Prop :=
  ∀ n, P11039038337654373971.a n = A331350 (n + 1)

end A331350

/-! ## A331350.P14108920263773088903

`2*A063843(n+1)-A331353(n+1)`
-/

namespace A331350.P14108920263773088903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063843 (n + 1) - A331353 (n + 1)

end

end A331350.P14108920263773088903

namespace A331350

/-- `2*A063843(n+1)-A331353(n+1)` -/
def P14108920263773088903.Spec : Prop :=
  ∀ n, P14108920263773088903.a n = A331350 (n + 1)

end A331350

/-! ## A331350.P1410051778061226891

`A331352(n+1)+∑[A100788(n)]`
-/

namespace A331350.P1410051778061226891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331352 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331350.P1410051778061226891

namespace A331350

/-- `A331352(n+1)+∑[A100788(n)]` -/
def P1410051778061226891.Spec : Prop :=
  ∀ n, P1410051778061226891.a n = A331350 (n + 1)

end A331350

/-! ## A331350.P12889855218626333544

`∑[2*A100788(n)]-A331353(n+1)`
-/

namespace A331350.P12889855218626333544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A331353 (n + 1)

end

end A331350.P12889855218626333544

namespace A331350

/-- `∑[2*A100788(n)]-A331353(n+1)` -/
def P12889855218626333544.Spec : Prop :=
  ∀ n, P12889855218626333544.a n = A331350 (n + 1)

end A331350

/-! ## A331350.P8269296371951616394

`∑[A100788(n)]+A063843(n+1)-A331353(n+1)`
-/

namespace A331350.P8269296371951616394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A063843 (n + 1) - A331353 (n + 1))

end

end A331350.P8269296371951616394

namespace A331350

/-- `∑[A100788(n)]+A063843(n+1)-A331353(n+1)` -/
def P8269296371951616394.Spec : Prop :=
  ∀ n, P8269296371951616394.a n = A331350 (n + 1)

end A331350

/-! ## A331350.P9637528713349495166

`A063843(A000027(n+1))+A063843(n+1)-A331353(n+1)`
-/

namespace A331350.P9637528713349495166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063843 (A000027 (n + 1)).toNat + (A063843 (n + 1) - A331353 (n + 1))

end

end A331350.P9637528713349495166

namespace A331350

/-- `A063843(A000027(n+1))+A063843(n+1)-A331353(n+1)` -/
def P9637528713349495166.Spec : Prop :=
  ∀ n, P9637528713349495166.a n = A331350 (n + 1)

end A331350

/-!
# A331351: Number of achiral colorings of the edges of a cube or regular octahedron.

The programs for A331351, the canonical program `A331351.P17938745476340841895` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331351 has offset 1).

The definition of A331351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331351.P17938745476340841895

`(8*(n+1)²+6*(n+1)^3+(n+1)^6+6*(n+1)^7+3*(n+1)^8)/24`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A331351

/-- `(8*(n+1)²+6*(n+1)^3+(n+1)^6+6*(n+1)^7+3*(n+1)^8)/24` -/
def P17938745476340841895.Spec : Prop :=
  ∀ n, P17938745476340841895.a n = (A331351 (n + 1) : ℚ)

end A331351

/-! ## A331351.P11574975209655370174

`A199406(n+1)-A337406(n+1)`
-/

namespace A331351.P11574975209655370174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A199406 (n + 1) - A337406 (n + 1)

end

end A331351.P11574975209655370174

namespace A331351

/-- `A199406(n+1)-A337406(n+1)` -/
def P11574975209655370174.Spec : Prop :=
  ∀ n, P11574975209655370174.a n = A331351 (n + 1)

end A331351

/-! ## A331351.P9328170094405292702

`2*A199406(n+1)-A060530(n+1)`
-/

namespace A331351.P9328170094405292702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199406 (n + 1) - A060530 (n + 1)

end

end A331351.P9328170094405292702

namespace A331351

/-- `2*A199406(n+1)-A060530(n+1)` -/
def P9328170094405292702.Spec : Prop :=
  ∀ n, P9328170094405292702.a n = A331351 (n + 1)

end A331351

/-! ## A331351.P9957422572145894937

`A060530(n+1)-2*A337406(n+1)`
-/

namespace A331351.P9957422572145894937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060530 (n + 1) - 2 * A337406 (n + 1)

end

end A331351.P9957422572145894937

namespace A331351

/-- `A060530(n+1)-2*A337406(n+1)` -/
def P9957422572145894937.Spec : Prop :=
  ∀ n, P9957422572145894937.a n = A331351 (n + 1)

end A331351

/-! ## A331351.P4610522924581843629

`2*A199406(n+1)-∑[A100794(n)]`
-/

namespace A331351.P4610522924581843629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A199406 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331351.P4610522924581843629

namespace A331351

/-- `2*A199406(n+1)-∑[A100794(n)]` -/
def P4610522924581843629.Spec : Prop :=
  ∀ n, P4610522924581843629.a n = A331351 (n + 1)

end A331351

/-! ## A331351.P8512281606942034681

`∑[A100794(n)]-2*A337406(n+1)`
-/

namespace A331351.P8512281606942034681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2 * A337406 (n + 1)

end

end A331351.P8512281606942034681

namespace A331351

/-- `∑[A100794(n)]-2*A337406(n+1)` -/
def P8512281606942034681.Spec : Prop :=
  ∀ n, P8512281606942034681.a n = A331351 (n + 1)

end A331351

/-!
# A331352: Number of chiral pairs of colorings of the edges (or triangular faces) of a regular 4-dimensional simplex with n available colors.

The programs for A331352, the canonical program `A331352.P9709196328606894863` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331352 has offset 1).

The definition of A331352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331352.P9737344568285586656

`(A331350(n+1)-A331353(n+1))/2`
-/

namespace A331352.P9737344568285586656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A331350 (n + 1) - A331353 (n + 1) : ℚ) / 2

end

end A331352.P9737344568285586656

namespace A331352

/-- `(A331350(n+1)-A331353(n+1))/2` -/
def P9737344568285586656.Spec : Prop :=
  ∀ n, P9737344568285586656.a n = (A331352 (n + 1) : ℚ)

theorem P9737344568285586656.correct : P9737344568285586656.Spec := by
  intro n
  simp only [A331352, Nat.add_sub_cancel, A331352.P9737344568285586656.a, A331352.P9709196328606894863.a, A063843, A063843.P8757640975091430616.a, A331350, A331350.P4206411268132860274.a, A331353, A331353.P18324294681179518771.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A331352

/-! ## A331352.P12700815003341813586

`A063843(n+1)-A331353(n+1)`
-/

namespace A331352.P12700815003341813586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063843 (n + 1) - A331353 (n + 1)

end

end A331352.P12700815003341813586

namespace A331352

/-- `A063843(n+1)-A331353(n+1)` -/
def P12700815003341813586.Spec : Prop :=
  ∀ n, P12700815003341813586.a n = A331352 (n + 1)

theorem P12700815003341813586.correct : P12700815003341813586.Spec := by
  intro n
  simp only [A331352, Nat.add_sub_cancel, A331352.P12700815003341813586.a, A331352.P9709196328606894863.a, A063843, A063843.P8757640975091430616.a, A331350, A331350.P4206411268132860274.a, A331353, A331353.P18324294681179518771.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A331352

/-! ## A331352.P9709196328606894863

`A331350(n+1)-A063843(n+1)`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A331352

/-- `A331350(n+1)-A063843(n+1)` -/
def P9709196328606894863.Spec : Prop :=
  ∀ n, P9709196328606894863.a n = A331352 (n + 1)

theorem P9709196328606894863.correct : P9709196328606894863.Spec := by
  intro n
  simp only [A331352, Nat.add_sub_cancel]

end A331352

/-! ## A331352.P5065384728456580897

`A331350(n+1)-∑[A100788(n)]`
-/

namespace A331352.P5065384728456580897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331350 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331352.P5065384728456580897

namespace A331352

/-- `A331350(n+1)-∑[A100788(n)]` -/
def P5065384728456580897.Spec : Prop :=
  ∀ n, P5065384728456580897.a n = A331352 (n + 1)

end A331352

/-! ## A331352.P17628500623793905167

`∑[A100788(n)]-A331353(n+1)`
-/

namespace A331352.P17628500623793905167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A331353 (n + 1)

end

end A331352.P17628500623793905167

namespace A331352

/-- `∑[A100788(n)]-A331353(n+1)` -/
def P17628500623793905167.Spec : Prop :=
  ∀ n, P17628500623793905167.a n = A331352 (n + 1)

end A331352

/-! ## A331352.P1800499165227634301

`A331350(n+1)%A063843(A000027(n+1))`
-/

namespace A331352.P1800499165227634301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A331350 (n + 1)) (A063843 (A000027 (n + 1)).toNat)

end

end A331352.P1800499165227634301

namespace A331352

/-- `A331350(n+1)%A063843(A000027(n+1))` -/
def P1800499165227634301.Spec : Prop :=
  ∀ n, P1800499165227634301.a n = A331352 (n + 1)

end A331352

/-!
# A331353: Number of achiral colorings of the edges (or triangular faces) of a regular 4-dimensional simplex with n available colors.

The programs for A331353, the canonical program `A331353.P18324294681179518771` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331353 has offset 1).

The definition of A331353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331353.P15964135491343450979

`(5*(n+1)^3+(n+1)^7)/6`
-/

namespace A331353.P15964135491343450979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * (n + 1) ^ 3 + (n + 1) ^ 7 : ℚ) / 6

end

end A331353.P15964135491343450979

namespace A331353

/-- `(5*(n+1)^3+(n+1)^7)/6` -/
def P15964135491343450979.Spec : Prop :=
  ∀ n, P15964135491343450979.a n = (A331353 (n + 1) : ℚ)

end A331353

/-! ## A331353.P18324294681179518771

`A331350(n+1)-2*A331352(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A331353

/-- `A331350(n+1)-2*A331352(n+1)` -/
def P18324294681179518771.Spec : Prop :=
  ∀ n, P18324294681179518771.a n = A331353 (n + 1)

theorem P18324294681179518771.correct : P18324294681179518771.Spec := by
  intro n
  simp only [A331353, Nat.add_sub_cancel]

end A331353

/-! ## A331353.P16079417371676480869

`A063843(n+1)-A331352(n+1)`
-/

namespace A331353.P16079417371676480869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063843 (n + 1) - A331352 (n + 1)

end

end A331353.P16079417371676480869

namespace A331353

/-- `A063843(n+1)-A331352(n+1)` -/
def P16079417371676480869.Spec : Prop :=
  ∀ n, P16079417371676480869.a n = A331353 (n + 1)

theorem P16079417371676480869.correct : P16079417371676480869.Spec := by
  intro n
  simp only [A331353, Nat.add_sub_cancel, A331353.P16079417371676480869.a, A331353.P18324294681179518771.a, A063843, A063843.P8757640975091430616.a, A331350, A331350.P4206411268132860274.a, A331352, A331352.P9709196328606894863.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A331353

/-! ## A331353.P1965180138345635983

`2*A063843(n+1)-A331350(n+1)`
-/

namespace A331353.P1965180138345635983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A063843 (n + 1) - A331350 (n + 1)

end

end A331353.P1965180138345635983

namespace A331353

/-- `2*A063843(n+1)-A331350(n+1)` -/
def P1965180138345635983.Spec : Prop :=
  ∀ n, P1965180138345635983.a n = A331353 (n + 1)

theorem P1965180138345635983.correct : P1965180138345635983.Spec := by
  intro n
  simp only [A331353, Nat.add_sub_cancel, A331353.P1965180138345635983.a, A331353.P18324294681179518771.a, A063843, A063843.P8757640975091430616.a, A331350, A331350.P4206411268132860274.a, A331352, A331352.P9709196328606894863.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A331353

/-! ## A331353.P17624247736661094664

`∑[A100788(n)]-A331352(n+1)`
-/

namespace A331353.P17624247736661094664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A331352 (n + 1)

end

end A331353.P17624247736661094664

namespace A331353

/-- `∑[A100788(n)]-A331352(n+1)` -/
def P17624247736661094664.Spec : Prop :=
  ∀ n, P17624247736661094664.a n = A331353 (n + 1)

end A331353

/-! ## A331353.P319488923086039311

`∑[2*A100788(n)]-A331350(n+1)`
-/

namespace A331353.P319488923086039311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A331350 (n + 1)

end

end A331353.P319488923086039311

namespace A331353

/-- `∑[2*A100788(n)]-A331350(n+1)` -/
def P319488923086039311.Spec : Prop :=
  ∀ n, P319488923086039311.a n = A331353 (n + 1)

end A331353

/-! ## A331353.P12520013137133516380

`∑[A100788(n)]-(A331350(n+1)-A063843(n+1))`
-/

namespace A331353.P12520013137133516380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A331350 (n + 1) - A063843 (n + 1))

end

end A331353.P12520013137133516380

namespace A331353

/-- `∑[A100788(n)]-(A331350(n+1)-A063843(n+1))` -/
def P12520013137133516380.Spec : Prop :=
  ∀ n, P12520013137133516380.a n = A331353 (n + 1)

end A331353

/-! ## A331353.P6084647002345049076

`(n+1)*(A000292(A005563(n))+(n+1)²)`
-/

namespace A331353.P6084647002345049076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000292 (A005563 n).toNat + ((n + 1) ^ 2 : ℤ))

end

end A331353.P6084647002345049076

namespace A331353

/-- `(n+1)*(A000292(A005563(n))+(n+1)²)` -/
def P6084647002345049076.Spec : Prop :=
  ∀ n, P6084647002345049076.a n = A331353 (n + 1)

end A331353

/-! ## A331353.P2373729065439632631

`(n+1)*(A000292(A002378(n)+n)+(n+1)²)`
-/

namespace A331353.P2373729065439632631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000292 (A002378 n + (n : ℤ)).toNat + ((n + 1) ^ 2 : ℤ))

end

end A331353.P2373729065439632631

namespace A331353

/-- `(n+1)*(A000292(A002378(n)+n)+(n+1)²)` -/
def P2373729065439632631.Spec : Prop :=
  ∀ n, P2373729065439632631.a n = A331353 (n + 1)

end A331353

/-! ## A331353.P9387995257853023052

`(n+1)*(A000292(n*(n+2))+record[A051494(n)])`
-/

namespace A331353.P9387995257853023052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A000292 (n * (n + 2)) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A331353.P9387995257853023052

namespace A331353

/-- `(n+1)*(A000292(n*(n+2))+record[A051494(n)])` -/
def P9387995257853023052.Spec : Prop :=
  ∀ n, P9387995257853023052.a n = A331353 (n + 1)

end A331353

/-! ## A331353.P9803705143458888137

`A000578(n+1)+(n+1)*A000292(A005563(n))`
-/

namespace A331353.P9803705143458888137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (n + 1) + (n + 1 : ℤ) * A000292 (A005563 n).toNat

end

end A331353.P9803705143458888137

namespace A331353

/-- `A000578(n+1)+(n+1)*A000292(A005563(n))` -/
def P9803705143458888137.Spec : Prop :=
  ∀ n, P9803705143458888137.a n = A331353 (n + 1)

end A331353

/-!
# A331354: Number of oriented colorings of the edges of a regular 4-dimensional orthoplex with n available colors.

The programs for A331354, there is no canonical definition to state claims against.
-/

/-! ## A331354.P6631264845330830600

`A331355(n+1)+A331356(n+1)`
-/

namespace A331354.P6631264845330830600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331355 (n + 1) + A331356 (n + 1)

end

end A331354.P6631264845330830600

/-!
# A331355: Number of unoriented colorings of the edges of a regular 4-dimensional orthoplex with n available colors.

The programs for A331355, there is no canonical definition to state claims against.
-/

/-! ## A331355.P10721199298892669916

`A331356(n+1)+A331357(n+1)`
-/

namespace A331355.P10721199298892669916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331356 (n + 1) + A331357 (n + 1)

end

end A331355.P10721199298892669916

/-! ## A331355.P11986714603853066305

`A331354(n+1)-A331356(n+1)`
-/

namespace A331355.P11986714603853066305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331354 (n + 1) - A331356 (n + 1)

end

end A331355.P11986714603853066305

/-!
# A331356: Number of chiral pairs of colorings of the edges of a regular 4-dimensional orthoplex with n available colors.

The programs for A331356, there is no canonical definition to state claims against.
-/

/-! ## A331356.P7465489603498752757

`A331354(n+1)-A331355(n+1)`
-/

namespace A331356.P7465489603498752757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331354 (n + 1) - A331355 (n + 1)

end

end A331356.P7465489603498752757

/-! ## A331356.P14336633340502884170

`A331355(n+1)-A331357(n+1)`
-/

namespace A331356.P14336633340502884170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331355 (n + 1) - A331357 (n + 1)

end

end A331356.P14336633340502884170

/-!
# A331357: Number of achiral colorings of the edges of a regular 4-dimensional orthoplex with n available colors.

The programs for A331357, there is no canonical definition to state claims against.
-/

/-! ## A331357.P9396475540776501013

`A331355(n+1)-A331356(n+1)`
-/

namespace A331357.P9396475540776501013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331355 (n + 1) - A331356 (n + 1)

end

end A331357.P9396475540776501013

/-! ## A331357.P9298440290344250558

`2*A331355(n+1)-A331354(n+1)`
-/

namespace A331357.P9298440290344250558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A331355 (n + 1) - A331354 (n + 1)

end

end A331357.P9298440290344250558

/-! ## A331357.P10909806092660935344

`A331354(n+1)-2*A331356(n+1)`
-/

namespace A331357.P10909806092660935344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331354 (n + 1) - 2 * A331356 (n + 1)

end

end A331357.P10909806092660935344

/-! ## A331357.P16334479687773011723

`A331355(A000027(n+1))-(A331354(n+1)-A331355(n+1))`
-/

namespace A331357.P16334479687773011723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331355 (A000027 (n + 1)).toNat - (A331354 (n + 1) - A331355 (n + 1))

end

end A331357.P16334479687773011723

/-! ## A331357.P9407028166262698843

`A331354(n+1)-A331356(n+1)-A331356(A000027(n+1))`
-/

namespace A331357.P9407028166262698843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331354 (n + 1) - A331356 (n + 1) - A331356 (A000027 (n + 1)).toNat

end

end A331357.P9407028166262698843

/-!
# A331361: Number of achiral colorings of the edges of a tesseract with n available colors.

The programs for A331361, the canonical program `A331361.P17243829290090065711` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331361 has offset 1).

The definition of A331361 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331361.P17243829290090065711

`(2*(n+1)^6+8*(n+1)^8+(n+1)^16+(n+1)^20)/12`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A331361

/-- `(2*(n+1)^6+8*(n+1)^8+(n+1)^16+(n+1)^20)/12` -/
def P17243829290090065711.Spec : Prop :=
  ∀ n, P17243829290090065711.a n = (A331361 (n + 1) : ℚ)

end A331361

/-!
# A331362: a(n) is the greatest value of the form s_1 + ... + s_k such that the concatenation of the binary representations of s_1^2, ..., s_k^2 equals the binary representation of n.

The programs for A331362, there is no canonical definition to state claims against.
-/

/-! ## A331362.P14160991118553096564

`A001221(A293216(A000010(2*(n+1))))`
-/

namespace A331362.P14160991118553096564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A293216 (A000010 (2 * (n + 1))).toNat).toNat

end

end A331362.P14160991118553096564

/-! ## A331362.P7068092755251390268

`A033265(A062570(n+1)%A201269(n+1))`
-/

namespace A331362.P7068092755251390268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033265 (Int.tmod (A062570 (n + 1)) (A201269 (n + 1))).toNat

end

end A331362.P7068092755251390268

/-! ## A331362.P2838105235411478078

`A033265(A062570(n+1))%A329168(n+1)`
-/

namespace A331362.P2838105235411478078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033265 (A062570 (n + 1)).toNat) (A329168 (n + 1))

end

end A331362.P2838105235411478078

/-! ## A331362.P7543205482722885101

`A341995(A220527(n))+A001222(A062570(n+1))`
-/

namespace A331362.P7543205482722885101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341995 (A220527 n).toNat + A001222 (A062570 (n + 1)).toNat

end

end A331362.P7543205482722885101

/-! ## A331362.P7298579813321833832

`A358333(lcm(A008284(n+1), A357134(n)))`
-/

namespace A331362.P7298579813321833832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358333 (Int.lcm (A008284 (n + 1)) (A357134 n))

end

end A331362.P7298579813321833832

/-!
# A331363: Pairs of coordinates of the corners in a counterclockwise triangular spiral.

The programs for A331363, there is no canonical definition to state claims against.
-/

/-! ## A331363.P2560910227902811708

`A206735(n)-A182485(A085209(n))`
-/

namespace A331363.P2560910227902811708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206735 n - A182485 (A085209 n).toNat

end

end A331363.P2560910227902811708

/-!
# A331365: Least k whose set of divisors contains exactly n Pythagorean quadruples, or 0 if no such k exists.

The programs for A331365, there is no canonical definition to state claims against.
-/

/-! ## A331365.P3781436204000647986

`record[42*A086087(n+2)]`
-/

namespace A331365.P3781436204000647986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  42 * A086087 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331365.P3781436204000647986

/-!
# A331366: Number of Heronian triangles with mutually distinct side lengths and perimeter A334665(n).

The programs for A331366, there is no canonical definition to state claims against.
-/

/-! ## A331366.P12285704867258880153

`Δ[record[A024153(n+2)-a(n-1)]]` with `a(0)=1`
-/

namespace A331366.P12285704867258880153
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A024153 (n + 2) - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A331366.P12285704867258880153

/-! ## A331366.P12346900232344576577

`A024153(lt[0, A024153(n+1)]+1)`
-/

namespace A331366.P12346900232344576577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024153 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A331366.P12346900232344576577

/-! ## A331366.P6342435020356197788

`A024153(comp[n*(1-A024153(n+1))]+1)`
-/

namespace A331366.P6342435020356197788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (1 - A024153 (n + 1))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024153 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A331366.P6342435020356197788

/-! ## A331366.P15989483960158016061

`A024153(∪[A331367(n+1), A333945(n+1)])`
-/

namespace A331366.P15989483960158016061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333945 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024153 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A331366.P15989483960158016061

/-! ## A331366.P8285064542386311848

`A024153(A334665(n+1))`
-/

namespace A331366.P8285064542386311848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024153 (A334665 (n + 1)).toNat

end

end A331366.P8285064542386311848

/-!
# A331367: Perimeters of primitive Heronian triangles with mutually distinct side lengths.

The programs for A331367, there is no canonical definition to state claims against.
-/

/-! ## A331367.P17180099806214494804

`lt[A196272(n), A024153(n+1)]+1`
-/

namespace A331367.P17180099806214494804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196272 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024153 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A331367.P17180099806214494804

/-! ## A331367.P1246011605275241583

`A334989(comp[Δ[A022173(n)]])`
-/

namespace A331367.P1246011605275241583
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022173 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334989 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A331367.P1246011605275241583

/-! ## A331367.P13235610142377112335

`A334665(comp[A007261(n)]+1)`
-/

namespace A331367.P13235610142377112335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007261 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334665 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A331367.P13235610142377112335

/-! ## A331367.P12492034709830452189

`∩[A096468(n+1), A334665(n+1)]`
-/

namespace A331367.P12492034709830452189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334665 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331367.P12492034709830452189

/-! ## A331367.P513439457137561807

`∩[A334665(n+1), A334989(n+1)]`
-/

namespace A331367.P513439457137561807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334665 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A331367.P513439457137561807

/-! ## A331367.P1198817609545371894

`A334665(comp[∑[A068413(n)-3]+n]+1)`
-/

namespace A331367.P1198817609545371894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068413 n - 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334665 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A331367.P1198817609545371894

/-! ## A331367.P8146567144668883412

`A334989(record[A112689(A071975(n+1))])`
-/

namespace A331367.P8146567144668883412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112689 (A071975 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334989 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A331367.P8146567144668883412

/-!
# A331368: Number of primitive Heronian triangles with mutually distinct side lengths and perimeter A331367(n).

The programs for A331368, there is no canonical definition to state claims against.
-/

/-! ## A331368.P17476929182432640564

`A098219(A120882(A028412(n))²)`
-/

namespace A331368.P17476929182432640564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098219 (A120882 (A028412 n).toNat ^ 2).toNat

end

end A331368.P17476929182432640564

/-! ## A331368.P13778190047074827431

`gcd(A236307(3*n+4), A301714(A195581(n)))`
-/

namespace A331368.P13778190047074827431
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A236307 (3 * n + 4)) (A301714 (A195581 n).toNat)

end

end A331368.P13778190047074827431

/-! ## A331368.P16742651338331297767

`A050433(A328386(n+1)+A048675(2*n+3))`
-/

namespace A331368.P16742651338331297767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050433 (A328386 (n + 1) + A048675 (2 * n + 3)).toNat

end

end A331368.P16742651338331297767

/-!
# A331371: Numbers k such that k and k+1 are both half-Zumkeller numbers (A246198).

The programs for A331371, there is no canonical definition to state claims against.
-/

/-! ## A331371.P18100307392724234071

`A185048(A246199(n+1))`
-/

namespace A331371.P18100307392724234071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185048 (A246199 (n + 1)).toNat

end

end A331371.P18100307392724234071

/-! ## A331371.P1199579611292002178

`A335024(A246199(n+1)-2)`
-/

namespace A331371.P1199579611292002178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335024 (A246199 (n + 1) - 2).toNat

end

end A331371.P1199579611292002178

/-! ## A331371.P18030918375395834877

`A004277(floor(A246199(n+1)/2))`
-/

namespace A331371.P18030918375395834877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 ⌊(A246199 (n + 1) : ℚ) / 2⌋.toNat

end

end A331371.P18030918375395834877

/-! ## A331371.P12356690013831777417

`A004277((A246199(n+1)-1)/2)`
-/

namespace A331371.P12356690013831777417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway ((A246199 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A331371.P12356690013831777417

/-!
# A331376: Dirichlet convolution of the reduced totient function with itself.

The programs for A331376, there is no canonical definition to state claims against.
-/

/-! ## A331376.P17059915824761620220

`∑{d}[n+1, A002322(#)*A002322((n+1)/#)]`
-/

namespace A331376.P17059915824761620220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002322 d * A002322 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A331376.P17059915824761620220

/-! ## A331376.P12476145542605420987

`∑{d}[n+1, A141258(#)*A369700((n+1)/#)]`
-/

namespace A331376.P12476145542605420987
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A141258 d * A369700 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A331376.P12476145542605420987

/-! ## A331376.P16095948219991503902

`or(A166632(n+1), A209229(A217941(n+1)))`
-/

namespace A331376.P16095948219991503902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A166632 (n + 1)) (A209229 (A217941 (n + 1)).toNat)

end

end A331376.P16095948219991503902

/-! ## A331376.P15334731577794983558

`A166632(n+1)-A008683(A059611(3*n+2))`
-/

namespace A331376.P15334731577794983558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166632 (n + 1) - A008683 (A059611 (3 * n + 2)).toNat

end

end A331376.P15334731577794983558

/-! ## A331376.P11486491004893476056

`A166632(n+1)+A003982(A209621(n))`
-/

namespace A331376.P11486491004893476056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166632 (n + 1) + A003982 (A209621 n).toNat

end

end A331376.P11486491004893476056

/-!
# A331382: Numbers whose sum of prime factors is divisible by their product of prime indices.

The programs for A331382, there is no canonical definition to state claims against.
-/

/-! ## A331382.P17018620789060886189

`record[and(A029221(n), A285408(n))]`
-/

namespace A331382.P17018620789060886189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A029221 n) (A285408 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331382.P17018620789060886189

/-! ## A331382.P14927438983108756248

`record[and(A280969(n+1), A299532(n))]`
-/

namespace A331382.P14927438983108756248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A280969 (n + 1)) (A299532 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331382.P14927438983108756248

/-! ## A331382.P4189921314857958253

`record[and(A035231(n+1), A035280(n+1))]`
-/

namespace A331382.P4189921314857958253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035231 (n + 1)) (A035280 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331382.P4189921314857958253

/-! ## A331382.P4589189026193429216

`record[and(A115682(n+1), A252460(n+1))]`
-/

namespace A331382.P4589189026193429216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A115682 (n + 1)) (A252460 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A331382.P4589189026193429216

/-!
# A331384: Numbers whose sum of prime factors is equal to their product of prime indices.

The programs for A331384, there is no canonical definition to state claims against.
-/

/-! ## A331384.P7471992836237548980

`eq[A001414(n+1), A003963(n+1)]+1`
-/

namespace A331384.P7471992836237548980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A331384.P7471992836237548980

/-! ## A331384.P8009765546298889215

`eq[A036288(n+1)-1, A003963(n+1)]+1`
-/

namespace A331384.P8009765546298889215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036288 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A331384.P8009765546298889215

/-! ## A331384.P17229248545115205061

`eq[1-A075255(n+1)+n, A003963(n+1)]+1`
-/

namespace A331384.P17229248545115205061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A075255 (n + 1) + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A331384.P17229248545115205061

/-! ## A331384.P570291802664636668

`A011760(eq[A001414(n+1), A003963(n+1)])`
-/

namespace A331384.P570291802664636668
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A331384.P570291802664636668

/-! ## A331384.P2894445346759780045

`A020725(eq[A001414(n+1), A003963(n+1)])`
-/

namespace A331384.P2894445346759780045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A331384.P2894445346759780045

/-!
# A331385: Irregular triangle read by rows where T(n,k) is the number of integer partitions y of n such that Sum_i prime(y_i) = n + k.

The programs for A331385, there is no canonical definition to state claims against.
-/

/-! ## A331385.P6912980170212760321

`A322583(A175840(n)²)`
-/

namespace A331385.P6912980170212760321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322583 (A175840 n ^ 2).toNat

end

end A331385.P6912980170212760321

/-! ## A331385.P4256474365856736851

`A026729(n)-A037213(A185294(n))`
-/

namespace A331385.P4256474365856736851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026729 n - A037213 (A185294 n).toNat

end

end A331385.P4256474365856736851

/-! ## A331385.P5002175332586591582

`A322583(A175840(n)*A175840(n))`
-/

namespace A331385.P5002175332586591582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322583 (A175840 n * A175840 n).toNat

end

end A331385.P5002175332586591582

/-! ## A331385.P12813160875446629934

`A129612(A135902(n))%A309858(n)`
-/

namespace A331385.P12813160875446629934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129612 (A135902 n).toNat) (A309858 n)

end

end A331385.P12813160875446629934

/-! ## A331385.P12633711085304088223

`A112310(A098158(n)%A242806(n+1))`
-/

namespace A331385.P12633711085304088223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112310 (Int.tmod (A098158 n) (A242806 (n + 1))).toNat

end

end A331385.P12633711085304088223

/-!
# A331386: Numbers with at least one prime prime index.

The programs for A331386, the canonical program `A331386.P7793639357924088570` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331386 has offset 1).

The definition of A331386 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A331386.P14632234318936483853

`lt[1, A322027(n+1)]+1`
-/

namespace A331386.P14632234318936483853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A331386.P14632234318936483853

namespace A331386

/-- `lt[1, A322027(n+1)]+1` -/
def P14632234318936483853.Spec : Prop :=
  ∀ n, (P14632234318936483853.a n : ℤ) = A331386 (n + 1)

end A331386

/-! ## A331386.P7793639357924088570

`comp[A320628(n+1)-1]+1`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A331386

/-- `comp[A320628(n+1)-1]+1` -/
def P7793639357924088570.Spec : Prop :=
  ∀ n, (P7793639357924088570.a n : ℤ) = A331386 (n + 1)

theorem P7793639357924088570.correct : P7793639357924088570.Spec := by
  intro n
  simp only [A331386, Nat.add_sub_cancel]

end A331386

/-! ## A331386.P17454432617084436520

`lt[atan(1), A257994(n+1)]+1`
-/

namespace A331386.P17454432617084436520
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (1 : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 1

end

end A331386.P17454432617084436520

namespace A331386

/-- `lt[atan(1), A257994(n+1)]+1` -/
def P17454432617084436520.Spec : Prop :=
  ∀ n, (P17454432617084436520.a n : ℤ) = A331386 (n + 1)

end A331386

/-! ## A331386.P10695906476010074329

`eq[1, A247889(a(A257994(n)))]` with `a(0)=24`
-/

namespace A331386.P10695906476010074329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [24] fun n f2 =>
  A247889 (f2 (A257994 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331386.P10695906476010074329

namespace A331386

/-- `eq[1, A247889(a(A257994(n)))]` -/
def P10695906476010074329.Spec : Prop :=
  ∀ n, (P10695906476010074329.a n : ℤ) = A331386 (n + 1)

end A331386

/-! ## A331386.P17512270618561696020

`lt[A303828(n)/(n+1), A257994(n+1)]+1`
-/

namespace A331386.P17512270618561696020
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A303828 n : ℚ) / (n + 1 : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n + 1

end

end A331386.P17512270618561696020

namespace A331386

/-- `lt[A303828(n)/(n+1), A257994(n+1)]+1` -/
def P17512270618561696020.Spec : Prop :=
  ∀ n, (P17512270618561696020.a n : ℤ) = A331386 (n + 1)

end A331386

/-! ## A331386.P16220035414496192047

`lt[1, A295665(n+1)]+1`
-/

namespace A331386.P16220035414496192047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295665 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A331386.P16220035414496192047

namespace A331386

/-- `lt[1, A295665(n+1)]+1` -/
def P16220035414496192047.Spec : Prop :=
  ∀ n, (P16220035414496192047.a n : ℤ) = A331386 (n + 1)

end A331386

/-! ## A331386.P7511712419181068784

`lt[1, A360326(n+1)]+1`
-/

namespace A331386.P7511712419181068784
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A331386.P7511712419181068784

namespace A331386

/-- `lt[1, A360326(n+1)]+1` -/
def P7511712419181068784.Spec : Prop :=
  ∀ n, (P7511712419181068784.a n : ℤ) = A331386 (n + 1)

end A331386

/-! ## A331386.P82543375154373800

`lt[1, A360327(n+1)]+1`
-/

namespace A331386.P82543375154373800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360327 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A331386.P82543375154373800

namespace A331386

/-- `lt[1, A360327(n+1)]+1` -/
def P82543375154373800.Spec : Prop :=
  ∀ n, (P82543375154373800.a n : ℤ) = A331386 (n + 1)

end A331386

/-! ## A331386.P1999059162477471591

`lt[A360329(n+1), n]+1`
-/

namespace A331386.P1999059162477471591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360329 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A331386.P1999059162477471591

namespace A331386

/-- `lt[A360329(n+1), n]+1` -/
def P1999059162477471591.Spec : Prop :=
  ∀ n, (P1999059162477471591.a n : ℤ) = A331386 (n + 1)

end A331386

/-! ## A331386.P7281666407566507360

`lt[A360331(n+1), n]+1`
-/

namespace A331386.P7281666407566507360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360331 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A331386.P7281666407566507360

namespace A331386

/-- `lt[A360331(n+1), n]+1` -/
def P7281666407566507360.Spec : Prop :=
  ∀ n, (P7281666407566507360.a n : ℤ) = A331386 (n + 1)

end A331386

/-! ## A331386.P6497595832159393708

`lt[1, A322027(A028310(n))]`
-/

namespace A331386.P6497595832159393708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322027 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A331386.P6497595832159393708

namespace A331386

/-- `lt[1, A322027(A028310(n))]` -/
def P6497595832159393708.Spec : Prop :=
  ∀ n, (P6497595832159393708.a n : ℤ) = A331386 (n + 1)

end A331386

/-! ## A331386.P1693907961554451236

`eq[1, A278493(a(A279952(n)))]` with `a(0)=5`
-/

namespace A331386.P1693907961554451236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A278493 (f2 (A279952 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A331386.P1693907961554451236

namespace A331386

/-- `eq[1, A278493(a(A279952(n)))]` -/
def P1693907961554451236.Spec : Prop :=
  ∀ n, (P1693907961554451236.a n : ℤ) = A331386 (n + 1)

end A331386

/-! ## A331386.P17158648744954194921

`eq[1, A043545(A295665(n+1)²)]+1`
-/

namespace A331386.P17158648744954194921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 (A295665 (n + 1) ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A331386.P17158648744954194921

namespace A331386

/-- `eq[1, A043545(A295665(n+1)²)]+1` -/
def P17158648744954194921.Spec : Prop :=
  ∀ n, (P17158648744954194921.a n : ℤ) = A331386 (n + 1)

end A331386

/-!
# A331387: Number of integer partitions whose sum of primes of parts equals their sum of parts plus n.

The programs for A331387, there is no canonical definition to state claims against.
-/

/-! ## A331387.P12065287193003409101

`∑[A056556(∑[A063834(n)])]`
-/

namespace A331387.P12065287193003409101
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063834 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331387.P12065287193003409101

/-! ## A331387.P12621512780419337631

`∑[A056556(∑[A280746(n)])]`
-/

namespace A331387.P12621512780419337631
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280746 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331387.P12621512780419337631

/-! ## A331387.P16544533135716629581

`∑[A056556(A027375(n+1))]`
-/

namespace A331387.P16544533135716629581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A027375 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331387.P16544533135716629581

/-! ## A331387.P7556254130217622455

`∑[A056556(A038199(n+1))]`
-/

namespace A331387.P7556254130217622455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056556 (A038199 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331387.P7556254130217622455

/-! ## A331387.P9740023600782406875

`A351846(A058102(n))`
-/

namespace A331387.P9740023600782406875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A058102 n).toNat

end

end A331387.P9740023600782406875

/-!
# A331388: a(n) = Sum_{k=1..n} mu(gcd(n, k)) * k / gcd(n, k).

The programs for A331388, there is no canonical definition to state claims against.
-/

/-! ## A331388.P11622043450485330136

`(A063445(n+1)+A008683(n+1))/2`
-/

namespace A331388.P11622043450485330136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A063445 (n + 1) + A008683 (n + 1) : ℚ) / 2

end

end A331388.P11622043450485330136

/-! ## A331388.P11473980140334711738

`∑{d}[n+1, A008683(#)*A023896((n+1)/#)]`
-/

namespace A331388.P11473980140334711738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A023896 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A331388.P11473980140334711738

/-! ## A331388.P4798991120238240125

`∑{d}[n+1, A007438(#)*A055615((n+1)/#)]`
-/

namespace A331388.P4798991120238240125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007438 d * A055615 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A331388.P4798991120238240125

/-! ## A331388.P10754541145041392008

`∑{d}[n+1, A007427(#)*A057661((n+1)/#)]`
-/

namespace A331388.P10754541145041392008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007427 d * A057661 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A331388.P10754541145041392008

/-! ## A331388.P16628721899141900662

`∑{d}[n+1, A007434(#)*A125287((n+1)/#)]`
-/

namespace A331388.P16628721899141900662
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007434 d * A125287 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A331388.P16628721899141900662

/-! ## A331388.P5108089051813074957

`∑{d}[n+1, A023900(#)*A326828((n+1)/#)]`
-/

namespace A331388.P5108089051813074957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A326828 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A331388.P5108089051813074957

/-! ## A331388.P2706103622224351191

`∑{d}[n+1, A053822(#)*A344510((n+1)/#)]`
-/

namespace A331388.P2706103622224351191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A053822 d * A344510 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A331388.P2706103622224351191

/-! ## A331388.P4975515688063477854

`∑{d}[n+1, A158523(#)*A390806((n+1)/#)]`
-/

namespace A331388.P4975515688063477854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A158523 d * A390806 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A331388.P4975515688063477854

/-! ## A331388.P5977784929684496654

`∑{d}[n+1, A195094(#)*A359484((n+1)/#)]`
-/

namespace A331388.P5977784929684496654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A195094 d * A359484 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A331388.P5977784929684496654

/-! ## A331388.P6939348501902872343

`∑{d}[n+1, A309731(#)*A327960((n+1)/#)]`
-/

namespace A331388.P6939348501902872343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A309731 d * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A331388.P6939348501902872343

/-!
# A331389: Number of binary matrices with n distinct columns and any number of nonzero rows with 3 ones in every column and rows in nonincreasing lexicographic order.

The programs for A331389, there is no canonical definition to state claims against.
-/

/-! ## A331389.P101670067636183346

`A331126(A167614(n+2))`
-/

namespace A331389.P101670067636183346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331126 (A167614 (n + 2)).toNat

end

end A331389.P101670067636183346

/-! ## A331389.P9972282297405419924

`A331126(A052905(n)+8)`
-/

namespace A331389.P9972282297405419924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331126 (A052905 n + 8).toNat

end

end A331389.P9972282297405419924

/-! ## A331389.P15805073259489906882

`A331126(eq[3, A002262(n)])`
-/

namespace A331389.P15805073259489906882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331126 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331389.P15805073259489906882

/-! ## A331389.P5695611039293142984

`A331126(eq[3, A140207(n)])`
-/

namespace A331389.P5695611039293142984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140207 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331126 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A331389.P5695611039293142984

/-! ## A331389.P1345465317337411987

`A331126(A340266(n+2)+1)`
-/

namespace A331389.P1345465317337411987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331126 (A340266 (n + 2) + 1).toNat

end

end A331389.P1345465317337411987

/-!
# A331390: Number of binary matrices with 3 distinct columns and any number of nonzero rows with n ones in every column and rows in nonincreasing lexicographic order.

The programs for A331390, the canonical program `A331390.P5190678801672034842` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331390 has offset 1).

The definition of A331390 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331390.P5190678801672034842

`round(((n+3)/2)^4)-3*(n+2)+2`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A331390

/-- `round(((n+3)/2)^4)-3*(n+2)+2` -/
def P5190678801672034842.Spec : Prop :=
  ∀ n, P5190678801672034842.a n = A331390 (n + 1)

theorem P5190678801672034842.correct : P5190678801672034842.Spec := by
  intro n
  simp only [A331390, Nat.add_sub_cancel]

end A331390

/-! ## A331390.P4756577268994192361

`∑[A248851(n+1)-2]`
-/

namespace A331390.P4756577268994192361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248851 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331390.P4756577268994192361

namespace A331390

/-- `∑[A248851(n+1)-2]` -/
def P4756577268994192361.Spec : Prop :=
  ∀ n, P4756577268994192361.a n = A331390 (n + 1)

end A331390

/-! ## A331390.P8077375915375508581

`∑[A077043(n+2)+a(n-1)]` with `a(0)=1`
-/

namespace A331390.P8077375915375508581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A077043 (n + 2) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331390.P8077375915375508581

namespace A331390

/-- `∑[A077043(n+2)+a(n-1)]` -/
def P8077375915375508581.Spec : Prop :=
  ∀ n, P8077375915375508581.a n = A331390 (n + 1)

end A331390

/-! ## A331390.P13277914215398393596

`∑[A019298(n+2)-3]`
-/

namespace A331390.P13277914215398393596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019298 (n + 2) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331390.P13277914215398393596

namespace A331390

/-- `∑[A019298(n+2)-3]` -/
def P13277914215398393596.Spec : Prop :=
  ∀ n, P13277914215398393596.a n = A331390 (n + 1)

end A331390

/-! ## A331390.P13676503488271973259

`∑[∑[∑[A133223(n+2)]]-2]`
-/

namespace A331390.P13676503488271973259
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133223 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331390.P13676503488271973259

namespace A331390

/-- `∑[∑[∑[A133223(n+2)]]-2]` -/
def P13676503488271973259.Spec : Prop :=
  ∀ n, P13676503488271973259.a n = A331390 (n + 1)

end A331390

/-! ## A331390.P11948058805225256242

`∑[∑[A001399(3*(n+1))]-2]`
-/

namespace A331390.P11948058805225256242
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (3 * (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331390.P11948058805225256242

namespace A331390

/-- `∑[∑[A001399(3*(n+1))]-2]` -/
def P11948058805225256242.Spec : Prop :=
  ∀ n, P11948058805225256242.a n = A331390 (n + 1)

end A331390

/-! ## A331390.P2105080470927703957

`∑[A117143(3*(n+1))-2]`
-/

namespace A331390.P2105080470927703957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117143 (3 * (n + 1)) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331390.P2105080470927703957

namespace A331390

/-- `∑[A117143(3*(n+1))-2]` -/
def P2105080470927703957.Spec : Prop :=
  ∀ n, P2105080470927703957.a n = A331390 (n + 1)

end A331390

/-!
# A331392: Sum, over all binary strings w of length n, of the length of the shortest border of w.

The programs for A331392, there is no canonical definition to state claims against.
-/

/-! ## A331392.P11849390917972463986

`2*A109832(a(n-1)+2)` with `a(0)=0`
-/

namespace A331392.P11849390917972463986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  2 * A109832 (a (n - 1) + 2).toNat

end

end A331392.P11849390917972463986

/-! ## A331392.P1990434500825624599

`2*A118759(A100071(n))`
-/

namespace A331392.P1990434500825624599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A118759 (A100071 n).toNat

end

end A331392.P1990434500825624599

/-! ## A331392.P16909424131959846167

`n*A064064(A000272(n))`
-/

namespace A331392.P16909424131959846167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A064064 (A000272 n).toNat

end

end A331392.P16909424131959846167

/-!
# A331393: Sum, over all binary strings w of length n, of the length of the longest border of w.

The programs for A331393, there is no canonical definition to state claims against.
-/

/-! ## A331393.P15324745410427925276

`A336724(n)-A330774(A111432(n))`
-/

namespace A331393.P15324745410427925276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336724 n - A330774 (A111432 n).toNat

end

end A331393.P15324745410427925276

/-! ## A331393.P11485553303080466241

`A331535(A052927(n))`
-/

namespace A331393.P11485553303080466241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331535 (A052927 n).toNat

end

end A331393.P11485553303080466241

/-! ## A331393.P1897085910426316867

`A160812(A149804(n+1))`
-/

namespace A331393.P1897085910426316867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160812 (A149804 (n + 1)).toNat

end

end A331393.P1897085910426316867

/-!
# A331394: Number of ways of 4-coloring the Fibonacci square spiral tiling of n squares with colors introduced in order.

The programs for A331394, the canonical program `A331394.P6839862184123509438` is in `Seq.B000.C036`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331394 has offset 1).

The definition of A331394 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A331394.P6839862184123509438

`a(n-1)-a(n-2)+2*a(n-3)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5`

The canonical program, it is in `Seq.B000.C036`.
-/

namespace A331394

/-- `a(n-1)-a(n-2)+2*a(n-3)` -/
def P6839862184123509438.Spec : Prop :=
  ∀ n, P6839862184123509438.a n = A331394 (n + 1)

theorem P6839862184123509438.correct : P6839862184123509438.Spec := by
  intro n
  simp only [A331394, Nat.add_sub_cancel]

end A331394

/-! ## A331394.P16455484767254728772

`ogf((1+x^2+2x^5)/(1-x+x^2-2x^3))`
-/

namespace A331394.P16455484767254728772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, 1, 0, 0, 2] [1, -1, 1, -2] n

end

end A331394.P16455484767254728772

namespace A331394

/-- `ogf((1+x^2+2x^5)/(1-x+x^2-2x^3))` -/
def P16455484767254728772.Spec : Prop :=
  ∀ n, P16455484767254728772.a n = A331394 (n + 1)

end A331394

/-! ## A331394.P3057587578698032410

`a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=3, a(5)=5, a(6)=6`
-/

namespace A331394.P3057587578698032410
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 2, 3, 5, 6] fun n a =>
  a (n - 3) + 2 * a (n - 4)

end

end A331394.P3057587578698032410

namespace A331394

/-- `a(n-3)+2*a(n-4)` -/
def P3057587578698032410.Spec : Prop :=
  ∀ n, (P3057587578698032410.a n : ℤ) = A331394 (n + 1)

end A331394

/-!
# A331395: Number of nonnegative integer matrices with total sum n, nonzero rows and distinct columns each with the same sum with columns in decreasing lexicographic order.

The programs for A331395, there is no canonical definition to state claims against.
-/

/-! ## A331395.P12152430233903230334

`A360189(A048115(3*(n+1)))+n²`
-/

namespace A331395.P12152430233903230334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360189 (A048115 (3 * (n + 1))).toNat + (n ^ 2 : ℤ)

end

end A331395.P12152430233903230334

/-! ## A331395.P7579777369094691613

`A360189(A048114(3*n+2))+n²`
-/

namespace A331395.P7579777369094691613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360189 (A048114 (3 * n + 2)).toNat + (n ^ 2 : ℤ)

end

end A331395.P7579777369094691613

/-!
# A331396: Number of nonnegative integer matrices with 2 distinct columns and any number of nonzero rows with column sums n and columns in decreasing lexicographic order.

The programs for A331396, the canonical program `A331396.P14716828960309401034` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331396 has offset 1).

The definition of A331396 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A047665, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A331396.P14716828960309401034

`A011782(n+1)*A047665(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A331396

/-- `A011782(n+1)*A047665(n+1)` -/
def P14716828960309401034.Spec : Prop :=
  ∀ n, P14716828960309401034.a n = A331396 (n + 1)

theorem P14716828960309401034.correct : P14716828960309401034.Spec := by
  intro n
  simp only [A331396, Nat.add_sub_cancel]

end A331396

/-! ## A331396.P10614875737257330293

`(A052141(n+1)-A011782(n+1))/2`
-/

namespace A331396.P10614875737257330293
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052141 (n + 1) - A011782 (n + 1) : ℚ) / 2

end

end A331396.P10614875737257330293

namespace A331396

/-- `(A052141(n+1)-A011782(n+1))/2` -/
def P10614875737257330293.Spec : Prop :=
  ∀ n, P10614875737257330293.a n = (A331396 (n + 1) : ℚ)

end A331396

/-! ## A331396.P8624376754084032033

`2^n*∑[∑[A104550(n+1)]]`
-/

namespace A331396.P8624376754084032033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104550 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331396.P8624376754084032033

namespace A331396

/-- `2^n*∑[∑[A104550(n+1)]]` -/
def P8624376754084032033.Spec : Prop :=
  ∀ n, P8624376754084032033.a n = A331396 (n + 1)

end A331396

/-! ## A331396.P13267940347751263259

`A331397(n+1)-A000079(n)`
-/

namespace A331396.P13267940347751263259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331397 (n + 1) - A000079 n

end

end A331396.P13267940347751263259

namespace A331396

/-- `A331397(n+1)-A000079(n)` -/
def P13267940347751263259.Spec : Prop :=
  ∀ n, P13267940347751263259.a n = A331396 (n + 1)

end A331396

/-! ## A331396.P8376000138043132736

`A000079(n)*A047665(n+1)`
-/

namespace A331396.P8376000138043132736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A047665 (n + 1)

end

end A331396.P8376000138043132736

namespace A331396

/-- `A000079(n)*A047665(n+1)` -/
def P8376000138043132736.Spec : Prop :=
  ∀ n, P8376000138043132736.a n = A331396 (n + 1)

end A331396

/-! ## A331396.P5990378856040897769

`A331397(n+1)-∑[A011782(n)]`
-/

namespace A331396.P5990378856040897769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331397 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A331396.P5990378856040897769

namespace A331396

/-- `A331397(n+1)-∑[A011782(n)]` -/
def P5990378856040897769.Spec : Prop :=
  ∀ n, P5990378856040897769.a n = A331396 (n + 1)

end A331396

/-! ## A331396.P2086723951606652452

`∑[A002002(n+1)]*A000079(n)`
-/

namespace A331396.P2086723951606652452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000079 n

end

end A331396.P2086723951606652452

namespace A331396

/-- `∑[A002002(n+1)]*A000079(n)` -/
def P2086723951606652452.Spec : Prop :=
  ∀ n, P2086723951606652452.a n = A331396 (n + 1)

end A331396

/-! ## A331396.P15000277949460031954

`∑[A011782(n)]*A047665(n+1)`
-/

namespace A331396.P15000277949460031954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A047665 (n + 1)

end

end A331396.P15000277949460031954

namespace A331396

/-- `∑[A011782(n)]*A047665(n+1)` -/
def P15000277949460031954.Spec : Prop :=
  ∀ n, P15000277949460031954.a n = A331396 (n + 1)

end A331396

/-! ## A331396.P3990216823037742588

`Δ[A000918(n)]*A047665(n+1)`
-/

namespace A331396.P3990216823037742588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A047665 (n + 1)

end

end A331396.P3990216823037742588

namespace A331396

/-- `Δ[A000918(n)]*A047665(n+1)` -/
def P3990216823037742588.Spec : Prop :=
  ∀ n, P3990216823037742588.a n = A331396 (n + 1)

end A331396

/-! ## A331396.P9195922436307340411

`A331397(n+1)-A011782(n+1)`
-/

namespace A331396.P9195922436307340411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331397 (n + 1) - A011782 (n + 1)

end

end A331396.P9195922436307340411

namespace A331396

/-- `A331397(n+1)-A011782(n+1)` -/
def P9195922436307340411.Spec : Prop :=
  ∀ n, P9195922436307340411.a n = A331396 (n + 1)

theorem P9195922436307340411.correct : P9195922436307340411.Spec := by
  intro n
  simp only [A331396, Nat.add_sub_cancel, A331396.P9195922436307340411.a, A331396.P14716828960309401034.a, A011782, A011782.P7461078519819856082.a, A047665, A047665.P11812153229518684916.a, A331397, A331397.P13626299062190034795.a, A001850, A001850.P8225243896153059034.a, A226994, A226994.P17259098154566869969.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331396

/-!
# A331397: Number of nonnegative integer matrices with 2 distinct columns and any number of nonzero rows with column sums n and columns in decreasing lexicographic order.

The programs for A331397, the canonical program `A331397.P13626299062190034795` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A331397 has offset 0).

The definition of A331397 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A226994, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A331397.P13626299062190034795

`A011782(n)*A226994(n)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A331397

/-- `A011782(n)*A226994(n)` -/
def P13626299062190034795.Spec : Prop :=
  ∀ n, P13626299062190034795.a n = A331397 n

theorem P13626299062190034795.correct : P13626299062190034795.Spec := by
  intro n
  simp only [A331397]

end A331397

/-! ## A331397.P4180632925858717926

`(A052141(n)+A011782(n))/2`
-/

namespace A331397.P4180632925858717926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052141 n + A011782 n : ℚ) / 2

end

end A331397.P4180632925858717926

namespace A331397

/-- `(A052141(n)+A011782(n))/2` -/
def P4180632925858717926.Spec : Prop :=
  ∀ n, P4180632925858717926.a n = (A331397 n : ℚ)

end A331397

/-! ## A331397.P4012860832012458726

`(A047665(n)+1)*ceil(2^(n-1))`
-/

namespace A331397.P4012860832012458726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A047665 n + 1) * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A331397.P4012860832012458726

namespace A331397

/-- `(A047665(n)+1)*ceil(2^(n-1))` -/
def P4012860832012458726.Spec : Prop :=
  ∀ n, P4012860832012458726.a n = A331397 n

theorem P4012860832012458726.correct : P4012860832012458726.Spec := by
  intro n
  simp only [A331397, Nat.add_sub_cancel, A331397.P4012860832012458726.a, A331397.P13626299062190034795.a, A011782, A011782.P7461078519819856082.a, A047665, A047665.P11812153229518684916.a, A226994, A226994.P17259098154566869969.a, A001850, A001850.P8225243896153059034.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A331397

/-! ## A331397.P15609633939061820775

`ceil(2^(n-1))*∑[abs(A182626(n))]`
-/

namespace A331397.P15609633939061820775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A182626 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A331397.P15609633939061820775

namespace A331397

/-- `ceil(2^(n-1))*∑[abs(A182626(n))]` -/
def P15609633939061820775.Spec : Prop :=
  ∀ n, P15609633939061820775.a n = A331397 n

end A331397

/-! ## A331397.P13460435830741166251

`ceil(2^(n-1))*ceil(A001850(n)/2)`
-/

namespace A331397.P13460435830741166251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * ⌈(A001850 n : ℚ) / 2⌉

end

end A331397.P13460435830741166251

namespace A331397

/-- `ceil(2^(n-1))*ceil(A001850(n)/2)` -/
def P13460435830741166251.Spec : Prop :=
  ∀ n, P13460435830741166251.a n = A331397 n

end A331397

/-! ## A331397.P7497562007380901154

`ceil(2^(n-1))*ceil(A027618(n)/3)`
-/

namespace A331397.P7497562007380901154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ * ⌈(A027618 n : ℚ) / 3⌉

end

end A331397.P7497562007380901154

namespace A331397

/-- `ceil(2^(n-1))*ceil(A027618(n)/3)` -/
def P7497562007380901154.Spec : Prop :=
  ∀ n, P7497562007380901154.a n = A331397 n

end A331397

/-! ## A331397.P13911584694517396990

`(∑[A002002(n)]+1)*ceil(2^(n-1))`
-/

namespace A331397.P13911584694517396990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002002 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉

end

end A331397.P13911584694517396990

namespace A331397

/-- `(∑[A002002(n)]+1)*ceil(2^(n-1))` -/
def P13911584694517396990.Spec : Prop :=
  ∀ n, P13911584694517396990.a n = A331397 n

end A331397

/-! ## A331397.P16936040938925249895

`(∑[A110170(n)]+1)/2*ceil(2^(n-1))`
-/

namespace A331397.P16936040938925249895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2 * (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ : ℚ)

end

end A331397.P16936040938925249895

namespace A331397

/-- `(∑[A110170(n)]+1)/2*ceil(2^(n-1))` -/
def P16936040938925249895.Spec : Prop :=
  ∀ n, P16936040938925249895.a n = (A331397 n : ℚ)

end A331397

/-! ## A331397.P14452955005812467927

`(A001850(n)+1)/2*A011782(n)`
-/

namespace A331397.P14452955005812467927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001850 n + 1 : ℚ) / 2 * (A011782 n : ℚ)

end

end A331397.P14452955005812467927

namespace A331397

/-- `(A001850(n)+1)/2*A011782(n)` -/
def P14452955005812467927.Spec : Prop :=
  ∀ n, P14452955005812467927.a n = (A331397 n : ℚ)

end A331397

