import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C003
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C023
import Seq.B000.C030
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.Opaque.C000
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
import Seq.Opaque.C013
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
# A388200: Array read by antidiagonals: T(n,k) is the number of length n binary palindromic words in which 1's occur in blocks of at least k, n >= 0, k >= 1.

The programs for A388200, there is no canonical definition to state claims against.
-/

/-! ## A388200.P11601171300358056526

`A366563(A210545(n+1))`
-/

namespace A388200.P11601171300358056526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366563 (A210545 (n + 1)).toNat

end

end A388200.P11601171300358056526

/-! ## A388200.P6727163141259874742

`A102669(A359212(n+1)^A342243(n+1))+1`
-/

namespace A388200.P6727163141259874742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102669 (SequenceMachineLib.roundAway ((A359212 (n + 1) : ℚ) ^ (A342243 (n + 1) : ℤ))).toNat + 1

end

end A388200.P6727163141259874742

/-! ## A388200.P16347901908811163322

`A034444(A120519(n+1)^A047998(n))`
-/

namespace A388200.P16347901908811163322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (SequenceMachineLib.roundAway ((A120519 (n + 1) : ℚ) ^ (A047998 n : ℤ))).toNat

end

end A388200.P16347901908811163322

/-! ## A388200.P126700921834609401

`A034444(A120519(n+1)^A383713(n))`
-/

namespace A388200.P126700921834609401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (SequenceMachineLib.roundAway ((A120519 (n + 1) : ℚ) ^ (A383713 n : ℤ))).toNat

end

end A388200.P126700921834609401

/-! ## A388200.P8278040375247961603

`gcd(A010554(A060982(n)), A256440(n+1))`
-/

namespace A388200.P8278040375247961603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010554 (A060982 n).toNat) (A256440 (n + 1))

end

end A388200.P8278040375247961603

/-!
# A388202: a(n) = Sum_{k=0..n} 3^k * binomial(n,k) * binomial(n+2,k).

The programs for A388202, there is no canonical definition to state claims against.
-/

/-! ## A388202.P11119454400608568607

`A081577(A001844(n+1))`
-/

namespace A388202.P11119454400608568607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A001844 (n + 1)).toNat

end

end A388202.P11119454400608568607

/-! ## A388202.P16634391793320547117

`A081577(A099776(n+1))`
-/

namespace A388202.P16634391793320547117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A099776 (n + 1)).toNat

end

end A388202.P16634391793320547117

/-! ## A388202.P7151390107033521129

`A081577(A132209(n+1))`
-/

namespace A388202.P7151390107033521129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A132209 (n + 1)).toNat

end

end A388202.P7151390107033521129

/-! ## A388202.P3192874717751305645

`A081577(A142463(n+1))`
-/

namespace A388202.P3192874717751305645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A142463 (n + 1)).toNat

end

end A388202.P3192874717751305645

/-! ## A388202.P16208078063134272026

`A081577(A296911(n+1))`
-/

namespace A388202.P16208078063134272026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A296911 (n + 1)).toNat

end

end A388202.P16208078063134272026

/-!
# A388203: a(n) = Sum_{k=0..n} 3^k * binomial(n,k) * binomial(n+3,k).

The programs for A388203, there is no canonical definition to state claims against.
-/

/-! ## A388203.P11002073853057862307

`A081577(A054000(n+2))`
-/

namespace A388203.P11002073853057862307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A054000 (n + 2)).toNat

end

end A388203.P11002073853057862307

/-! ## A388203.P10717211660032418390

`record[gcd(A081577(n+3), A081577(n))]`
-/

namespace A388203.P10717211660032418390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A081577 (n + 3)) (A081577 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A388203.P10717211660032418390

/-! ## A388203.P11532444401224989572

`A081577(A000217(2*n+3)+n)`
-/

namespace A388203.P11532444401224989572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A000217 (2 * n + 3) + (n : ℤ)).toNat

end

end A388203.P11532444401224989572

/-! ## A388203.P17954547580064298599

`A081577(∑[2*A000027(2*n+3)])`
-/

namespace A388203.P17954547580064298599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000027 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A388203.P17954547580064298599

/-! ## A388203.P11569351534000882565

`A081577(A099776(n+1)+A005408(n))`
-/

namespace A388203.P11569351534000882565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A099776 (n + 1) + A005408 n).toNat

end

end A388203.P11569351534000882565

/-!
# A388204: a(n) = Sum_{k=0..n} 3^k * binomial(n,k) * binomial(n+4,k).

The programs for A388204, there is no canonical definition to state claims against.
-/

/-! ## A388204.P13514898390381185353

`A081577(A090288(n+1))`
-/

namespace A388204.P13514898390381185353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A090288 (n + 1)).toNat

end

end A388204.P13514898390381185353

/-! ## A388204.P12994025357977082249

`A081577(A051890(n+3))`
-/

namespace A388204.P12994025357977082249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A051890 (n + 3)).toNat

end

end A388204.P12994025357977082249

/-! ## A388204.P11172520843700175542

`A081577(A046092(n+2)+2)`
-/

namespace A388204.P11172520843700175542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A046092 (n + 2) + 2).toNat

end

end A388204.P11172520843700175542

/-! ## A388204.P6132113736184410460

`A081577(A000217(2*(n+2))+n)`
-/

namespace A388204.P6132113736184410460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A000217 (2 * (n + 2)) + (n : ℤ)).toNat

end

end A388204.P6132113736184410460

/-! ## A388204.P11176474174822542386

`A081577(A093005(2*n+5)-(n+1))`
-/

