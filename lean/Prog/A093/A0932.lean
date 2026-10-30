import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C008
import Seq.B000.C011
import Seq.B000.C017
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C002
import Seq.B003.C000
import Seq.Opaque.C005

/-!
# A093210: Row sums of A092964.

The programs for A093210, there is no canonical definition to state claims against.
-/

/-! ## A093210.P8400649377439386

`A001037(n+4)-2`
-/

namespace A093210.P8400649377439386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001037 (n + 4) - 2

end

end A093210.P8400649377439386

/-! ## A093210.P3686364801070957167

`A059966(n+4)-2`
-/

namespace A093210.P3686364801070957167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059966 (n + 4) - 2

end

end A093210.P3686364801070957167

/-! ## A093210.P1737227644454271416

`A060477(n+4)-2`
-/

namespace A093210.P1737227644454271416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060477 (n + 4) - 2

end

end A093210.P1737227644454271416

/-! ## A093210.P14649230404291748355

`record[abs(2-A001037(n))]`
-/

namespace A093210.P14649230404291748355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A001037 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093210.P14649230404291748355

/-! ## A093210.P9228787641268689003

`Δ[A001036(n+3)]-2`
-/

namespace A093210.P9228787641268689003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001036 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 2

end

end A093210.P9228787641268689003

/-!
# A093220: a(n) is the largest number such that all of a(n)'s length-n substrings are distinct and divisible by 20.

The programs for A093220, there is no canonical definition to state claims against.
-/

/-! ## A093220.P4925480434573702781

`10*((10^n)²-10^n)-10*A178500(n)`
-/

namespace A093220.P4925480434573702781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (((10 ^ n) ^ 2 : ℤ) - (10 ^ n : ℤ)) - 10 * A178500 n

end

end A093220.P4925480434573702781

/-! ## A093220.P1824379602870454653

`(2*10*((10^n)²-10^n))%A013715(n)`
-/

namespace A093220.P1824379602870454653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * (10 * (((10 ^ n) ^ 2 : ℤ) - (10 ^ n : ℤ)))) (A013715 n)

end

end A093220.P1824379602870454653

/-! ## A093220.P15318537148945884121

`(2*∑{#}[n-1, 9*10^(2*n-#)])%A178500(2*n+1)`
-/

namespace A093220.P15318537148945884121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (2 * (∑ k ∈ Finset.range (f1 n + 1).toNat, 9 * (10 : ℚ) ^ ((2 * n : ℤ) - (k : ℤ) : ℤ)))) (A178500 (2 * n + 1))

end

end A093220.P15318537148945884121

/-! ## A093220.P17662821698676255772

`10*(A059988(n)-A057427(n))`
-/

namespace A093220.P17662821698676255772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A059988 n - A057427 n)

end

end A093220.P17662821698676255772

/-! ## A093220.P1511167782060024365

`(A124167(n)-10)*A178500(n)`
-/

namespace A093220.P1511167782060024365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124167 n - 10) * A178500 n

end

end A093220.P1511167782060024365

/-! ## A093220.P4485767996594762753

`10*(A276352(n)-A178500(n))`
-/

namespace A093220.P4485767996594762753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (A276352 n - A178500 n)

end

end A093220.P4485767996594762753

/-! ## A093220.P4496815287549433689

`(A011557(n)-A130130(n+1))*A011557(n+1)`
-/

namespace A093220.P4496815287549433689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A011557 n - A130130 (n + 1)) * A011557 (n + 1)

end

end A093220.P4496815287549433689

/-! ## A093220.P13191902379554704405

`10*A011557(n)²-A011557(n+1)*A040001(2*n)`
-/

namespace A093220.P13191902379554704405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * A011557 n ^ 2 - A011557 (n + 1) * A040001 (2 * n)

end

end A093220.P13191902379554704405

/-! ## A093220.P14516004358132188410

`A011557(2*n+1)-A011557(n+1)*A040001(2*n)`
-/

namespace A093220.P14516004358132188410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (2 * n + 1) - A011557 (n + 1) * A040001 (2 * n)

end

end A093220.P14516004358132188410

/-!
# A093225: a(n) is the largest number such that all of a(n)'s length-n substrings are distinct and divisible by 25.