namespace A388204.P11176474174822542386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081577 (A093005 (2 * n + 5) - (n + 1 : ℤ)).toNat

end

end A388204.P11176474174822542386

/-!
# A388205: a(n) = Sum_{k=0..n} 4^k * binomial(n,k) * binomial(n+2,k).

The programs for A388205, there is no canonical definition to state claims against.
-/

/-! ## A388205.P7196542760198631978

`A081578(A001844(n+1))`
-/

namespace A388205.P7196542760198631978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081578 (A001844 (n + 1)).toNat

end

end A388205.P7196542760198631978

/-! ## A388205.P15075040230928354424

`A081578(A099776(n+1))`
-/

namespace A388205.P15075040230928354424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081578 (A099776 (n + 1)).toNat

end

end A388205.P15075040230928354424

/-! ## A388205.P18394769868962088915

`A081578(A132209(n+1))`
-/

namespace A388205.P18394769868962088915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081578 (A132209 (n + 1)).toNat

end

end A388205.P18394769868962088915

/-! ## A388205.P5246970973086128039

`A081578(A142463(n+1))`
-/

namespace A388205.P5246970973086128039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081578 (A142463 (n + 1)).toNat

end

end A388205.P5246970973086128039

/-! ## A388205.P12302296791420704230

`A081578(A296911(n+1))`
-/

namespace A388205.P12302296791420704230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081578 (A296911 (n + 1)).toNat

end

end A388205.P12302296791420704230

/-!
# A388206: a(n) = Sum_{k=0..n} 4^k * binomial(n,k) * binomial(n+3,k).

The programs for A388206, there is no canonical definition to state claims against.
-/

/-! ## A388206.P15876883987196909636

`A081578(A054000(n+2))`
-/

namespace A388206.P15876883987196909636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081578 (A054000 (n + 2)).toNat

end

end A388206.P15876883987196909636

/-! ## A388206.P780662569717943824

`A081578(A000384(n+2)+n)`
-/

namespace A388206.P780662569717943824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081578 (A000384 (n + 2) + (n : ℤ)).toNat

end

end A388206.P780662569717943824

/-! ## A388206.P16974704577493063945

`A081578(∑[A005843(2*n+3)])`
-/

namespace A388206.P16974704577493063945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A388206.P16974704577493063945

/-! ## A388206.P163602730902383760

`A081578(A000217(2*n+3)+n)`
-/

namespace A388206.P163602730902383760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081578 (A000217 (2 * n + 3) + (n : ℤ)).toNat

end

end A388206.P163602730902383760

/-! ## A388206.P7538441792814520180

`A081578(A000124(2*(n+2))-2-n)`
-/

namespace A388206.P7538441792814520180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081578 (A000124 (2 * (n + 2)) - 2 - (n : ℤ)).toNat

end

end A388206.P7538441792814520180

/-!
# A388207: a(n) = Sum_{k=0..n} 4^k * binomial(n,k) * binomial(n+4,k).

The programs for A388207, there is no canonical definition to state claims against.
-/

/-! ## A388207.P6142696911542451914

`A081578(A090288(n+1))`
-/

namespace A388207.P6142696911542451914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081578 (A090288 (n + 1)).toNat

end

end A388207.P6142696911542451914

/-!
# A388258: Number of divisors d of n such that d^d == -(-d)^n (mod n).

The programs for A388258, there is no canonical definition to state claims against.
-/

/-! ## A388258.P3308255570677431967

`A000005(A000005(A358916(A054008(A066708(n+1)))))`
-/

namespace A388258.P3308255570677431967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A358916 (A054008 (A066708 (n + 1)).toNat).toNat).toNat).toNat

end

end A388258.P3308255570677431967

/-! ## A388258.P11501357201813358771

`A000005(A000005(A358916(A000005(A005179(n+1)))))`
-/

namespace A388258.P11501357201813358771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000005 (A358916 (A000005 (A005179 (n + 1)).toNat).toNat).toNat).toNat

end

end A388258.P11501357201813358771

/-!
# A388261: Primes that are the sum of some first primes minus one.

The programs for A388261, there is no canonical definition to state claims against.
-/

/-! ## A388261.P15117376060640991873

`A007504(A388066(n+1))-1`
-/

namespace A388261.P15117376060640991873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A388066 (n + 1)).toNat - 1

end

end A388261.P15117376060640991873

/-! ## A388261.P1158258457182634042

`A066039(A388066(n+1))`
-/

namespace A388261.P1158258457182634042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066039 (A388066 (n + 1)).toNat

end

end A388261.P1158258457182634042

/-! ## A388261.P10370694231048602321

`A366094(A388066(2*n+1-n))`
-/

namespace A388261.P10370694231048602321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366094 (A388066 (2 * n + 1 - n)).toNat

end

end A388261.P10370694231048602321

/-! ## A388261.P13160057128574407376

`∩[A066039(n+1), A237589(n+1)]`
-/

namespace A388261.P13160057128574407376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388261.P13160057128574407376

/-! ## A388261.P1744704289337302204

`A237589(A388066(n+1)%A050290(n+1))`
-/

namespace A388261.P1744704289337302204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (Int.tmod (A388066 (n + 1)) (A050290 (n + 1))).toNat

end

end A388261.P1744704289337302204

/-! ## A388261.P14080208258799977312

`p?[A237589(n+1)]`
-/

namespace A388261.P14080208258799977312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A388261.P14080208258799977312

/-!
# A388262: Records in A388038.

The programs for A388262, there is no canonical definition to state claims against.
-/

/-! ## A388262.P15466300935801055566

`record[A388038(n+1)]`
-/

namespace A388262.P15466300935801055566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388038 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A388262.P15466300935801055566

/-! ## A388262.P12316682794331939668

`A388038(A388263(n+1))`
-/

namespace A388262.P12316682794331939668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388038 (A388263 (n + 1)).toNat

end

end A388262.P12316682794331939668

/-!
# A388263: Indices of records of A388038.

The programs for A388263, there is no canonical definition to state claims against.
-/

/-! ## A388263.P2486607404794205565

`A235963(A149905(n))`
-/

namespace A388263.P2486607404794205565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A149905 n).toNat

end

end A388263.P2486607404794205565

/-! ## A388263.P2850170226698260487

`A302797(A316471(n+1))+n`
-/

namespace A388263.P2850170226698260487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302797 (A316471 (n + 1)).toNat + (n : ℤ)

end

end A388263.P2850170226698260487

/-! ## A388263.P10292728197181269868

`A182028(n)+A115570(A135186(n+1))`
-/

namespace A388263.P10292728197181269868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182028 n + A115570 (A135186 (n + 1)).toNat

end

end A388263.P10292728197181269868

/-!
# A388264: a(n) = gcd(A276086(n), A276086(sigma(n)-n)), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388264, there is no canonical definition to state claims against.
-/

/-! ## A388264.P17116124555396470177

`gcd(A276086(A001065(n+1)), A276086(n+1))`
-/

namespace A388264.P17116124555396470177
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A276086 (A001065 (n + 1)).toNat) (A276086 (n + 1))

end

end A388264.P17116124555396470177

/-!
# A388265: Numbers k for which gcd(A276086(sigma(k)-k), A276086(k)) is equal to A276086(k), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388265, there is no canonical definition to state claims against.
-/

/-! ## A388265.P13701962702494724750

`∩[A004709(n+1), A097216(n+1)]`
-/

namespace A388265.P13701962702494724750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388265.P13701962702494724750

/-! ## A388265.P7573705159916979410

`∩[A078129(n+1), A097216(n+1)]`
-/

namespace A388265.P7573705159916979410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097216 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388265.P7573705159916979410

/-! ## A388265.P15277782714453719497

`∩[A004709(n+1), A346695(n+1)]`
-/

namespace A388265.P15277782714453719497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388265.P15277782714453719497

/-! ## A388265.P5051237215024866854

`∩[A078129(n+1), A346695(n+1)]`
-/

namespace A388265.P5051237215024866854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388265.P5051237215024866854

/-! ## A388265.P2346157026566324674

`∩[A097216(n+1), A344742(n+1)]`
-/

namespace A388265.P2346157026566324674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097216 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388265.P2346157026566324674

/-!
# A388266: Primitive terms of A388265.

The programs for A388266, there is no canonical definition to state claims against.
-/

/-! ## A388266.P4772449821164617120

`A337814(A152820(n+1))`
-/

namespace A388266.P4772449821164617120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337814 (A152820 (n + 1)).toNat

end

end A388266.P4772449821164617120

/-! ## A388266.P4407055646005675721

`∩[A378530(n+1), A388265(n+1)]`
-/

namespace A388266.P4407055646005675721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388266.P4407055646005675721

/-! ## A388266.P13052655426602748022

`A337814(A154320(n+1))`
-/

namespace A388266.P13052655426602748022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337814 (A154320 (n + 1)).toNat

end

end A388266.P13052655426602748022

/-! ## A388266.P14430663861164687726

`A378530(A355547(n+1))`
-/

namespace A388266.P14430663861164687726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378530 (A355547 (n + 1)).toNat

end

end A388266.P14430663861164687726

/-!
# A388267: Odd numbers k such that gcd(A276086(sigma(k)-k), A276086(k)) is equal to A276086(k), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388267, there is no canonical definition to state claims against.
-/

/-! ## A388267.P17549765324450552910

`filter[A388266(n+1), A267142(#)]`
-/

namespace A388267.P17549765324450552910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388266 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267142 (f1 j).toNat = 1) n)

end

end A388267.P17549765324450552910

/-! ## A388267.P8736223952303000467

`∩[A388266(n+1), A287646(n+5)]`
-/

namespace A388267.P8736223952303000467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388266 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287646 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388267.P8736223952303000467

/-!
# A388268: Numbers k for which A000005(k) >= A017665(k), where A000005 is the number of divisors function, and A017665 is the numerator of the abundancy ratio, sigma(k)/k.

The programs for A388268, there is no canonical definition to state claims against.
-/

/-! ## A388268.P16009395153820929415

`lt[A017665(n+1)-1, A000005(n+1)]+1`
-/

namespace A388268.P16009395153820929415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017665 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A388268.P16009395153820929415

/-! ## A388268.P11833222503671910556

`A358150(A008216(n))`
-/

namespace A388268.P11833222503671910556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358150 (A008216 n).toNat

end

end A388268.P11833222503671910556

/-!
# A388270: a(n) = d(n) * gcd(n, sigma(n)), where d is the number of divisors function (A000005), and sigma is the sum of divisors.

The programs for A388270, the canonical program `A388270.P10233009455192801401` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388270 has offset 1).

The definition of A388270 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, A009194, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A388270.P10233009455192801401