The programs for A093225, there is no canonical definition to state claims against.
-/

/-! ## A093225.P18374766743725190601

`10*10*A093275(n+1)`
-/

namespace A093225.P18374766743725190601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (10 * A093275 (n + 1))

end

end A093225.P18374766743725190601

/-! ## A093225.P11439413643616184148

`10*10*(A000533(n+1)-26)*floor(10^(n-1))`
-/

namespace A093225.P11439413643616184148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (10 * ((A000533 (n + 1) - 26) * ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋))

end

end A093225.P11439413643616184148

/-! ## A093225.P17824669587557908081

`5*(A093260(n+1)+10*((10^n)²-10^n))`
-/

namespace A093225.P17824669587557908081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A093260 (n + 1) + 10 * (((10 ^ n) ^ 2 : ℤ) - (10 ^ n : ℤ)))

end

end A093225.P17824669587557908081

/-! ## A093225.P15697233612277995360

`5*((4*10*((10^n)²-10^n))%A013715(n)+10*((10^n)²-10^n))`
-/

namespace A093225.P15697233612277995360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (Int.tmod (4 * (10 * (((10 ^ n) ^ 2 : ℤ) - (10 ^ n : ℤ)))) (A013715 n) + 10 * (((10 ^ n) ^ 2 : ℤ) - (10 ^ n : ℤ)))

end

end A093225.P15697233612277995360

/-!
# A093230: a(n) is the largest number such that all of a(n)'s length-n substrings are distinct and divisible by 30.

The programs for A093230, there is no canonical definition to state claims against.
-/

/-! ## A093230.P1097494956476600056

`10*((10^n)²-10^n)`
-/

namespace A093230.P1097494956476600056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (((10 ^ n) ^ 2 : ℤ) - (10 ^ n : ℤ))

end

end A093230.P1097494956476600056

/-! ## A093230.P8652618765297236776

`∑{#}[n-1, 9*10^(2*n-#)]`
-/

namespace A093230.P8652618765297236776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, 9 * (10 : ℚ) ^ ((2 * n : ℤ) - (k : ℤ) : ℤ)

end

end A093230.P8652618765297236776

/-! ## A093230.P14837130035057375068

`lcm(2, 9*A163663(n))`
-/

namespace A093230.P14837130035057375068
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (9 * A163663 n)

end

end A093230.P14837130035057375068

/-! ## A093230.P18388416166026431746

`9*A093270(n+1)/7`
-/

namespace A093230.P18388416166026431746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 * A093270 (n + 1) : ℚ) / 7

end

end A093230.P18388416166026431746

/-! ## A093230.P13779770155746893253

`A013715(n)-10^(n+1)`
-/

namespace A093230.P13779770155746893253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013715 n - (10 ^ (n + 1) : ℤ)

end

end A093230.P13779770155746893253

/-!
# A093240: a(n) is the largest number such that all of a(n)'s length-n substrings are distinct and divisible by 40.

The programs for A093240, there is no canonical definition to state claims against.
-/

/-! ## A093240.P8375817063392108208

`A013715(n)-gcd(A013715(n), A093260(n+1))`
-/

namespace A093240.P8375817063392108208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013715 n - (Int.gcd (A013715 n) (A093260 (n + 1)) : ℤ)

end

end A093240.P8375817063392108208

/-! ## A093240.P5768955954121065656

`A013715(n)-gcd((4*10*((10^n)²-10^n))%A013715(n), A178500(2*n+1))`
-/

namespace A093240.P5768955954121065656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013715 n - (Int.gcd (Int.tmod (4 * (10 * (((10 ^ n) ^ 2 : ℤ) - (10 ^ n : ℤ)))) (A013715 n)) (A178500 (2 * n + 1)) : ℤ)

end

end A093240.P5768955954121065656

/-!
# A093250: a(n) is the largest number such that all of a(n)'s length-n substrings are distinct and divisible by 50.

The programs for A093250, there is no canonical definition to state claims against.
-/

/-! ## A093250.P10518897855342889541

`(10^n-5)*(10^(n+1))%((n+1)^10)`
-/

namespace A093250.P10518897855342889541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((10 ^ n : ℤ) - 5) * ((10 ^ (n + 1) % (n + 1) ^ 10 : ℕ) : ℤ)

end