`A000005(n+1)*A009194(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A388270

/-- `A000005(n+1)*A009194(n+1)` -/
def P10233009455192801401.Spec : Prop :=
  ∀ n, P10233009455192801401.a n = A388270 (n + 1)

theorem P10233009455192801401.correct : P10233009455192801401.Spec := by
  intro n
  simp only [A388270, Nat.add_sub_cancel]

end A388270

/-! ## A388270.P6275882232940736057

`A038040(n+1)/A017666(n+1)`
-/

namespace A388270.P6275882232940736057
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A038040 (n + 1) : ℚ) / (A017666 (n + 1) : ℚ)

end

end A388270.P6275882232940736057

namespace A388270

/-- `A038040(n+1)/A017666(n+1)` -/
def P6275882232940736057.Spec : Prop :=
  ∀ n, P6275882232940736057.a n = (A388270 (n + 1) : ℚ)

end A388270

/-! ## A388270.P7507802189912792832

`A064840(n+1)/A017665(n+1)`
-/

namespace A388270.P7507802189912792832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064840 (n + 1) : ℚ) / (A017665 (n + 1) : ℚ)

end

end A388270.P7507802189912792832

namespace A388270

/-- `A064840(n+1)/A017665(n+1)` -/
def P7507802189912792832.Spec : Prop :=
  ∀ n, P7507802189912792832.a n = (A388270 (n + 1) : ℚ)

end A388270

/-! ## A388270.P10378875138549938562

`gcd(A038040(n+1), A064840(n+1))`
-/

namespace A388270.P10378875138549938562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A038040 (n + 1)) (A064840 (n + 1))

end

end A388270.P10378875138549938562

namespace A388270

/-- `gcd(A038040(n+1), A064840(n+1))` -/
def P10378875138549938562.Spec : Prop :=
  ∀ n, (P10378875138549938562.a n : ℤ) = A388270 (n + 1)

end A388270

/-! ## A388270.P1827167091611408411

`(A173438(n+1)+A073802(n+1))*A009194(n+1)`
-/

namespace A388270.P1827167091611408411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A173438 (n + 1) + A073802 (n + 1)) * A009194 (n + 1)

end

end A388270.P1827167091611408411

namespace A388270

/-- `(A173438(n+1)+A073802(n+1))*A009194(n+1)` -/
def P1827167091611408411.Spec : Prop :=
  ∀ n, P1827167091611408411.a n = A388270 (n + 1)

end A388270

/-! ## A388270.P3395151595323512266

`(A326197(n+1)+A326196(n+1))*A009194(n+1)`
-/

namespace A388270.P3395151595323512266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A326197 (n + 1) + A326196 (n + 1)) * A009194 (n + 1)

end

end A388270.P3395151595323512266

namespace A388270

/-- `(A326197(n+1)+A326196(n+1))*A009194(n+1)` -/
def P3395151595323512266.Spec : Prop :=
  ∀ n, P3395151595323512266.a n = A388270 (n + 1)

end A388270

/-! ## A388270.P17609966846376387416

`(A007503(n+1)-A000203(n+1))*A009194(n+1)`
-/

namespace A388270.P17609966846376387416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007503 (n + 1) - A000203 (n + 1)) * A009194 (n + 1)

end

end A388270.P17609966846376387416

namespace A388270

/-- `(A007503(n+1)-A000203(n+1))*A009194(n+1)` -/
def P17609966846376387416.Spec : Prop :=
  ∀ n, P17609966846376387416.a n = A388270 (n + 1)

end A388270

/-! ## A388270.P16560975443664042741

`A009194(n+1)/A000203(n+1)*A064840(n+1)`
-/

namespace A388270.P16560975443664042741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A009194 (n + 1) : ℚ) / (A000203 (n + 1) : ℚ) * (A064840 (n + 1) : ℚ)

end

end A388270.P16560975443664042741

namespace A388270

/-- `A009194(n+1)/A000203(n+1)*A064840(n+1)` -/
def P16560975443664042741.Spec : Prop :=
  ∀ n, P16560975443664042741.a n = (A388270 (n + 1) : ℚ)

end A388270

/-!
# A388271: Numbers k, neither squares nor twice squares, such that gcd(A276086(sigma(k)/2), A276086(k)) is equal to A276086(k), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388271, there is no canonical definition to state claims against.
-/

/-! ## A388271.P1064379946637393747

`∩[A317492(n+1), A378541(n+1)]`
-/

namespace A388271.P1064379946637393747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317492 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388271.P1064379946637393747

/-! ## A388271.P10684939804738521990

`∩[A335433(n+1), A378541(n+1)]`
-/

namespace A388271.P10684939804738521990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335433 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378541 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388271.P10684939804738521990

/-!
# A388272: Primitive terms of A388271.

The programs for A388272, there is no canonical definition to state claims against.
-/

/-! ## A388272.P4971648438181072263

`A378530(comp[5*n-A374848(n)])`
-/

namespace A388272.P4971648438181072263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) - A374848 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378530 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A388272.P4971648438181072263

/-! ## A388272.P14745185890731712024

`∩[A378530(n+1), A388271(n+1)]`
-/

namespace A388272.P14745185890731712024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388271 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388272.P14745185890731712024

/-! ## A388272.P8556698019755749776

`A378530(∪[A068938(n+1), A108312(n+1)])`
-/

namespace A388272.P8556698019755749776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068938 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108312 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378530 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A388272.P8556698019755749776

/-!
# A388274: a(n) = A053585(sigma(n)).

The programs for A388274, the canonical program `A388274.P14629270385933027857` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388274 has offset 1).

The definition of A388274 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3119 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A388274.P14629270385933027857

`A053585(∑{d}[n+1, #])`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A388274

/-- `A053585(∑{d}[n+1, #])` -/
def P14629270385933027857.Spec : Prop :=
  ∀ n, P14629270385933027857.a n = A388274 (n + 1)

theorem P14629270385933027857.correct : P14629270385933027857.Spec := by
  intro n
  simp only [A388274, Nat.add_sub_cancel]

end A388274

/-! ## A388274.P8225117107597274990

`A053585(A000203(n+1))`
-/

namespace A388274.P8225117107597274990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A000203 (n + 1)).toNat

end

end A388274.P8225117107597274990

namespace A388274

/-- `A053585(A000203(n+1))` -/
def P8225117107597274990.Spec : Prop :=
  ∀ n, P8225117107597274990.a n = A388274 (n + 1)

end A388274

/-! ## A388274.P10592087694695230950

`A053585(A088580(n+1)-1)`
-/

namespace A388274.P10592087694695230950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A088580 (n + 1) - 1).toNat

end

end A388274.P10592087694695230950

namespace A388274

/-- `A053585(A088580(n+1)-1)` -/
def P10592087694695230950.Spec : Prop :=
  ∀ n, P10592087694695230950.a n = A388274 (n + 1)

end A388274

/-! ## A388274.P251514311610861828

`A053585(2*(n+1)-A033879(n+1))`
-/

namespace A388274.P251514311610861828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 ((2 * (n + 1) : ℤ) - A033879 (n + 1)).toNat

end

end A388274.P251514311610861828

namespace A388274

/-- `A053585(2*(n+1)-A033879(n+1))` -/
def P251514311610861828.Spec : Prop :=
  ∀ n, P251514311610861828.a n = A388274 (n + 1)

end A388274

/-! ## A388274.P11555843134826302256

`A053585(A394790(n+1))`
-/

namespace A388274.P11555843134826302256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A394790 (n + 1)).toNat

end

end A388274.P11555843134826302256

namespace A388274

/-- `A053585(A394790(n+1))` -/
def P11555843134826302256.Spec : Prop :=
  ∀ n, P11555843134826302256.a n = A388274 (n + 1)

end A388274

/-! ## A388274.P5158983407747890657

`A053585(A009278(n+1))`
-/

namespace A388274.P5158983407747890657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053585 (A009278 (n + 1)).toNat

end

end A388274.P5158983407747890657

namespace A388274

/-- `A053585(A009278(n+1))` -/
def P5158983407747890657.Spec : Prop :=
  ∀ n, P5158983407747890657.a n = A388274 (n + 1)

end A388274

/-!
# A388275: Numbers k such that k and sigma(k) have the same largest prime factor and also its exponent is equal in their prime factorizations, with a(1) = 1 included by convention.

The programs for A388275, there is no canonical definition to state claims against.
-/

/-! ## A388275.P14784640985490302731

`∏{e}[A000420(n), A071834(#)]`
-/

namespace A388275.P14784640985490302731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000420 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A071834 (Nat.factorization (f1 n).natAbs p)

end

end A388275.P14784640985490302731

/-!
# A388278: a(n) = gcd(sigma(n), A276086(sigma(n))), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388278, there is no canonical definition to state claims against.
-/

/-! ## A388278.P8198056352750449505

`A324198(A000203(n+1))`
-/

namespace A388278.P8198056352750449505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 (A000203 (n + 1)).toNat

end

end A388278.P8198056352750449505

/-! ## A388278.P7361513772007300728

`A324198(∑{d}[n+1, #])`
-/

namespace A388278.P7361513772007300728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A388278.P7361513772007300728

/-! ## A388278.P1962643621381362676

`gcd(A000203(n+1), A388031(n+1))`
-/

namespace A388278.P1962643621381362676
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (n + 1)) (A388031 (n + 1))

end

end A388278.P1962643621381362676

/-! ## A388278.P14558771585117728713

`A324198(A324644(n+1)*A369445(n+1))`
-/

namespace A388278.P14558771585117728713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324198 (A324644 (n + 1) * A369445 (n + 1)).toNat

end

end A388278.P14558771585117728713

/-! ## A388278.P400121618997865339

`gcd(∑{d}[n+1, #], A276086(∑{d}[n+1, #]))`
-/

namespace A388278.P400121618997865339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) (A276086 (∑ d ∈ Nat.divisors (f2 n), d))

end

end A388278.P400121618997865339

/-! ## A388278.P2855923649734355167

`gcd(A039653(n+1)+1, A276086(A039653(n+1)+1))`
-/

namespace A388278.P2855923649734355167
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A039653 (n + 1) + 1) (A276086 (A039653 (n + 1) + 1).toNat)

end

end A388278.P2855923649734355167

/-! ## A388278.P5489535546574139746

`A373361(A388031(n+1))`
-/

namespace A388278.P5489535546574139746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373361 (A388031 (n + 1)).toNat

end

end A388278.P5489535546574139746

/-!
# A388280: Numbers k for which the sum of k and sigma(k)-k does not generate any carries when done in the primorial base (A049345).

The programs for A388280, there is no canonical definition to state claims against.
-/

/-! ## A388280.P10719865438588783882

`lt[A388281(n+1), 1]+1`
-/

namespace A388280.P10719865438588783882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388281 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A388280.P10719865438588783882

/-!
# A388281: a(n) = A276086(n)*A276086(sigma(n)-n) - A276086(sigma(n)), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388281, there is no canonical definition to state claims against.
-/

/-! ## A388281.P1773245061527074517

`A388282(n+1)-A388031(n+1)`
-/