end A093250.P10518897855342889541

/-! ## A093250.P15750274858170945677

`(5*10*((10^n)²-10^n))%A013715(n)`
-/

namespace A093250.P15750274858170945677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (5 * (10 * (((10 ^ n) ^ 2 : ℤ) - (10 ^ n : ℤ)))) (A013715 n)

end

end A093250.P15750274858170945677

/-! ## A093250.P4097972761929432915

`A093260(n+1)-10*A178500(n)`
-/

namespace A093250.P4097972761929432915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093260 (n + 1) - 10 * A178500 n

end

end A093250.P4097972761929432915

/-! ## A093250.P4264102222962879100

`A093220(n+1)-30*A178500(n)`
-/

namespace A093250.P4264102222962879100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093220 (n + 1) - 30 * A178500 n

end

end A093250.P4264102222962879100

/-!
# A093260: a(n) is the largest number such that all of a(n)'s length-n substrings are distinct and divisible by 60.

The programs for A093260, there is no canonical definition to state claims against.
-/

/-! ## A093260.P18130164077355004819

`(4*10*((10^n)²-10^n))%A013715(n)`
-/

namespace A093260.P18130164077355004819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (4 * (10 * (((10 ^ n) ^ 2 : ℤ) - (10 ^ n : ℤ)))) (A013715 n)

end

end A093260.P18130164077355004819

/-! ## A093260.P15663445160034115246

`10*((10^n)²-10^n)-30*A178500(n)`
-/

namespace A093260.P15663445160034115246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (((10 ^ n) ^ 2 : ℤ) - (10 ^ n : ℤ)) - 30 * A178500 n

end

end A093260.P15663445160034115246

/-! ## A093260.P2069118328466267597

`(A124167(n)-30)*A178500(n)`
-/

namespace A093260.P2069118328466267597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A124167 n - 30) * A178500 n

end

end A093260.P2069118328466267597

/-! ## A093260.P13951207286050897906

`(2*A093220(n+1))%A178500(2*n+1)`
-/

namespace A093260.P13951207286050897906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * A093220 (n + 1)) (A178500 (2 * n + 1))

end

end A093260.P13951207286050897906

/-!
# A093270: a(n) is the largest number such that all of a(n)'s length-n substrings are distinct and divisible by 70.

The programs for A093270, there is no canonical definition to state claims against.
-/

/-! ## A093270.P72374417717377396

`7*10^n*∑[and(-2, 10^n)]`
-/

namespace A093270.P72374417717377396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-2) (10 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ((10 ^ n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A093270.P72374417717377396

/-! ## A093270.P18080274350891915817

`7*((10^(2*n+1)-1)/9-10^n)-floor(7/9*10^n)`
-/

namespace A093270.P18080274350891915817
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  7 * (((10 ^ (2 * n + 1) : ℤ) - 1 : ℚ) / 9 - (10 ^ n : ℚ)) - (⌊(7 : ℚ) / 9 * (10 ^ n : ℚ)⌋ : ℚ)

end

end A093270.P18080274350891915817

/-! ## A093270.P7012303461444854453

`7*A163663(n)`
-/

namespace A093270.P7012303461444854453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * A163663 n

end

end A093270.P7012303461444854453

/-! ## A093270.P6059834933571221716

`7*10^(n+1)*A002275(n)`
-/

namespace A093270.P6059834933571221716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  7 * ((10 ^ (n + 1) : ℤ) * A002275 n)

end

end A093270.P6059834933571221716

/-! ## A093270.P2107692746395557114

`5*∑[round(10^(n-1))]*Δ[A099915(n)]`
-/

namespace A093270.P2107692746395557114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((10 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099915 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (∑ j ∈ Finset.range (n + 1), f1 j) * (f2 (n + 1) - f2 n)

end

end A093270.P2107692746395557114

/-!
# A093275: a(n) is the largest number such that all of a(n)'s length-n substrings are distinct and divisible by 75.

The programs for A093275, there is no canonical definition to state claims against.
-/

/-! ## A093275.P12118350882290603678

`(A000533(n+1)-26)*floor(10^(n-1))`
-/

namespace A093275.P12118350882290603678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000533 (n + 1) - 26) * ⌊(10 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

end

end A093275.P12118350882290603678