namespace A388281.P1773245061527074517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388282 (n + 1) - A388031 (n + 1)

end

end A388281.P1773245061527074517

/-! ## A388281.P18417286155662754871

`A276086(n+1)*A379493(n+1)-A388031(n+1)`
-/

namespace A388281.P18417286155662754871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (n + 1) * A379493 (n + 1) - A388031 (n + 1)

end

end A388281.P18417286155662754871

/-! ## A388281.P18129805867191652301

`A388282(n+1)-A276086(A000203(n+1))`
-/

namespace A388281.P18129805867191652301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388282 (n + 1) - A276086 (A000203 (n + 1)).toNat

end

end A388281.P18129805867191652301

/-!
# A388282: a(n) = A276086(n) * A276086(sigma(n)-n), where A276086 is the primorial base exp-function, and sigma is the sum of divisors function.

The programs for A388282, there is no canonical definition to state claims against.
-/

/-! ## A388282.P16701879389600971449

`A388281(n+1)+A388031(n+1)`
-/

namespace A388282.P16701879389600971449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388281 (n + 1) + A388031 (n + 1)

end

end A388282.P16701879389600971449

/-! ## A388282.P17173445839209294039

`A276086(n+1)*A379493(n+1)`
-/

namespace A388282.P17173445839209294039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (n + 1) * A379493 (n + 1)

end

end A388282.P17173445839209294039

/-! ## A388282.P15603811226643722257

`A276086(A001065(n+1))*A276086(n+1)`
-/

namespace A388282.P15603811226643722257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 (A001065 (n + 1)).toNat * A276086 (n + 1)

end

end A388282.P15603811226643722257

/-! ## A388282.P14194616548931151964

`A388281(n+1)+A351225(∑{d}[n+1, #])+A000203(n+1)`
-/

namespace A388282.P14194616548931151964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388281 (n + 1) + (A351225 (∑ d ∈ Nat.divisors (f1 n), d) + A000203 (n + 1))

end

end A388282.P14194616548931151964

/-! ## A388282.P9916980675699786965

`A388281(n+1)+A276086(A000203(n+1))`
-/

namespace A388282.P9916980675699786965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388281 (n + 1) + A276086 (A000203 (n + 1)).toNat

end

end A388282.P9916980675699786965

/-! ## A388282.P4755498121849780071

`A388281(n+1)+A276086(A245092(Δ[n²]))`
-/

namespace A388282.P4755498121849780071
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388281 (n + 1) + A276086 (A245092 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A388282.P4755498121849780071

/-! ## A388282.P902685135472657378

`A388281(n+1)+A276086(A074400(n+1)/2)`
-/

namespace A388282.P902685135472657378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388281 (n + 1) + A276086 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A388282.P902685135472657378

/-!
# A388283: Numerator of (3*n - sigma(n)) / n.

The programs for A388283, the canonical program `A388283.P448465908817760903` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388283 has offset 1).

The definition of A388283 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A009194, A033885, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A388283.P448465908817760903

`A033885(n+1)/A009194(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A388283

/-- `A033885(n+1)/A009194(n+1)` -/
def P448465908817760903.Spec : Prop :=
  ∀ n, P448465908817760903.a n = (A388283 (n + 1) : ℚ)

end A388283

/-! ## A388283.P4681855477601848148

`(3*(n+1)-∑{d}[n+1, #])/gcd(n+1, ∑{d}[n+1, #])`
-/

namespace A388283.P4681855477601848148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * (n + 1) : ℤ) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) : ℚ) / (Nat.gcd (n + 1) (∑ d ∈ Nat.divisors (f2 n), d) : ℚ)

end

end A388283.P4681855477601848148

namespace A388283

/-- `(3*(n+1)-∑{d}[n+1, #])/gcd(n+1, ∑{d}[n+1, #])` -/
def P4681855477601848148.Spec : Prop :=
  ∀ n, P4681855477601848148.a n = (A388283 (n + 1) : ℚ)

end A388283

/-! ## A388283.P170847191734027512

`A390582(n+1)+A017666(n+1)`
-/

namespace A388283.P170847191734027512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390582 (n + 1) + A017666 (n + 1)

end

end A388283.P170847191734027512

namespace A388283

/-- `A390582(n+1)+A017666(n+1)` -/
def P170847191734027512.Spec : Prop :=
  ∀ n, P170847191734027512.a n = A388283 (n + 1)

end A388283

/-! ## A388283.P17384309255887798987

`A017666(n+1)+A017666(n+1)-A243473(n+1)`
-/

namespace A388283.P17384309255887798987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017666 (n + 1) + (A017666 (n + 1) - A243473 (n + 1))

end

end A388283.P17384309255887798987

namespace A388283

/-- `A017666(n+1)+A017666(n+1)-A243473(n+1)` -/
def P17384309255887798987.Spec : Prop :=
  ∀ n, P17384309255887798987.a n = A388283 (n + 1)

end A388283

/-!
# A388284: Square array A(n, k) = A388283(A246278(n, k)), read by falling antidiagonals. Numerator of (3*n-sigma(n))/n, as applied to the prime shift array.

The programs for A388284, there is no canonical definition to state claims against.
-/

/-! ## A388284.P1047261519084911132

`A388285(n+1)/A355925(n+1)`
-/

namespace A388284.P1047261519084911132
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388285 (n + 1) : ℚ) / (A355925 (n + 1) : ℚ)

end

end A388284.P1047261519084911132

/-! ## A388284.P13304705817033368126

`A341606(n+1)+A378979(n+1)/A355925(n+1)`
-/

namespace A388284.P13304705817033368126
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341606 (n + 1) : ℚ) + (A378979 (n + 1) : ℚ) / (A355925 (n + 1) : ℚ)

end

end A388284.P13304705817033368126

/-! ## A388284.P7980318056654544800

`(A378979(n+1)+A246278(n+2))/A355925(n+1)`
-/

namespace A388284.P7980318056654544800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A378979 (n + 1) + A246278 (n + 2) : ℚ) / (A355925 (n + 1) : ℚ)

end

end A388284.P7980318056654544800

/-! ## A388284.P16530367122302501869

`A341606(n+1)*A388285(n+1)/A246278(n+2)`
-/

namespace A388284.P16530367122302501869
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A341606 (n + 1) * A388285 (n + 1) : ℚ) / (A246278 (n + 2) : ℚ)

end

end A388284.P16530367122302501869

/-! ## A388284.P3075419639047135900

`A388283(A246278(n+2))`
-/

namespace A388284.P3075419639047135900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388283 (A246278 (n + 2)).toNat

end

end A388284.P3075419639047135900

/-! ## A388284.P3082181765005233763

`A388283(A341606(n+1)*A355925(n+1))`
-/

namespace A388284.P3082181765005233763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388283 (A341606 (n + 1) * A355925 (n + 1)).toNat

end

end A388284.P3082181765005233763

/-!
# A388285: Square array A(n, k) = 3*A246278(n, k) - sigma(A246278(n, k)), read by falling antidiagonals. A033885(n) = 3*n-sigma(n) as applied to the prime shift array.

The programs for A388285, there is no canonical definition to state claims against.
-/

/-! ## A388285.P843521515818267512

`A355925(n+1)*A388284(n+1)`
-/

namespace A388285.P843521515818267512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355925 (n + 1) * A388284 (n + 1)

end

end A388285.P843521515818267512

/-! ## A388285.P8837062981504073320

`A378979(n+1)+A341606(n+1)*A355925(n+1)`
-/

namespace A388285.P8837062981504073320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378979 (n + 1) + A341606 (n + 1) * A355925 (n + 1)

end

end A388285.P8837062981504073320

/-! ## A388285.P10760190076989667290

`A378979(n+1)+A246278(n+2)`
-/

namespace A388285.P10760190076989667290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378979 (n + 1) + A246278 (n + 2)

end

end A388285.P10760190076989667290

/-! ## A388285.P14940063870667645659

`A372563(n+1)+A246278(n+2)-A372562(n+1)`
-/

namespace A388285.P14940063870667645659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372563 (n + 1) + (A246278 (n + 2) - A372562 (n + 1))

end

end A388285.P14940063870667645659

/-! ## A388285.P17124859805968851861

`A388284(n+1)/A341606(n+1)*A246278(n+2)`
-/

namespace A388285.P17124859805968851861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A388284 (n + 1) : ℚ) / (A341606 (n + 1) : ℚ) * (A246278 (n + 2) : ℚ)

end

end A388285.P17124859805968851861

/-! ## A388285.P8073428454515977296

`A033885(A246278(n+2))`
-/

namespace A388285.P8073428454515977296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (A246278 (n + 2)).toNat

end

end A388285.P8073428454515977296

/-! ## A388285.P13216885670173711987

`A033885(A341606(n+1)*A355925(n+1))`
-/

namespace A388285.P13216885670173711987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033885 (A341606 (n + 1) * A355925 (n + 1)).toNat

end

end A388285.P13216885670173711987

/-!
# A388286: Möbius transform of A325973, where A325973 is the arithmetic mean of {sum of unitary divisors} and {sum of squarefree divisors}.

The programs for A388286, the canonical program `A388286.P13565212649214377843` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A388286 has offset 1).

The definition of A388286 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055615, A254503, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A388286.P13565212649214377843

`1/2*(A254503(n+1)+abs(A055615(n+1)))`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A388286

/-- `1/2*(A254503(n+1)+abs(A055615(n+1)))` -/
def P13565212649214377843.Spec : Prop :=
  ∀ n, P13565212649214377843.a n = (A388286 (n + 1) : ℚ)

end A388286

/-! ## A388286.P1697028803092839392

`1-A389072(n+1)+n`
-/

namespace A388286.P1697028803092839392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A389072 (n + 1) + (n : ℤ)

end

end A388286.P1697028803092839392

namespace A388286

/-- `1-A389072(n+1)+n` -/
def P1697028803092839392.Spec : Prop :=
  ∀ n, P1697028803092839392.a n = A388286 (n + 1)

end A388286

/-! ## A388286.P15309364268185219996

`∑{d}[n+1, A008683(#)*A325973((n+1)/#)]`
-/

namespace A388286.P15309364268185219996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A325973 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A388286.P15309364268185219996

namespace A388286

/-- `∑{d}[n+1, A008683(#)*A325973((n+1)/#)]` -/
def P15309364268185219996.Spec : Prop :=
  ∀ n, P15309364268185219996.a n = A388286 (n + 1)

end A388286

/-! ## A388286.P10220404068976362337

`A083346(n+1)*A303837(A178878(n+4))`
-/

namespace A388286.P10220404068976362337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083346 (n + 1) * A303837 (A178878 (n + 4)).toNat

end

end A388286.P10220404068976362337

namespace A388286

/-- `A083346(n+1)*A303837(A178878(n+4))` -/
def P10220404068976362337.Spec : Prop :=
  ∀ n, P10220404068976362337.a n = A388286 (n + 1)

end A388286

/-! ## A388286.P8521154244551253808

`gcd(A283002(3*n+5)*A296206(n+1), xor(n, -1))`
-/

namespace A388286.P8521154244551253808
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A283002 (3 * n + 5) * A296206 (n + 1)) (Int.xor (n : ℤ) (-1))

end

end A388286.P8521154244551253808

namespace A388286

/-- `gcd(A283002(3*n+5)*A296206(n+1), xor(n, -1))` -/
def P8521154244551253808.Spec : Prop :=
  ∀ n, (P8521154244551253808.a n : ℤ) = A388286 (n + 1)

end A388286

/-!
# A388289: One half of the even Markoff nunbers.

The programs for A388289, there is no canonical definition to state claims against.
-/

/-! ## A388289.P10253077204985807891

`A002559(A388290(n+1))/2`
-/

namespace A388289.P10253077204985807891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002559 (A388290 (n + 1)).toNat : ℚ) / 2

end

end A388289.P10253077204985807891

/-!
# A388290: Position of the even Markoff numbers 2*A388289 in A002559.

The programs for A388290, there is no canonical definition to state claims against.
-/

/-! ## A388290.P4156951708487232286

`lt[A002559(n+1)%2, 1]+1`
-/

namespace A388290.P4156951708487232286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002559 (n + 1)) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A388290.P4156951708487232286

/-!
# A388291: The odd Markoff numbers.

The programs for A388291, there is no canonical definition to state claims against.
-/

/-! ## A388291.P10028191853256351004

`record[sqrt(A382099(n+1))]`
-/

namespace A388291.P10028191853256351004
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A382099 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A388291.P10028191853256351004

/-! ## A388291.P3825056896574584549

`A002559(A388292(n+1))`
-/

namespace A388291.P3825056896574584549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (A388292 (n + 1)).toNat

end

end A388291.P3825056896574584549

/-! ## A388291.P7708756446897206970

`record[A000265(A002559(n+1))]`
-/

namespace A388291.P7708756446897206970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A002559 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A388291.P7708756446897206970

/-! ## A388291.P2434194441675882066

`filter[A002559(n+1), A187074(#)]`
-/

namespace A388291.P2434194441675882066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A187074 (f1 j).toNat = 1) n)

end

end A388291.P2434194441675882066

/-! ## A388291.P9836837936049049471

`filter[A002559(n+1), A322980(#)]`
-/

namespace A388291.P9836837936049049471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A322980 (f1 j).toNat = 1) n)

end

end A388291.P9836837936049049471

/-!
# A388292: Position of the odd Markoff numbers A388291 in A002559.

The programs for A388292, there is no canonical definition to state claims against.
-/

/-! ## A388292.P5303526300336275729

`lt[(A002559(n+1)+1)%2, 1]+1`
-/

namespace A388292.P5303526300336275729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002559 (n + 1) + 1) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A388292.P5303526300336275729

/-! ## A388292.P17668143084968581621

`A348330(A274915(n+1))`
-/

namespace A388292.P17668143084968581621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348330 (A274915 (n + 1)).toNat

end

end A388292.P17668143084968581621

/-! ## A388292.P8965160321943600388

`A348330(A292315(n+1))`
-/

namespace A388292.P8965160321943600388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348330 (A292315 (n + 1)).toNat

end

end A388292.P8965160321943600388

/-! ## A388292.P5835675025212165959

`∑[A088569(A345114(3*n+1))]`
-/

namespace A388292.P5835675025212165959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088569 (A345114 (3 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A388292.P5835675025212165959

/-! ## A388292.P7585622481749059810

`∑[gcd(2, A195533(n+1))]`
-/

namespace A388292.P7585622481749059810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A195533 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A388292.P7585622481749059810

/-!
# A388293: Cubefull Achilles numbers.

The programs for A388293, there is no canonical definition to state claims against.
-/

/-! ## A388293.P16182673368187340094

`∩[A036966(n+1), A391980(n+1)]`
-/

namespace A388293.P16182673368187340094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388293.P16182673368187340094

/-! ## A388293.P4005300970996676723

`∩[A372695(n+1), A391980(n+1)]`
-/

namespace A388293.P4005300970996676723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388293.P4005300970996676723

/-! ## A388293.P8183106531936350346

`∩[A389551(n+1), A391980(n+1)]`
-/

namespace A388293.P8183106531936350346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391980 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388293.P8183106531936350346

/-! ## A388293.P2926240062576340049

`∩[A036966(n+1), A052486(n+1)]`
-/

namespace A388293.P2926240062576340049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388293.P2926240062576340049

/-! ## A388293.P11031569597412909227

`∩[A052486(n+1), A372695(n+1)]`
-/

namespace A388293.P11031569597412909227
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388293.P11031569597412909227

/-! ## A388293.P7238659036107102355

`∩[A052486(n+1), A389551(n+1)]`
-/

namespace A388293.P7238659036107102355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389551 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388293.P7238659036107102355

/-! ## A388293.P13609616531351257596

`∩[A036966(n+1), A389753(n+1)]`
-/

namespace A388293.P13609616531351257596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388293.P13609616531351257596

/-! ## A388293.P3860956849968472417

`∩[A372695(n+1), A389753(n+1)]`
-/

namespace A388293.P3860956849968472417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372695 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388293.P3860956849968472417

/-! ## A388293.P7754290588845208516

`∩[A389551(n+1), A389753(n+1)]`
-/

namespace A388293.P7754290588845208516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389753 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A388293.P7754290588845208516

