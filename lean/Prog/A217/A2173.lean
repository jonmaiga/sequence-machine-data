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
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B007.C000
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
# A217300: Number of height maximal AVL trees with n (leaf-) nodes.

The programs for A217300, there is no canonical definition to state claims against.
-/

/-! ## A217300.P1389811777795411952

`A217298(∑[A217710(n+1)])`
-/

namespace A217300.P1389811777795411952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217710 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217298 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217300.P1389811777795411952

/-! ## A217300.P7785513644758378839

`A217298(∑[A072649(n+1)]-A001855(n+1))`
-/

namespace A217300.P7785513644758378839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217298 (∑ j ∈ Finset.range (n + 1), f1 j - A001855 (n + 1)).toNat

end

end A217300.P7785513644758378839

/-! ## A217300.P9305066987478264490

`A217298(∑[A072649(n+1)-A029837(n+1)])`
-/

namespace A217300.P9305066987478264490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (n + 1) - A029837 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217298 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217300.P9305066987478264490

/-! ## A217300.P8938234451108361387

`A217298(∑[A072649(n+1)-A000523(2*n+1)])`
-/

namespace A217300.P8938234451108361387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072649 (n + 1) - A000523 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217298 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217300.P8938234451108361387

/-! ## A217300.P3105103597059546478

`A217298(lt[A272372(n+1)-A217298(n+1), 2]+1)`
-/

namespace A217300.P3105103597059546478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272372 (n + 1) - A217298 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217298 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A217300.P3105103597059546478

/-!
# A217302: Minimal natural number (in decimal representation) with n prime substrings in binary representation (substrings with leading zeros are considered to be nonprime).

The programs for A217302, there is no canonical definition to state claims against.
-/

/-! ## A217302.P7030521439575144197

`or(A066660(A004643(n)), A109812(n+1))`
-/

namespace A217302.P7030521439575144197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A066660 (A004643 n).toNat) (A109812 (n + 1))

end

end A217302.P7030521439575144197

/-! ## A217302.P9952145729399387724

`or(A179272(n+4), A297330(A155069(n)))`
-/

namespace A217302.P9952145729399387724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A179272 (n + 4)) (A297330 (A155069 n).toNat)

end

end A217302.P9952145729399387724

/-!
# A217304: Minimal natural number (in decimal representation) with n prime substrings in base-4 representation (substrings with leading zeros are considered to be nonprime).

The programs for A217304, there is no canonical definition to state claims against.
-/

/-! ## A217304.P14014487994809167509

`or(A000041(2*n), A114919(A006253(n)))`
-/

namespace A217304.P14014487994809167509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000041 (2 * n)) (A114919 (A006253 n).toNat)

end

end A217304.P14014487994809167509

/-! ## A217304.P272432387408394786

`or(A002260(n+4), A345436(A151897(n)))`
-/

namespace A217304.P272432387408394786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A002260 (n + 4)) (A345436 (A151897 n).toNat)

end

end A217304.P272432387408394786

/-! ## A217304.P5001538234164742920

`or(A000041(2*n), A085544(A085588(n+3)))`
-/

namespace A217304.P5001538234164742920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000041 (2 * n)) (A085544 (A085588 (n + 3)).toNat)

end

end A217304.P5001538234164742920

/-!
# A217307: Minimal natural number (in decimal representation) with n prime substrings in base-7 representation (substrings with leading zeros are considered to be nonprime).

The programs for A217307, there is no canonical definition to state claims against.
-/

/-! ## A217307.P9440980355876325943

`A239621(∏[n+4])`
-/

namespace A217307.P9440980355876325943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239621 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A217307.P9440980355876325943

/-!
# A217308: Minimal natural number (in decimal representation) with n prime substrings in base-8 representation (substrings with leading zeros are considered to be nonprime).

The programs for A217308, there is no canonical definition to state claims against.
-/

/-! ## A217308.P3121730427735204687

`A160512(A104039(n+1))`
-/

namespace A217308.P3121730427735204687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160512 (A104039 (n + 1)).toNat

end

end A217308.P3121730427735204687

/-! ## A217308.P10740597010907474179

`A354790(eq[∑{e}[n+1, #], A122897(n)])`
-/

namespace A217308.P10740597010907474179
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122897 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354790 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n)

end

end A217308.P10740597010907474179

/-!
# A217309: Minimal natural number (in decimal representation) with n prime substrings in base-9 representation (substrings with leading zeros are considered to be nonprime).

The programs for A217309, there is no canonical definition to state claims against.
-/

/-! ## A217309.P27890569522893558

`A019276(A105329(n+1))`
-/

namespace A217309.P27890569522893558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019276 (A105329 (n + 1)).toNat

end

end A217309.P27890569522893558

/-! ## A217309.P2776984993516304066

`A159477(A057017(p?[2*n+1-(n-1)%5]-1))`
-/

namespace A217309.P2776984993516304066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - Int.tmod ((n : ℤ) - 1) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159477 (A057017 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1).toNat).toNat

end

end A217309.P2776984993516304066

/-!
# A217310: The number of meandering curves of order n, with only one extremity covered by its arcs.

The programs for A217310, there is no canonical definition to state claims against.
-/

/-! ## A217310.P6537609888527767863

`A020639(A027642(n))*A223093(n+1)`
-/

namespace A217310.P6537609888527767863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A027642 n).toNat * A223093 (n + 1)

end

end A217310.P6537609888527767863

/-! ## A217310.P66174479790248618

`(A223094(n+1)-A223095(n+1))*A020639(A027642(n))`
-/

namespace A217310.P66174479790248618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A223094 (n + 1) - A223095 (n + 1)) * A020639 (A027642 n).toNat

end

end A217310.P66174479790248618

/-! ## A217310.P10741530943026191361

`A069932(A052552(n))*A223093(n+1)`
-/

namespace A217310.P10741530943026191361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069932 (A052552 n).toNat * A223093 (n + 1)

end

end A217310.P10741530943026191361

/-! ## A217310.P3915637367336922384

`A006519(A154254(n))*A223093(n+1)`
-/

namespace A217310.P3915637367336922384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A154254 n).toNat * A223093 (n + 1)

end

end A217310.P3915637367336922384

/-! ## A217310.P12907417547572444884

`A036577(A000079(n))*A223093(n+1)`
-/

namespace A217310.P12907417547572444884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036577 (A000079 n).toNat * A223093 (n + 1)

end

end A217310.P12907417547572444884

/-!
# A217312: Number of Motzkin paths of length n with no level steps at height 1.

The programs for A217312, there is no canonical definition to state claims against.
-/

/-! ## A217312.P10425451065740671971

`A024417(A358937(n))`
-/

namespace A217312.P10425451065740671971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024417 (A358937 n).toNat

end

end A217312.P10425451065740671971

/-! ## A217312.P2955629288161262497

`A023193(A342912(n)+A341141(n))`
-/

namespace A217312.P2955629288161262497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A342912 n + A341141 (n + 10)).toNat

end

end A217312.P2955629288161262497

/-! ## A217312.P15261925826664698161

`A100196(A148195(n))+A051265(n+1)`
-/

namespace A217312.P15261925826664698161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A148195 n).toNat + A051265 (n + 1)

end

end A217312.P15261925826664698161

/-! ## A217312.P16043874009497938486

`A023193(A342912(n)+A256502(n+1))`
-/

namespace A217312.P16043874009497938486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A342912 n + A256502 (n + 1)).toNat

end

end A217312.P16043874009497938486

/-! ## A217312.P12660651930784427744

`A273190(A283117(n+1))+A193050(n)`
-/

namespace A217312.P12660651930784427744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273190 (A283117 (n + 1)).toNat + A193050 n

end

end A217312.P12660651930784427744

/-!
# A217313: Numbers for which there exists a base in which n contains more 1's than in binary.

The programs for A217313, there is no canonical definition to state claims against.
-/

/-! ## A217313.P189566588187468913

`∑[A145154(A308336(n))]`
-/

namespace A217313.P189566588187468913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 (A308336 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217313.P189566588187468913

/-! ## A217313.P5178729212456076023

`A061392(9*A186924(n))`
-/

namespace A217313.P5178729212456076023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061392 (9 * A186924 n).toNat

end

end A217313.P5178729212456076023

/-! ## A217313.P9173824858209881648

`record[A081611(A334284(n+4))]`
-/

namespace A217313.P9173824858209881648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081611 (A334284 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217313.P9173824858209881648

/-! ## A217313.P13958933645074632813

`A244230(A215690(n+1))/2`
-/

namespace A217313.P13958933645074632813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A244230 (A215690 (n + 1)).toNat : ℚ) / 2

end

end A217313.P13958933645074632813

/-!
# A217314: Smallest k such that k! > A000178(n) (the superfactorials).

The programs for A217314, there is no canonical definition to state claims against.
-/

/-! ## A217314.P10456588046815542202

`A269225(round(∑[log2(n!)]))`
-/

namespace A217314.P10456588046815542202
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.factorial n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269225 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A217314.P10456588046815542202

/-! ## A217314.P5394641944257553877

`p?[A305614(A000607(n))]+floor((n/2)²)`
-/

namespace A217314.P5394641944257553877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305614 (A000607 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + ⌊((n : ℚ) / 2) ^ 2⌋

end

end A217314.P5394641944257553877

/-! ## A217314.P17338959404623903306

`p?[A205745(A000607(n+2))]+floor((n/2)²)`
-/

namespace A217314.P17338959404623903306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205745 (A000607 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + ⌊((n : ℚ) / 2) ^ 2⌋

end

end A217314.P17338959404623903306

/-! ## A217314.P15064562105290683652

`A263765(A076673(n+9))+A002620(n)`
-/

namespace A217314.P15064562105290683652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263765 (A076673 (n + 9)).toNat + A002620 n

end

end A217314.P15064562105290683652

/-! ## A217314.P9634080145863314557

`A263765(A076673(n+9))+∑[A004526(n)]`
-/

namespace A217314.P9634080145863314557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263765 (A076673 (n + 9)).toNat + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217314.P9634080145863314557

/-!
# A217315: Square array T, read by antidiagonals: T(n,k) = 0 if n-k >= 1 or if k-n >= 8, T(0,k)= 1 if 0<=k<=7, T(n,k) = T(n-1,k) + T(n,k-1).

The programs for A217315, there is no canonical definition to state claims against.
-/

/-! ## A217315.P3376803899333114906

`A217593(n)*A337263(A217770(n+4))`
-/

namespace A217315.P3376803899333114906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217593 n * A337263 (A217770 (n + 4)).toNat

end

end A217315.P3376803899333114906

/-! ## A217315.P10496072542709607427

`A217593(A066182(n+1))%A153288(n)`
-/

namespace A217315.P10496072542709607427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217593 (A066182 (n + 1)).toNat) (A153288 n)

end

end A217315.P10496072542709607427

/-! ## A217315.P9930102250257759127

`A217593(n)%A031285(n)`
-/

namespace A217315.P9930102250257759127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217593 n) (A031285 n)

end

end A217315.P9930102250257759127

/-!
# A217317: Number of primes between n^2 and n^2 + log_2(n)^2 (inclusive).

The programs for A217317, there is no canonical definition to state claims against.
-/

/-! ## A217317.P5468864600105414238

`xor(A089610(n+1), A192687(A276546(n+1)))`
-/

namespace A217317.P5468864600105414238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A089610 (n + 1)) (A192687 (A276546 (n + 1)).toNat)

end

end A217317.P5468864600105414238

/-! ## A217317.P13283611203618503036

`A089610(n+1)+A010815(A080287(n+1))`
-/

namespace A217317.P13283611203618503036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089610 (n + 1) + A010815 (A080287 (n + 1)).toNat

end

end A217317.P13283611203618503036

/-! ## A217317.P16240642989438501374

`A121373(A002981(n+3))+A089610(n+1)`
-/

namespace A217317.P16240642989438501374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121373 (A002981 (n + 3)).toNat + A089610 (n + 1)

end

end A217317.P16240642989438501374

/-! ## A217317.P12936820628614196850

`A139351(A094588(n)*A144871(n+1))`
-/

namespace A217317.P12936820628614196850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (A094588 n * A144871 (n + 1)).toNat

end

end A217317.P12936820628614196850

/-! ## A217317.P231828870340885529

`A139351(lcm(A094588(n), A144871(n+1)))`
-/

namespace A217317.P231828870340885529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139351 (Int.lcm (A094588 n) (A144871 (n + 1)))

end

end A217317.P231828870340885529

/-!
# A217318: The number of meandering curves of order n, with both extremity covered by its arcs.

The programs for A217318, there is no canonical definition to state claims against.
-/

/-! ## A217318.P9792976107137459116

`A223095(n+1)*A000034(n+1)/2`
-/

namespace A217318.P9792976107137459116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223095 (n + 1) * A000034 (n + 1) : ℚ) / 2

end

end A217318.P9792976107137459116

/-! ## A217318.P5811173736318687039

`A223095(n+1)/A000034(n)`
-/

namespace A217318.P5811173736318687039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223095 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A217318.P5811173736318687039

/-! ## A217318.P15184758248190938881

`A223095(n+1)/A084642(n)`
-/

namespace A217318.P15184758248190938881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223095 (n + 1) : ℚ) / (A084642 n : ℚ)

end

end A217318.P15184758248190938881

/-! ## A217318.P10917308759232178640

`A223095(n+1)/(A000035(n)+1)`
-/

namespace A217318.P10917308759232178640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223095 (n + 1) : ℚ) / (A000035 n + 1 : ℚ)

end

end A217318.P10917308759232178640

/-! ## A217318.P11210726832306385765

`A223095(n+1)/(A010693(n)-1)`
-/

namespace A217318.P11210726832306385765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A223095 (n + 1) : ℚ) / (A010693 n - 1 : ℚ)

end

end A217318.P11210726832306385765

/-!
# A217319: Numbers with binary representation ending in 4*k+2 or 4*k+3 zeros.

The programs for A217319, the canonical program `A217319.P14031240011812620055` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217319 has offset 1).

The definition of A217319 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217319.P14031240011812620055

`lt[3, xor(n, n-1)%10]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A217319

/-- `lt[3, xor(n, n-1)%10]` -/
def P14031240011812620055.Spec : Prop :=
  ∀ n, (P14031240011812620055.a n : ℤ) = A217319 (n + 1)

theorem P14031240011812620055.correct : P14031240011812620055.Spec := by
  intro n
  simp only [A217319, Nat.add_sub_cancel]

end A217319

/-! ## A217319.P3536653145826836002

`lt[1, val(n+1, 2)%4]+1`
-/

namespace A217319.P3536653145826836002
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A217319.P3536653145826836002

namespace A217319

/-- `lt[1, val(n+1, 2)%4]+1` -/
def P3536653145826836002.Spec : Prop :=
  ∀ n, (P3536653145826836002.a n : ℤ) = A217319 (n + 1)

end A217319

/-! ## A217319.P13148710896545155665

`4*(lt[A346070(n+1), 2]+1)`
-/

namespace A217319.P13148710896545155665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346070 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A217319.P13148710896545155665

namespace A217319

/-- `4*(lt[A346070(n+1), 2]+1)` -/
def P13148710896545155665.Spec : Prop :=
  ∀ n, (P13148710896545155665.a n : ℤ) = A217319 (n + 1)

end A217319

/-! ## A217319.P4812187426616739063

`lt[2, A158992(val(n+1, 2))]+1`
-/

namespace A217319.P4812187426616739063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158992 (SequenceMachineLib.valuation (n + 1) 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A217319.P4812187426616739063

namespace A217319

/-- `lt[2, A158992(val(n+1, 2))]+1` -/
def P4812187426616739063.Spec : Prop :=
  ∀ n, (P4812187426616739063.a n : ℤ) = A217319 (n + 1)

end A217319

/-! ## A217319.P16987672878324793169

`record[A274611(A274611(n+1))]`
-/

namespace A217319.P16987672878324793169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274611 (A274611 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217319.P16987672878324793169

namespace A217319

/-- `record[A274611(A274611(n+1))]` -/
def P16987672878324793169.Spec : Prop :=
  ∀ n, P16987672878324793169.a n = A217319 (n + 1)

end A217319

/-! ## A217319.P14728389237038749173

`eq[A287576(n+2), A287576(n+1)]+1`
-/

namespace A217319.P14728389237038749173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287576 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A217319.P14728389237038749173

namespace A217319

/-- `eq[A287576(n+2), A287576(n+1)]+1` -/
def P14728389237038749173.Spec : Prop :=
  ∀ n, (P14728389237038749173.a n : ℤ) = A217319 (n + 1)

end A217319

/-! ## A217319.P426909625786776231

`lt[1, A346070(n+1)]+1`
-/

namespace A217319.P426909625786776231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346070 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A217319.P426909625786776231

namespace A217319

/-- `lt[1, A346070(n+1)]+1` -/
def P426909625786776231.Spec : Prop :=
  ∀ n, (P426909625786776231.a n : ℤ) = A217319 (n + 1)

end A217319

/-! ## A217319.P12261390299253719803

`record[A307266(A073675(n+1))]`
-/

namespace A217319.P12261390299253719803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307266 (A073675 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217319.P12261390299253719803

namespace A217319

/-- `record[A307266(A073675(n+1))]` -/
def P12261390299253719803.Spec : Prop :=
  ∀ n, P12261390299253719803.a n = A217319 (n + 1)

end A217319

/-! ## A217319.P17910855181791803012

`eq[2, and(n+2, A136480(n))]`
-/

namespace A217319.P17910855181791803012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) (A136480 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217319.P17910855181791803012

namespace A217319

/-- `eq[2, and(n+2, A136480(n))]` -/
def P17910855181791803012.Spec : Prop :=
  ∀ n, (P17910855181791803012.a n : ℤ) = A217319 (n + 1)

end A217319

/-! ## A217319.P15998278355631778056

`lt[(A007814(n+1)+2)%4, 2]+1`
-/

namespace A217319.P15998278355631778056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007814 (n + 1) + 2) 4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A217319.P15998278355631778056

namespace A217319

/-- `lt[(A007814(n+1)+2)%4, 2]+1` -/
def P15998278355631778056.Spec : Prop :=
  ∀ n, (P15998278355631778056.a n : ℤ) = A217319 (n + 1)

end A217319

/-! ## A217319.P6320717360663556771

`eq[A341389(abs(1-n)), A341389(n)]`
-/

namespace A217319.P6320717360663556771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341389 |1 - (n : ℤ)|.toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217319.P6320717360663556771

namespace A217319

/-- `eq[A341389(abs(1-n)), A341389(n)]` -/
def P6320717360663556771.Spec : Prop :=
  ∀ n, (P6320717360663556771.a n : ℤ) = A217319 (n + 1)

end A217319

/-! ## A217319.P7274058720940541791

`lt[2, A003484(A003484(n+1))]+1`
-/

namespace A217319.P7274058720940541791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003484 (A003484 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A217319.P7274058720940541791

namespace A217319

/-- `lt[2, A003484(A003484(n+1))]+1` -/
def P7274058720940541791.Spec : Prop :=
  ∀ n, (P7274058720940541791.a n : ℤ) = A217319 (n + 1)

end A217319

/-! ## A217319.P7321751572550286308

`eq[A112865(n), A112865(n+1)]+1`
-/

namespace A217319.P7321751572550286308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112865 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112865 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A217319.P7321751572550286308

namespace A217319

/-- `eq[A112865(n), A112865(n+1)]+1` -/
def P7321751572550286308.Spec : Prop :=
  ∀ n, (P7321751572550286308.a n : ℤ) = A217319 (n + 1)

end A217319

/-! ## A217319.P15086032169173957181

`eq[A341389(n+1), A341389(n)]+1`
-/

namespace A217319.P15086032169173957181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341389 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A217319.P15086032169173957181

namespace A217319

/-- `eq[A341389(n+1), A341389(n)]+1` -/
def P15086032169173957181.Spec : Prop :=
  ∀ n, (P15086032169173957181.a n : ℤ) = A217319 (n + 1)

end A217319

/-! ## A217319.P11222377404411226632

`lt[A307266(n+1), n]+1`
-/

namespace A217319.P11222377404411226632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307266 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A217319.P11222377404411226632

namespace A217319

/-- `lt[A307266(n+1), n]+1` -/
def P11222377404411226632.Spec : Prop :=
  ∀ n, (P11222377404411226632.a n : ℤ) = A217319 (n + 1)

end A217319

/-! ## A217319.P15873713849999301619

`lt[A136480(n+1), A136480(A136480(2*n))]`
-/

namespace A217319.P15873713849999301619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A136480 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A217319.P15873713849999301619

namespace A217319

/-- `lt[A136480(n+1), A136480(A136480(2*n))]` -/
def P15873713849999301619.Spec : Prop :=
  ∀ n, (P15873713849999301619.a n : ℤ) = A217319 (n + 1)

end A217319

/-! ## A217319.P6653122317686543059

`record[A307267(A307150(n+1))]`
-/

namespace A217319.P6653122317686543059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307267 (A307150 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217319.P6653122317686543059

namespace A217319

/-- `record[A307267(A307150(n+1))]` -/
def P6653122317686543059.Spec : Prop :=
  ∀ n, P6653122317686543059.a n = A217319 (n + 1)

end A217319

/-! ## A217319.P4387954966788325032

`record[A059897(A155212(n)+5)]`
-/

namespace A217319.P4387954966788325032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (A155212 n + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217319.P4387954966788325032

namespace A217319

/-- `record[A059897(A155212(n)+5)]` -/
def P4387954966788325032.Spec : Prop :=
  ∀ n, P4387954966788325032.a n = A217319 (n + 1)

end A217319

/-! ## A217319.P11187757782626313004

`lt[A333403(n+1), A136480(A136480(n)+1)]`
-/

namespace A217319.P11187757782626313004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136480 (A136480 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A217319.P11187757782626313004

namespace A217319

/-- `lt[A333403(n+1), A136480(A136480(n)+1)]` -/
def P11187757782626313004.Spec : Prop :=
  ∀ n, (P11187757782626313004.a n : ℤ) = A217319 (n + 1)

end A217319

/-!
# A217321: Number of self-inverse permutations in S_n with longest increasing subsequence of length 9.

The programs for A217321, there is no canonical definition to state claims against.
-/

/-! ## A217321.P10852242866852432454

`A212915(n+9)-A007580(n+9)`
-/

namespace A217321.P10852242866852432454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212915 (n + 9) - A007580 (n + 9)

end

end A217321.P10852242866852432454

/-! ## A217321.P2260181264224642033

`A047884(A167499(n+7)+4)`
-/

namespace A217321.P2260181264224642033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A167499 (n + 7) + 4).toNat

end

end A217321.P2260181264224642033

/-! ## A217321.P2423185813732117050

`A047884(A000217(n+8)+9)`
-/

namespace A217321.P2423185813732117050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A000217 (n + 8) + 9).toNat

end

end A217321.P2423185813732117050

/-! ## A217321.P868493353063268515

`A047884(A027379(n+7)-(n-3))`
-/

namespace A217321.P868493353063268515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A027379 (n + 7) - ((n : ℤ) - 3)).toNat

end

end A217321.P868493353063268515

/-! ## A217321.P16292763296268392736

`A047884(A000124(n+9)+n-(2*n+1))`
-/

namespace A217321.P16292763296268392736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A000124 (n + 9) + (n : ℤ) - (2 * n + 1 : ℤ)).toNat

end

end A217321.P16292763296268392736

/-!
# A217322: Number of self-inverse permutations in S_n with longest increasing subsequence of length 10.

The programs for A217322, there is no canonical definition to state claims against.
-/

/-! ## A217322.P4581273165152281

`A212916(n+10)-A212915(n+10)`
-/

namespace A217322.P4581273165152281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212916 (n + 10) - A212915 (n + 10)

end

end A217322.P4581273165152281

/-! ## A217322.P17681504527947638919

`A047884(A000096(n+8)+11)`
-/

namespace A217322.P17681504527947638919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A000096 (n + 8) + 11).toNat

end

end A217322.P17681504527947638919

/-! ## A217322.P10803495010665375895

`A047884(A000217(n+9)+10)`
-/

namespace A217322.P10803495010665375895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A000217 (n + 9) + 10).toNat

end

end A217322.P10803495010665375895

/-! ## A217322.P13667980627774638224

`A047884(eq[11, A131818(n+1)])`
-/

namespace A217322.P13667980627774638224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217322.P13667980627774638224

/-! ## A217322.P3526600054456602406

`A047884(Δ[A000292(n+8)]+10)`
-/

namespace A217322.P3526600054456602406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (f1 (n + 1) - f1 n + 10).toNat

end

end A217322.P3526600054456602406

/-! ## A217322.P12486879341129743337

`A047884(A056000(n+7)-(2*n+1))`
-/

namespace A217322.P12486879341129743337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A056000 (n + 7) - (2 * n + 1 : ℤ)).toNat

end

end A217322.P12486879341129743337

/-!
# A217323: Number of self-inverse permutations in S_n with longest increasing subsequence of length 3.

The programs for A217323, the canonical program `A217323.P5893074591576963473` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217323 has offset 3).

The definition of A217323 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217323.P5893074591576963473

`A001006(n+3)-A001405(n+3)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A217323

/-- `A001006(n+3)-A001405(n+3)` -/
def P5893074591576963473.Spec : Prop :=
  ∀ n, P5893074591576963473.a n = A217323 (n + 3)

theorem P5893074591576963473.correct : P5893074591576963473.Spec := by
  intro n
  simp only [A217323, Nat.add_sub_cancel]

end A217323

/-! ## A217323.P11277355671284495754

`A001006(n+3)-A210736(n+4)`
-/

namespace A217323.P11277355671284495754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 3) - A210736 (n + 4)

end

end A217323.P11277355671284495754

namespace A217323

/-- `A001006(n+3)-A210736(n+4)` -/
def P11277355671284495754.Spec : Prop :=
  ∀ n, P11277355671284495754.a n = A217323 (n + 3)

end A217323

/-! ## A217323.P1980662892524657069

`record[A001006(n)-A001405(n)%A000079(n)]`
-/

namespace A217323.P1980662892524657069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 n - Int.tmod (A001405 n) (A000079 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217323.P1980662892524657069

namespace A217323

/-- `record[A001006(n)-A001405(n)%A000079(n)]` -/
def P1980662892524657069.Spec : Prop :=
  ∀ n, P1980662892524657069.a n = A217323 (n + 3)

end A217323

/-! ## A217323.P606025754832496521

`A047884(∑[n+2]+4)`
-/

namespace A217323.P606025754832496521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A217323.P606025754832496521

namespace A217323

/-- `A047884(∑[n+2]+4)` -/
def P606025754832496521.Spec : Prop :=
  ∀ n, P606025754832496521.a n = A217323 (n + 3)

end A217323

/-! ## A217323.P15354630462348413963

`record[A010054(n)*A047884(n+3)]`
-/

namespace A217323.P15354630462348413963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A047884 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217323.P15354630462348413963

namespace A217323

/-- `record[A010054(n)*A047884(n+3)]` -/
def P15354630462348413963.Spec : Prop :=
  ∀ n, P15354630462348413963.a n = A217323 (n + 3)

end A217323

/-! ## A217323.P9920047475992759585

`A047884(A046691(n)+7)^A001221(A174354(n))`
-/

namespace A217323.P9920047475992759585
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047884 (A046691 n + 7).toNat : ℚ) ^ (A001221 (A174354 n).toNat : ℤ)

end

end A217323.P9920047475992759585

namespace A217323

/-- `A047884(A046691(n)+7)^A001221(A174354(n))` -/
def P9920047475992759585.Spec : Prop :=
  ∀ n, P9920047475992759585.a n = (A217323 (n + 3) : ℚ)

end A217323

/-!
# A217324: Number of self-inverse permutations in S_n with longest increasing subsequence of length 4.

The programs for A217324, the canonical program `A217324.P15056833866793307979` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217324 has offset 4).

The definition of A217324 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005817, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A217324.P15056833866793307979

`A005817(n+4)-A001006(n+4)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A217324

/-- `A005817(n+4)-A001006(n+4)` -/
def P15056833866793307979.Spec : Prop :=
  ∀ n, P15056833866793307979.a n = A217324 (n + 4)

theorem P15056833866793307979.correct : P15056833866793307979.Spec := by
  intro n
  simp only [A217324, Nat.add_sub_cancel]

end A217324

/-! ## A217324.P16963141297751962891

`record[A005817(n)-A001006(n)%A002426(n)]`
-/

namespace A217324.P16963141297751962891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005817 n - Int.tmod (A001006 n) (A002426 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217324.P16963141297751962891

namespace A217324

/-- `record[A005817(n)-A001006(n)%A002426(n)]` -/
def P16963141297751962891.Spec : Prop :=
  ∀ n, P16963141297751962891.a n = A217324 (n + 4)

end A217324

/-! ## A217324.P14283338211498618670

`A047884(∑[n+3]+7)`
-/

namespace A217324.P14283338211498618670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A217324.P14283338211498618670

namespace A217324

/-- `A047884(∑[n+3]+7)` -/
def P14283338211498618670.Spec : Prop :=
  ∀ n, P14283338211498618670.a n = A217324 (n + 4)

end A217324

/-! ## A217324.P16761846560875798008

`record[gcd(A047884(n+5), A182172(n))]`
-/

namespace A217324.P16761846560875798008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047884 (n + 5)) (A182172 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217324.P16761846560875798008

namespace A217324

/-- `record[gcd(A047884(n+5), A182172(n))]` -/
def P16761846560875798008.Spec : Prop :=
  ∀ n, (P16761846560875798008.a n : ℤ) = A217324 (n + 4)

end A217324

/-! ## A217324.P7388722531300826548

`A047884(A145018(n+4))%A068875(n+3)`
-/

namespace A217324.P7388722531300826548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047884 (A145018 (n + 4)).toNat) (A068875 (n + 3))

end

end A217324.P7388722531300826548

namespace A217324

/-- `A047884(A145018(n+4))%A068875(n+3)` -/
def P7388722531300826548.Spec : Prop :=
  ∀ n, P7388722531300826548.a n = A217324 (n + 4)

end A217324

/-! ## A217324.P16900616177773923532

`or(A047884(A145018(n+4)), A295884(3*n+4))`
-/

namespace A217324.P16900616177773923532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A047884 (A145018 (n + 4)).toNat) (A295884 (3 * n + 4))

end

end A217324.P16900616177773923532

namespace A217324

/-- `or(A047884(A145018(n+4)), A295884(3*n+4))` -/
def P16900616177773923532.Spec : Prop :=
  ∀ n, P16900616177773923532.a n = A217324 (n + 4)

end A217324

/-!
# A217325: Number of self-inverse permutations in S_n with longest increasing subsequence of length 5.

The programs for A217325, there is no canonical definition to state claims against.
-/

/-! ## A217325.P14869583425459825622

`A049401(n+5)-A005817(n+5)`
-/

namespace A217325.P14869583425459825622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049401 (n + 5) - A005817 (n + 5)

end

end A217325.P14869583425459825622

/-! ## A217325.P1124684593956853312

`record[A047884(A167499(n))]`
-/

namespace A217325.P1124684593956853312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A167499 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217325.P1124684593956853312

/-! ## A217325.P4167813656195274936

`A047884(A167499(n+3))`
-/

namespace A217325.P4167813656195274936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A167499 (n + 3)).toNat

end

end A217325.P4167813656195274936

/-! ## A217325.P1131960486894565612

`A047884(A000217(n+4)+5)`
-/

namespace A217325.P1131960486894565612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A000217 (n + 4) + 5).toNat

end

end A217325.P1131960486894565612

/-! ## A217325.P7555140561382080999

`record[gcd(A047884(n+9), A182172(n+3))]`
-/

namespace A217325.P7555140561382080999
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A047884 (n + 9)) (A182172 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217325.P7555140561382080999

/-!
# A217326: Number of self-inverse permutations in S_n with longest increasing subsequence of length 6.

The programs for A217326, there is no canonical definition to state claims against.
-/

/-! ## A217326.P9506749308752768229

`A007579(n+6)-A049401(n+6)`
-/

namespace A217326.P9506749308752768229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007579 (n + 6) - A049401 (n + 6)

end

end A217326.P9506749308752768229

/-! ## A217326.P6038419478728501291

`A047884(A166136(n+4))`
-/

namespace A217326.P6038419478728501291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A166136 (n + 4)).toNat

end

end A217326.P6038419478728501291

/-! ## A217326.P3292427638982558896

`A047884(A000096(n+4)+7)`
-/

namespace A217326.P3292427638982558896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A000096 (n + 4) + 7).toNat

end

end A217326.P3292427638982558896

/-! ## A217326.P4859342938489466247

`A047884(A000217(n+5)+6)`
-/

namespace A217326.P4859342938489466247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A000217 (n + 5) + 6).toNat

end

end A217326.P4859342938489466247

/-! ## A217326.P13227852684104021267

`A047884(A052905(n+2)+11)`
-/

namespace A217326.P13227852684104021267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A052905 (n + 2) + 11).toNat

end

end A217326.P13227852684104021267

/-!
# A217327: Number of self-inverse permutations in S_n with longest increasing subsequence of length 7.

The programs for A217327, there is no canonical definition to state claims against.
-/

/-! ## A217327.P18415690170599724803

`A007578(n+7)-A007579(n+7)`
-/

namespace A217327.P18415690170599724803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007578 (n + 7) - A007579 (n + 7)

end

end A217327.P18415690170599724803

/-! ## A217327.P9523170334269824892

`A047884(A167487(n+5))`
-/

namespace A217327.P9523170334269824892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A167487 (n + 5)).toNat

end

end A217327.P9523170334269824892

/-! ## A217327.P3028486051775984550

`A047884(A056119(n)+28)`
-/

namespace A217327.P3028486051775984550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A056119 n + 28).toNat

end

end A217327.P3028486051775984550

/-! ## A217327.P13294305060900904976

`A047884(A167499(n+5)+2)`
-/

namespace A217327.P13294305060900904976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A167499 (n + 5) + 2).toNat

end

end A217327.P13294305060900904976

/-! ## A217327.P17492490870290518361

`A047884(A000217(n+6)+7)`
-/

namespace A217327.P17492490870290518361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A000217 (n + 6) + 7).toNat

end

end A217327.P17492490870290518361

/-! ## A217327.P10967147417660436864

`A047884(A179865(n+7)+7)`
-/

namespace A217327.P10967147417660436864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A179865 (n + 7) + 7).toNat

end

end A217327.P10967147417660436864

/-!
# A217328: Number of self-inverse permutations in S_n with longest increasing subsequence of length 8.

The programs for A217328, there is no canonical definition to state claims against.
-/

/-! ## A217328.P12508785628106623100

`A007580(n+8)-A007578(n+8)`
-/

namespace A217328.P12508785628106623100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007580 (n + 8) - A007578 (n + 8)

end

end A217328.P12508785628106623100

/-! ## A217328.P7863644938476542359

`A047884(A167499(n+6)+3)`
-/

namespace A217328.P7863644938476542359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A167499 (n + 6) + 3).toNat

end

end A217328.P7863644938476542359

/-! ## A217328.P9252919834989694408

`A047884(A000124(n+7)+7)`
-/

namespace A217328.P9252919834989694408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A000124 (n + 7) + 7).toNat

end

end A217328.P9252919834989694408

/-! ## A217328.P8905450652225366999

`A047884(A000217(n+7)+8)`
-/

namespace A217328.P8905450652225366999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A000217 (n + 7) + 8).toNat

end

end A217328.P8905450652225366999

/-! ## A217328.P3475066518085421413

`A047884(eq[8, A002260(n+1)]+1)`
-/

namespace A217328.P3475066518085421413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A217328.P3475066518085421413

/-! ## A217328.P12107451843765867129

`A047884(A152947(n+10)-(n+1))`
-/

namespace A217328.P12107451843765867129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047884 (A152947 (n + 10) - (n + 1 : ℤ)).toNat

end

end A217328.P12107451843765867129

/-!
# A217329: Esumprimes: prime(k), where k is the sum of the first n digits of E.

The programs for A217329, there is no canonical definition to state claims against.
-/

/-! ## A217329.P535880422433611402

`A000040(A046975(n))`
-/

namespace A217329.P535880422433611402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A046975 n).toNat

end

end A217329.P535880422433611402

/-! ## A217329.P15894436884288681068

`A000040(∑[A001113(n)])`
-/

namespace A217329.P15894436884288681068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217329.P15894436884288681068

/-! ## A217329.P4494430883359743771

`A008578(A046975(n)+1)`
-/

namespace A217329.P4494430883359743771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A046975 n + 1).toNat

end

end A217329.P4494430883359743771

/-! ## A217329.P16480031580667894941

`A065091(A046975(n)-1)`
-/

namespace A217329.P16480031580667894941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A046975 n - 1).toNat

end

end A217329.P16480031580667894941

/-! ## A217329.P13372125497069377526

`A006093(∑[A001113(n)])+1`
-/

namespace A217329.P13372125497069377526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 1

end

end A217329.P13372125497069377526

/-! ## A217329.P10513816148151036867

`A008578(∑[A001113(n)]+1)`
-/

namespace A217329.P10513816148151036867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A217329.P10513816148151036867

/-! ## A217329.P6936670092965355248

`A040976(∑[A001113(n)])+2`
-/

namespace A217329.P6936670092965355248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + 2

end

end A217329.P6936670092965355248

/-! ## A217329.P10989823109937506086

`A065091(∑[A001113(n)]-1)`
-/

namespace A217329.P10989823109937506086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A217329.P10989823109937506086

/-! ## A217329.P1871198681935308982

`A100484(∑[A001113(n)])/2`
-/

namespace A217329.P1871198681935308982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A217329.P1871198681935308982

/-! ## A217329.P6848581104450704019

`A000040(∑[A001355(2*(n+1))])`
-/

namespace A217329.P6848581104450704019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217329.P6848581104450704019

/-! ## A217329.P3995622830809694343

`A006530(A100484(∑[A001113(n)]))`
-/

namespace A217329.P3995622830809694343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A100484 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A217329.P3995622830809694343

/-! ## A217329.P15927353475036960909

`A151800(A008578(∑[A001113(n)]))`
-/

namespace A217329.P15927353475036960909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A008578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A217329.P15927353475036960909

/-! ## A217329.P930032343185924273

`A000040(A197563(n)-A046974(n))`
-/

namespace A217329.P930032343185924273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A197563 n - A046974 n).toNat

end

end A217329.P930032343185924273

/-! ## A217329.P11944778652792616664

`A000040(∑[A073212(n)-A000796(n)])`
-/

namespace A217329.P11944778652792616664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n - A000796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217329.P11944778652792616664

/-! ## A217329.P5629583778270339089

`A207790(∑[2*A001113(n)])`
-/

namespace A217329.P5629583778270339089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217329.P5629583778270339089

/-! ## A217329.P11200442478272786916

`A004273(A111333(∑[A001113(n)]))`
-/

namespace A217329.P11200442478272786916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A111333 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A217329.P11200442478272786916

/-!
# A217330: The number of integer solutions to the equation x1 + x2 + x3 + x4 = n, with xi >= 0, and with x2 + x3 divisible by 3.

The programs for A217330, the canonical program `A217330.P9340140242757744111` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217330 has offset 0).

The definition of A217330 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217330.P9340140242757744111

`∑[∑[C(n+1, lcm(3, n))]]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A217330

/-- `∑[∑[C(n+1, lcm(3, n))]]` -/
def P9340140242757744111.Spec : Prop :=
  ∀ n, (P9340140242757744111.a n : ℤ) = A217330 n

theorem P9340140242757744111.correct : P9340140242757744111.Spec := by
  intro n
  simp only [A217330]

end A217330

/-! ## A217330.P15275379082860449851

`∑[∑[(n+1)*char[3*n]]]`
-/

namespace A217330.P15275379082860449851
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (if ∃ j, f3 j = n then 1 else 0)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217330.P15275379082860449851

namespace A217330

/-- `∑[∑[(n+1)*char[3*n]]]` -/
def P15275379082860449851.Spec : Prop :=
  ∀ n, (P15275379082860449851.a n : ℤ) = A217330 n

end A217330

/-! ## A217330.P14719406277994656904

`∑[∑[(n+1)%A058281(n+1)]]+n+1`
-/

namespace A217330.P14719406277994656904
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A058281 (n + 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 1 : ℤ)

end

end A217330.P14719406277994656904

namespace A217330

/-- `∑[∑[(n+1)%A058281(n+1)]]+n+1` -/
def P14719406277994656904.Spec : Prop :=
  ∀ n, P14719406277994656904.a n = A217330 n

end A217330

/-! ## A217330.P17766636424118705484

`(A092353(n)+A092352(n))/2`
-/

namespace A217330.P17766636424118705484
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092353 n + A092352 n : ℚ) / 2

end

end A217330.P17766636424118705484

namespace A217330

/-- `(A092353(n)+A092352(n))/2` -/
def P17766636424118705484.Spec : Prop :=
  ∀ n, P17766636424118705484.a n = (A217330 n : ℚ)

end A217330

/-! ## A217330.P5232520077365629424

`∑[A000326(A008620(n))]%A084377(n)`
-/

namespace A217330.P5232520077365629424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A084377 n)

end

end A217330.P5232520077365629424

namespace A217330

/-- `∑[A000326(A008620(n))]%A084377(n)` -/
def P5232520077365629424.Spec : Prop :=
  ∀ n, P5232520077365629424.a n = A217330 n

end A217330

/-! ## A217330.P11876654614050467433

`A000027(∑[A000326(ceil((n+1)/3))])`
-/

namespace A217330.P11876654614050467433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 ⌈(n + 1 : ℚ) / 3⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217330.P11876654614050467433

namespace A217330

/-- `A000027(∑[A000326(ceil((n+1)/3))])` -/
def P11876654614050467433.Spec : Prop :=
  ∀ n, P11876654614050467433.a n = A217330 n

end A217330

/-! ## A217330.P2968099287059561665

`∑[A000326(A008620(n))]*A046978((2*n+1)²)`
-/

namespace A217330.P2968099287059561665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A046978 ((2 * n + 1) ^ 2)

end

end A217330.P2968099287059561665

namespace A217330

/-- `∑[A000326(A008620(n))]*A046978((2*n+1)²)` -/
def P2968099287059561665.Spec : Prop :=
  ∀ n, P2968099287059561665.a n = A217330 n

end A217330

/-!
# A217331: Number of inequivalent ways to color a 3 X 3 checkerboard using at most n colors allowing rotations and reflections.

The programs for A217331, the canonical program `A217331.P9158318644347525621` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217331 has offset 0).

The definition of A217331 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217331.P9158318644347525621

`(n^9+n^5+2*n^3+4*n^6)/8`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A217331

/-- `(n^9+n^5+2*n^3+4*n^6)/8` -/
def P9158318644347525621.Spec : Prop :=
  ∀ n, P9158318644347525621.a n = (A217331 n : ℚ)

end A217331

/-! ## A217331.P8984538501703017273

`floor((A282613(n)+A001014(n))/2)`
-/

namespace A217331.P8984538501703017273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A282613 n + A001014 n : ℚ) / 2⌋

end

end A217331.P8984538501703017273

namespace A217331

/-- `floor((A282613(n)+A001014(n))/2)` -/
def P8984538501703017273.Spec : Prop :=
  ∀ n, P8984538501703017273.a n = A217331 n

end A217331

/-! ## A217331.P8853615944657543465

`(A282613(n)+A001014(n))/2*A057427(n)`
-/

namespace A217331.P8853615944657543465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A282613 n + A001014 n : ℚ) / 2 * (A057427 n : ℚ)

end

end A217331.P8853615944657543465

namespace A217331

/-- `(A282613(n)+A001014(n))/2*A057427(n)` -/
def P8853615944657543465.Spec : Prop :=
  ∀ n, P8853615944657543465.a n = (A217331 n : ℚ)

end A217331

/-! ## A217331.P11706595056711454946

`lcm((A282613(n)+A001014(n))/2, A000217(n))`
-/

namespace A217331.P11706595056711454946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (SequenceMachineLib.roundAway ((A282613 n + A001014 n : ℚ) / 2)) (A000217 n)

end

end A217331.P11706595056711454946

namespace A217331

/-- `lcm((A282613(n)+A001014(n))/2, A000217(n))` -/
def P11706595056711454946.Spec : Prop :=
  ∀ n, (P11706595056711454946.a n : ℤ) = A217331 n

end A217331

/-! ## A217331.P6421581458319710202

`((A282613(n)+A001014(n))/2)%A003824(n+1)`
-/

namespace A217331.P6421581458319710202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A282613 n + A001014 n : ℚ) / 2)) (A003824 (n + 1))

end

end A217331.P6421581458319710202

namespace A217331

/-- `((A282613(n)+A001014(n))/2)%A003824(n+1)` -/
def P6421581458319710202.Spec : Prop :=
  ∀ n, P6421581458319710202.a n = A217331 n

end A217331

/-!
# A217332: Orders n of Hadamard cyclic difference sets.

The programs for A217332, there is no canonical definition to state claims against.
-/

/-! ## A217332.P12775601450365173364

`lt[A000010(A143862(n)), A234957(n+1)²]`
-/

namespace A217332.P12775601450365173364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A143862 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234957 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A217332.P12775601450365173364

/-! ## A217332.P13021079363934942679

`lt[A103314(n), A234957(n+1)^4]`
-/

namespace A217332.P13021079363934942679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103314 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234957 (n + 1) ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A217332.P13021079363934942679

/-! ## A217332.P5252736591111765849

`lt[A103314(n), A051273(A000188(n+1))]`
-/

namespace A217332.P5252736591111765849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103314 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051273 (A000188 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A217332.P5252736591111765849

/-! ## A217332.P12590749888363056937

`∩[A118894(n+1), A140297(n+1)]`
-/

namespace A217332.P12590749888363056937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118894 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140297 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217332.P12590749888363056937

/-! ## A217332.P18174772578413739167

`eq[A102560(n), A176740(A078898(n))]`
-/

namespace A217332.P18174772578413739167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102560 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176740 (A078898 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217332.P18174772578413739167

/-!
# A217333: G.f.: exp( Sum_{n>=1} x^n/n * Sum_{k=0..n} binomial(n,k)^2 * x^k/(1-x)^k ).

The programs for A217333, there is no canonical definition to state claims against.
-/

/-! ## A217333.P7324344267687136408

`A307788(n+1)`
-/

namespace A217333.P7324344267687136408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307788 (n + 1)

end

end A217333.P7324344267687136408

/-! ## A217333.P744360569621941981

`A025273(n+3)`
-/

namespace A217333.P744360569621941981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025273 (n + 3)

end

end A217333.P744360569621941981

/-! ## A217333.P7817611808574975542

`or(char[1], A307788(-xor(n, -1)))`
-/

namespace A217333.P7817611808574975542
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A307788 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A217333.P7817611808574975542

/-! ## A217333.P6577953043566284483

`A307788(-xor(n, -1))-A010673(2*n)`
-/

namespace A217333.P6577953043566284483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307788 (-Int.xor (n : ℤ) (-1)).toNat - A010673 (2 * n)

end

end A217333.P6577953043566284483

/-! ## A217333.P5336820112146875369

`A307788(-xor(n, -1))-A188432(A046109(n))`
-/

namespace A217333.P5336820112146875369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307788 (-Int.xor (n : ℤ) (-1)).toNat - A188432 (A046109 n).toNat

end

end A217333.P5336820112146875369

/-! ## A217333.P17786023572708774585

`A014963(A008458(n))*A307788(-xor(n, -1))`
-/

namespace A217333.P17786023572708774585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A008458 n).toNat * A307788 (-Int.xor (n : ℤ) (-1)).toNat

end

end A217333.P17786023572708774585

/-!
# A217334: G.f.: exp( Sum_{n>=1} (2*sigma(n^2) - sigma(n)^2 - sigma(n,2))/2 * x^n/n ).

The programs for A217334, there is no canonical definition to state claims against.
-/

/-! ## A217334.P15779235591199718008

`A000001(A212386(n))-A000001(n)`
-/

namespace A217334.P15779235591199718008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A212386 n).toNat - A000001 n

end

end A217334.P15779235591199718008

/-! ## A217334.P15271353461820455724

`A000001(A333883(n))-A000001(n)`
-/

namespace A217334.P15271353461820455724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A333883 n).toNat - A000001 n

end

end A217334.P15271353461820455724

/-! ## A217334.P830261777301131959

`A000001(A146220(n+1))-A000001(n)`
-/

namespace A217334.P830261777301131959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A146220 (n + 1)).toNat - A000001 n

end

end A217334.P830261777301131959

/-! ## A217334.P4586546615167353025

`A238877(A147197(n+1))-A000001(n)`
-/

namespace A217334.P4586546615167353025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238877 (A147197 (n + 1)).toNat - A000001 n

end

end A217334.P4586546615167353025

/-! ## A217334.P15602374628748141606

`A000001(A326323(3*n))-A000001(n)`
-/

namespace A217334.P15602374628748141606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (A326323 (3 * n)).toNat - A000001 n

end

end A217334.P15602374628748141606

/-!
# A217336: a(n) = 3^(-1+floor(n/2))*A(n), where A(n) = 3*A(n-1) + A(n-2) - A(n-3)/3 with A(0)=A(1)=3, A(2)=11.

The programs for A217336, there is no canonical definition to state claims against.
-/

/-! ## A217336.P8542432439198216479

`A193073(A000522(n))*A216034(n)`
-/

namespace A217336.P8542432439198216479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193073 (A000522 n).toNat * A216034 n

end

end A217336.P8542432439198216479

/-! ## A217336.P10591874563231260854

`A008311(n)*A195817(A216034(n))`
-/

namespace A217336.P10591874563231260854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008311 n * A195817 (A216034 n).toNat

end

end A217336.P10591874563231260854

/-! ## A217336.P13457845604407072058

`A004719(A216034(n))*A216319(n+1)`
-/

namespace A217336.P13457845604407072058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (A216034 n).toNat * A216319 (n + 1)

end

end A217336.P13457845604407072058

/-!
# A217338: Number of inequivalent ways to color a 4 X 4 checkerboard using at most n colors allowing rotations and reflections.

The programs for A217338, the canonical program `A217338.P11988155531580652792` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217338 has offset 0).

The definition of A217338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217338.P11988155531580652792

`(n^16+2*n^4+3*n^8+2*n^10)/8`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A217338

/-- `(n^16+2*n^4+3*n^8+2*n^10)/8` -/
def P11988155531580652792.Spec : Prop :=
  ∀ n, P11988155531580652792.a n = (A217338 n : ℚ)

end A217338

/-! ## A217338.P4989736994677872948

`A343097(A056000(n)+14)`
-/

namespace A217338.P4989736994677872948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (A056000 n + 14).toNat

end

end A217338.P4989736994677872948

namespace A217338

/-- `A343097(A056000(n)+14)` -/
def P4989736994677872948.Spec : Prop :=
  ∀ n, P4989736994677872948.a n = A217338 n

end A217338

/-! ## A217338.P16893099565687327875

`A343097(eq[4, A002262(n)])`
-/

namespace A217338.P16893099565687327875
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217338.P16893099565687327875

namespace A217338

/-- `A343097(eq[4, A002262(n)])` -/
def P16893099565687327875.Spec : Prop :=
  ∀ n, P16893099565687327875.a n = A217338 n

end A217338

/-! ## A217338.P9700329867561252751

`A343097(eq[4, A144328(n+1)])`
-/

namespace A217338.P9700329867561252751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217338.P9700329867561252751

namespace A217338

/-- `A343097(eq[4, A144328(n+1)])` -/
def P9700329867561252751.Spec : Prop :=
  ∀ n, P9700329867561252751.a n = A217338 n

end A217338

/-! ## A217338.P7420048410426163774

`A343097(eq[5, A002260(n+1)])`
-/

namespace A217338.P7420048410426163774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343097 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217338.P7420048410426163774

namespace A217338

/-- `A343097(eq[5, A002260(n+1)])` -/
def P7420048410426163774.Spec : Prop :=
  ∀ n, P7420048410426163774.a n = A217338 n

end A217338

/-!
# A217339: Number of n X n arrays of occupancy after each element moves to some horizontal or vertical neighbor but without 2-loops.

The programs for A217339, there is no canonical definition to state claims against.
-/

/-! ## A217339.P7001635898826412570

`A217346(∑[4*n]+1)`
-/

namespace A217339.P7001635898826412570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217346 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A217339.P7001635898826412570

/-!
# A217340: Number of n X 2 arrays of occupancy after each element moves to some horizontal or vertical neighbor but without 2-loops.

The programs for A217340, the canonical program `A217340.P17654265812203887852` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217340 has offset 1).

The definition of A217340 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 150 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A217340.P17654265812203887852

`7*a(n-1)-11*a(n-2)+a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=7, a(3)=38`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A217340

/-- `7*a(n-1)-11*a(n-2)+a(n-3)-a(n-4)` -/
def P17654265812203887852.Spec : Prop :=
  ∀ n, P17654265812203887852.a n = A217340 (n + 1)

theorem P17654265812203887852.correct : P17654265812203887852.Spec := by
  intro n
  simp only [A217340, Nat.add_sub_cancel]

end A217340

/-! ## A217340.P15207105022055194832

`A221388(∑[n+2]+3)`
-/

namespace A217340.P15207105022055194832
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221388 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A217340.P15207105022055194832

namespace A217340

/-- `A221388(∑[n+2]+3)` -/
def P15207105022055194832.Spec : Prop :=
  ∀ n, P15207105022055194832.a n = A217340 (n + 1)

end A217340

/-! ## A217340.P10808302171841663673

`record[A221388(n+1)/A288972(n)]`
-/

namespace A217340.P10808302171841663673
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A221388 (n + 1) : ℚ) / (A288972 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217340.P10808302171841663673

namespace A217340

/-- `record[A221388(n+1)/A288972(n)]` -/
def P10808302171841663673.Spec : Prop :=
  ∀ n, P10808302171841663673.a n = (A217340 (n + 1) : ℚ)

end A217340

/-! ## A217340.P6649905888613670115

`A217227(∑[n+1]+2)`
-/

namespace A217340.P6649905888613670115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217227 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A217340.P6649905888613670115

namespace A217340

/-- `A217227(∑[n+1]+2)` -/
def P6649905888613670115.Spec : Prop :=
  ∀ n, P6649905888613670115.a n = A217340 (n + 1)

end A217340

/-! ## A217340.P7675877628866531340

`A217346(∑[n+1]+2)`
-/

namespace A217340.P7675877628866531340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217346 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A217340.P7675877628866531340

namespace A217340

/-- `A217346(∑[n+1]+2)` -/
def P7675877628866531340.Spec : Prop :=
  ∀ n, P7675877628866531340.a n = A217340 (n + 1)

end A217340

/-!
# A217341: Number of nX3 arrays of occupancy after each element moves to some horizontal or vertical neighbor but without 2-loops.

The programs for A217341, there is no canonical definition to state claims against.
-/

/-! ## A217341.P8310264827420575789

`A217346(∑[n+2]+4)`
-/

namespace A217341.P8310264827420575789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217346 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A217341.P8310264827420575789

/-! ## A217341.P6645123041670272227

`A217346(A167614(n+1))+A065744(n)`
-/

namespace A217341.P6645123041670272227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217346 (A167614 (n + 1)).toNat + A065744 n

end

end A217341.P6645123041670272227

/-! ## A217341.P2353072909693494309

`A217346(A167614(n+1))+A171765(n)`
-/

namespace A217341.P2353072909693494309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217346 (A167614 (n + 1)).toNat + A171765 n

end

end A217341.P2353072909693494309

/-! ## A217341.P4745223646709516142

`A217346(A167614(n+1))+A185255(n)`
-/

namespace A217341.P4745223646709516142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217346 (A167614 (n + 1)).toNat + A185255 n

end

end A217341.P4745223646709516142

/-! ## A217341.P5049544496577131213

`A178334(n)*A217346(A167614(n+1))`
-/

namespace A217341.P5049544496577131213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A217346 (A167614 (n + 1)).toNat

end

end A217341.P5049544496577131213

/-!
# A217342: Number of nX4 arrays of occupancy after each element moves to some horizontal or vertical neighbor but without 2-loops.

The programs for A217342, there is no canonical definition to state claims against.
-/

/-! ## A217342.P9264399466315941144

`A217346(∑[n+3]+7)`
-/

namespace A217342.P9264399466315941144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217346 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A217342.P9264399466315941144

/-! ## A217342.P10167512789021697740

`and(-1, A217346(A141214(n+1)))`
-/

namespace A217342.P10167512789021697740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A217346 (A141214 (n + 1)).toNat)

end

end A217342.P10167512789021697740

/-! ## A217342.P8381327554178420528

`A217346(A141214(n+1))+A026816(n)`
-/

namespace A217342.P8381327554178420528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217346 (A141214 (n + 1)).toNat + A026816 n

end

end A217342.P8381327554178420528

/-! ## A217342.P17842502407000431212

`A217346(A141214(n+1))+A065744(n)`
-/

namespace A217342.P17842502407000431212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217346 (A141214 (n + 1)).toNat + A065744 n

end

end A217342.P17842502407000431212

/-! ## A217342.P4406298436648665943

`A217346(A141214(n+1))+A066035(n)`
-/

namespace A217342.P4406298436648665943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217346 (A141214 (n + 1)).toNat + A066035 n

end

end A217342.P4406298436648665943

/-!
# A217343: Number of n X 5 arrays of occupancy after each element moves to some horizontal or vertical neighbor but without 2-loops.

The programs for A217343, there is no canonical definition to state claims against.
-/

/-! ## A217343.P17774105638724911783

`A217346(A374005(n+1))`
-/

namespace A217343.P17774105638724911783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217346 (A374005 (n + 1)).toNat

end

end A217343.P17774105638724911783

/-! ## A217343.P8035686324872969334

`A217346(A155212(n)+13)`
-/

namespace A217343.P8035686324872969334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217346 (A155212 n + 13).toNat

end

end A217343.P8035686324872969334

/-! ## A217343.P16512795817357075125

`A217346(A056000(n)+15)`
-/

namespace A217343.P16512795817357075125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217346 (A056000 n + 15).toNat

end

end A217343.P16512795817357075125

/-! ## A217343.P1170138827299808160

`A217346(eq[7, A066657(n)])`
-/

namespace A217343.P1170138827299808160
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217346 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217343.P1170138827299808160

/-! ## A217343.P14673067428981252992

`A217346(eq[6, A131818(n+1)])`
-/

namespace A217343.P14673067428981252992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217346 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A217343.P14673067428981252992

/-!
# A217344: Number of nX6 arrays of occupancy after each element moves to some horizontal or vertical neighbor but without 2-loops.

The programs for A217344, there is no canonical definition to state claims against.
-/

/-! ## A217344.P2458070046478614629

`A217346(A374007(n+1))`
-/

namespace A217344.P2458070046478614629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217346 (A374007 (n + 1)).toNat

end

end A217344.P2458070046478614629

/-! ## A217344.P13601279360823612673

`A217346(A055999(n+2)+12)`
-/

namespace A217344.P13601279360823612673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217346 (A055999 (n + 2) + 12).toNat

end

end A217344.P13601279360823612673

/-! ## A217344.P12525897552065702316

`A217346(A052905(n+3))`
-/

namespace A217344.P12525897552065702316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217346 (A052905 (n + 3)).toNat

end

end A217344.P12525897552065702316

/-!
# A217345: Number of n X 7 arrays of occupancy after each element moves to some horizontal or vertical neighbor but without 2-loops.

The programs for A217345, there is no canonical definition to state claims against.
-/

/-! ## A217345.P7953659453194617017

`A217346(A374008(n+1))`
-/

namespace A217345.P7953659453194617017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217346 (A374008 (n + 1)).toNat

end

end A217345.P7953659453194617017

/-!
# A217346: T(n,k) = Number of n X k arrays of occupancy after each element moves to some horizontal or vertical neighbor but without 2-loops.

The programs for A217346, there is no canonical definition to state claims against.
-/

/-! ## A217346.P12981265581453484602

`A076682(A099927(n))`
-/

namespace A217346.P12981265581453484602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076682 (A099927 n).toNat

end

end A217346.P12981265581453484602

/-! ## A217346.P3581052390700041603

`A191979(A008300(n))`
-/

namespace A217346.P3581052390700041603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191979 (A008300 n).toNat

end

end A217346.P3581052390700041603

/-! ## A217346.P1292186611378170298

`A191979(A009963(n))`
-/

namespace A217346.P1292186611378170298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191979 (A009963 n).toNat

end

end A217346.P1292186611378170298

/-! ## A217346.P7645292802029977606

`A218825(A022185(n))`
-/

namespace A217346.P7645292802029977606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218825 (A022185 n).toNat

end

end A217346.P7645292802029977606

/-! ## A217346.P12279002143711424961

`A183137(A059328(n))`
-/

namespace A217346.P12279002143711424961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183137 (A059328 n).toNat

end

end A217346.P12279002143711424961

/-!
# A217348: Numbers k such that 4^k - 5 is prime.

The programs for A217348, there is no canonical definition to state claims against.
-/

/-! ## A217348.P17715532307199079707

`A059608(n+2)/2`
-/

namespace A217348.P17715532307199079707
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059608 (n + 2) : ℚ) / 2

end

end A217348.P17715532307199079707

/-! ## A217348.P10286516568827437584

`2^A008683(A006450(n+1))*A059608(n+2)`
-/

namespace A217348.P10286516568827437584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A006450 (n + 1)).toNat : ℤ) * (A059608 (n + 2) : ℚ)

end

end A217348.P10286516568827437584

/-! ## A217348.P3481061601376086929

`∑[A014682(Δ[A059608(n+1)])]`
-/

namespace A217348.P3481061601376086929
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059608 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217348.P3481061601376086929

/-! ## A217348.P16781146040305261098

`A014682(A059608(n+2))`
-/

namespace A217348.P16781146040305261098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A059608 (n + 2)).toNat

end

end A217348.P16781146040305261098

/-! ## A217348.P8226486228519026523

`∑[A001281(Δ[A059608(n+1)])]`
-/

namespace A217348.P8226486228519026523
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059608 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217348.P8226486228519026523

/-!
# A217349: Numbers k such that 4^k + 7 is prime.

The programs for A217349, there is no canonical definition to state claims against.
-/

/-! ## A217349.P16606894904158208002

`A057195(n+1)/2`
-/

namespace A217349.P16606894904158208002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057195 (n + 1) : ℚ) / 2

end

end A217349.P16606894904158208002

/-! ## A217349.P5091223770284462468

`record[A057195(A351085(n))/2]`
-/

namespace A217349.P5091223770284462468
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A057195 (A351085 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217349.P5091223770284462468

/-! ## A217349.P3913249531214417176

`A014682(A057195(n+1))`
-/

namespace A217349.P3913249531214417176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A057195 (n + 1)).toNat

end

end A217349.P3913249531214417176

/-! ## A217349.P2887159226831299401

`A090331(lcm(2, A057195(n+1)))`
-/

namespace A217349.P2887159226831299401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090331 (Int.lcm 2 (A057195 (n + 1)))

end

end A217349.P2887159226831299401

/-! ## A217349.P10388578177379530530

`A090331(A057195(n+1))%A189560(n)`
-/

namespace A217349.P10388578177379530530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A090331 (A057195 (n + 1)).toNat) (A189560 n)

end

end A217349.P10388578177379530530

/-!
# A217350: Numbers k such that 4^k + 9 is prime.

The programs for A217350, there is no canonical definition to state claims against.
-/

/-! ## A217350.P9685364592275599118

`record[A097140(A057196(n+1))]`
-/

namespace A217350.P9685364592275599118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A057196 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217350.P9685364592275599118

/-! ## A217350.P18021902348624655365

`record[A142150(A057196(n+2))]`
-/

namespace A217350.P18021902348624655365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A057196 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217350.P18021902348624655365

/-! ## A217350.P6057090852488858047

`record[A090331(A057196(n+3))]`
-/

namespace A217350.P6057090852488858047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090331 (A057196 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217350.P6057090852488858047

/-! ## A217350.P16403722112039466954

`eq[A158515(n), A173854(A004277(n))]`
-/

namespace A217350.P16403722112039466954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158515 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173854 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217350.P16403722112039466954

/-! ## A217350.P16216682460143855083

`eq[A158515(n), A173854(A005843(n))]`
-/

namespace A217350.P16216682460143855083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158515 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173854 (A005843 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217350.P16216682460143855083

/-!
# A217351: Numbers k such that 6^k + 7 is prime.

The programs for A217351, there is no canonical definition to state claims against.
-/

/-! ## A217351.P10648397190903810647

`eq[7%A013600(n), A000038(n)]`
-/

namespace A217351.P10648397190903810647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 7 (A013600 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217351.P10648397190903810647

/-! ## A217351.P13044034480796300553

`eq[A000007(n), A008676(A013600(n))]`
-/

namespace A217351.P13044034480796300553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A013600 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217351.P13044034480796300553

/-! ## A217351.P1204199054235239396

`eq[A000038(n), A008676(A013600(n))]`
-/

namespace A217351.P1204199054235239396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A013600 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217351.P1204199054235239396

/-! ## A217351.P2545163970356537632

`eq[A008676(A013600(n)), A151878(n)]`
-/

namespace A217351.P2545163970356537632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A013600 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151878 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217351.P2545163970356537632

/-! ## A217351.P12206946385616726018

`eq[A008676(A013600(n)), A151933(n)]`
-/

namespace A217351.P12206946385616726018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (A013600 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151933 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217351.P12206946385616726018

/-!
# A217352: Numbers k such that 6^k - 7 is prime.

The programs for A217352, there is no canonical definition to state claims against.
-/

/-! ## A217352.P1456816860111197084

`val(ceil(A290022(n+1)/4)+1, 3)`
-/

namespace A217352.P1456816860111197084
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (⌈(A290022 (n + 1) : ℚ) / 4⌉ + 1).toNat 3

end

end A217352.P1456816860111197084

/-! ## A217352.P6668960334279449161

`val(Δ[A290022(n+1)], 2)`
-/

namespace A217352.P6668960334279449161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290022 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (n + 1) - f1 n).toNat 2

end

end A217352.P6668960334279449161

/-!
# A217353: Numbers k such that 8^k - 3 is prime.

The programs for A217353, there is no canonical definition to state claims against.
-/

/-! ## A217353.P224863776787121943

`record[A135997(A050414(n+1))]`
-/

namespace A217353.P224863776787121943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A050414 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217353.P224863776787121943

/-! ## A217353.P2936659654977059011

`eq[3, A057673(A008486(n))]`
-/

namespace A217353.P2936659654977059011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217353.P2936659654977059011

/-! ## A217353.P17457061192580680564

`eq[A057673(A008585(n)), A122553(n)]`
-/

namespace A217353.P17457061192580680564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 (A008585 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217353.P17457061192580680564

/-! ## A217353.P18271845078089040584

`eq[A057673(A008585(n)), A135203(n+1)]`
-/

namespace A217353.P18271845078089040584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 (A008585 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135203 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217353.P18271845078089040584

/-! ## A217353.P5118101586454137778

`eq[A057673(A008585(n)), A157532(n+1)]`
-/

namespace A217353.P5118101586454137778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057673 (A008585 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157532 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217353.P5118101586454137778

/-!
# A217354: Numbers n such that 8^n + 3 is prime.

The programs for A217354, there is no canonical definition to state claims against.
-/

/-! ## A217354.P13733859626599294880

`record[A078898(A004396(A057732(n+1)))]`
-/

namespace A217354.P13733859626599294880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A004396 (A057732 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217354.P13733859626599294880

/-! ## A217354.P8935320894775259151

`eq[3, A013597(3*n)]`
-/

namespace A217354.P8935320894775259151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013597 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217354.P8935320894775259151

/-! ## A217354.P8149163872183919191

`eq[3, A092131(A008486(n))]`
-/

namespace A217354.P8149163872183919191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092131 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217354.P8149163872183919191

/-! ## A217354.P11698457343383417055

`eq[A158388(n), A159266(A008486(n))]`
-/

namespace A217354.P11698457343383417055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159266 (A008486 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A217354.P11698457343383417055

/-! ## A217354.P16630791210771827861

`eq[3, A127795(n)]`
-/

namespace A217354.P16630791210771827861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127795 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217354.P16630791210771827861

/-!
# A217356: Numbers n such that 8^n - 5 is prime.

The programs for A217356, there is no canonical definition to state claims against.
-/

/-! ## A217356.P17797180532760169891

`record[A135997(A059608(n+1))]`
-/

namespace A217356.P17797180532760169891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135997 (A059608 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217356.P17797180532760169891

/-! ## A217356.P11138240265401115794

`A064458(A366368(n))+A005942(n)`
-/

namespace A217356.P11138240265401115794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064458 (A366368 n).toNat + A005942 n

end

end A217356.P11138240265401115794

/-!
# A217358: Series reversion of x-x^3-x^4.

The programs for A217358, there is no canonical definition to state claims against.
-/

/-! ## A217358.P6182215288330793350

`A104578(∑[4*n])/(n+1)`
-/

namespace A217358.P6182215288330793350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104578 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)

end

end A217358.P6182215288330793350

/-! ## A217358.P5483362833631115006

`ceil(A104578(A046092(n))/(n+1))`
-/

namespace A217358.P5483362833631115006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A104578 (A046092 n).toNat : ℚ) / (n + 1 : ℚ)⌉

end

end A217358.P5483362833631115006

/-! ## A217358.P15360696052615218674

`A088917(8*n+11)+A104578(A046092(n))/(n+1)`
-/

namespace A217358.P15360696052615218674
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088917 (8 * n + 11) : ℚ) + (A104578 (A046092 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A217358.P15360696052615218674

/-! ## A217358.P3497629977571971165

`C(A028310(n)-n, 2)+A104578(A046092(n))/(n+1)`
-/

namespace A217358.P3497629977571971165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A028310 n - (n : ℤ)).toNat 2 : ℚ) + (A104578 (A046092 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A217358.P3497629977571971165

/-!
# A217360: a(n) = 2^n*binomial(4*n, n)/(3*n+1).

The programs for A217360, the canonical program `A217360.P18313722497906122328` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217360 has offset 0).

The definition of A217360 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217360.P2927520259870174698

`2^n*A002293(n)`
-/

namespace A217360.P2927520259870174698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002293 n

end

end A217360.P2927520259870174698

namespace A217360

/-- `2^n*A002293(n)` -/
def P2927520259870174698.Spec : Prop :=
  ∀ n, P2927520259870174698.a n = A217360 n

end A217360

/-! ## A217360.P753627982776499261

`2^n*C(4*n, n)/(3*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A217360.P753627982776499261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n * Nat.choose (4 * n) n : ℚ) / (3 * n + 1 : ℚ)

end

end A217360.P753627982776499261

namespace A217360

/-- `2^n*C(4*n, n)/(3*n+1)` -/
def P753627982776499261.Spec : Prop :=
  ∀ n, P753627982776499261.a n = (A217360 n : ℚ)

end A217360

/-! ## A217360.P18313722497906122328

`8^n*A060706(n)/A100089(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A217360

/-- `8^n*A060706(n)/A100089(n)` -/
def P18313722497906122328.Spec : Prop :=
  ∀ n, P18313722497906122328.a n = (A217360 n : ℚ)

end A217360

/-! ## A217360.P211208979766824916

`A002293(n)*A011782(n+1)`
-/

namespace A217360.P211208979766824916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A011782 (n + 1)

end

end A217360.P211208979766824916

namespace A217360

/-- `A002293(n)*A011782(n+1)` -/
def P211208979766824916.Spec : Prop :=
  ∀ n, P211208979766824916.a n = A217360 n

end A217360

/-! ## A217360.P3781788188171183997

`A002293(n)*A131577(n+1)`
-/

namespace A217360.P3781788188171183997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A131577 (n + 1)

end

end A217360.P3781788188171183997

namespace A217360

/-- `A002293(n)*A131577(n+1)` -/
def P3781788188171183997.Spec : Prop :=
  ∀ n, P3781788188171183997.a n = A217360 n

end A217360

/-! ## A217360.P10373418160557292626

`A002293(n)*A016116(2*n)`
-/

namespace A217360.P10373418160557292626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A016116 (2 * n)

end

end A217360.P10373418160557292626

namespace A217360

/-- `A002293(n)*A016116(2*n)` -/
def P10373418160557292626.Spec : Prop :=
  ∀ n, P10373418160557292626.a n = A217360 n

end A217360

/-! ## A217360.P1391846606276585837

`2^n*A069270(A000096(n))`
-/

namespace A217360.P1391846606276585837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A069270 (A000096 n).toNat

end

end A217360.P1391846606276585837

namespace A217360

/-- `2^n*A069270(A000096(n))` -/
def P1391846606276585837.Spec : Prop :=
  ∀ n, P1391846606276585837.a n = A217360 n

end A217360

/-! ## A217360.P9039396694828097196

`floor(sqrt(A000302(n))*A002293(n))`
-/

namespace A217360.P9039396694828097196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (A000302 n : ℝ) * (A002293 n : ℝ)⌋

end

end A217360.P9039396694828097196

namespace A217360

/-- `floor(sqrt(A000302(n))*A002293(n))` -/
def P9039396694828097196.Spec : Prop :=
  ∀ n, P9039396694828097196.a n = A217360 n

end A217360

/-! ## A217360.P7161467236998796699

`2^n*A069270(record[A061579(n)])`
-/

namespace A217360.P7161467236998796699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A069270 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A217360.P7161467236998796699

namespace A217360

/-- `2^n*A069270(record[A061579(n)])` -/
def P7161467236998796699.Spec : Prop :=
  ∀ n, P7161467236998796699.a n = A217360 n

end A217360

/-! ## A217360.P4643664236997531331

`A002293(n)*A045674(2*n+1)`
-/

namespace A217360.P4643664236997531331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002293 n * A045674 (2 * n + 1)

end

end A217360.P4643664236997531331

namespace A217360

/-- `A002293(n)*A045674(2*n+1)` -/
def P4643664236997531331.Spec : Prop :=
  ∀ n, P4643664236997531331.a n = A217360 n

end A217360

/-!
# A217362: Series reversion of x + 2*x^2 + x^4.

The programs for A217362, there is no canonical definition to state claims against.
-/

/-! ## A217362.P18292792108933660211

`A034947(A372463(n))*A389548(n)`
-/

namespace A217362.P18292792108933660211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (A372463 n).toNat * A389548 n

end

end A217362.P18292792108933660211

/-!
# A217363: Series reversion of x - 3*x^3.

The programs for A217363, the canonical program `A217363.P13716447321066378103` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217363 has offset 1).

The definition of A217363 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217363.P13716447321066378103

`3^n*A001764(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A217363

/-- `3^n*A001764(n)` -/
def P13716447321066378103.Spec : Prop :=
  ∀ n, P13716447321066378103.a n = A217363 (n + 1)

theorem P13716447321066378103.correct : P13716447321066378103.Spec := by
  intro n
  simp only [A217363, Nat.add_sub_cancel]

end A217363

/-! ## A217363.P569440622641895150

`C(3*n, n)/(2*n+1)*3^n`
-/

namespace A217363.P569440622641895150
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℚ) / (2 * n + 1 : ℚ) * (3 ^ n : ℚ)

end

end A217363.P569440622641895150

namespace A217363

/-- `C(3*n, n)/(2*n+1)*3^n` -/
def P569440622641895150.Spec : Prop :=
  ∀ n, P569440622641895150.a n = (A217363 (n + 1) : ℚ)

end A217363

/-! ## A217363.P13423230044148623737

`3^n*A047749(2*n)`
-/

namespace A217363.P13423230044148623737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A047749 (2 * n)

end

end A217363.P13423230044148623737

namespace A217363

/-- `3^n*A047749(2*n)` -/
def P13423230044148623737.Spec : Prop :=
  ∀ n, P13423230044148623737.a n = A217363 (n + 1)

end A217363

/-! ## A217363.P127196938268820711

`3^n*A094021(∑[n]+1)`
-/

namespace A217363.P127196938268820711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A094021 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A217363.P127196938268820711

namespace A217363

/-- `3^n*A094021(∑[n]+1)` -/
def P127196938268820711.Spec : Prop :=
  ∀ n, P127196938268820711.a n = A217363 (n + 1)

end A217363

/-! ## A217363.P4333003786191805902

`A174687(n)/(n+1)*3^n`
-/

namespace A217363.P4333003786191805902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A174687 n : ℚ) / (n + 1 : ℚ) * (3 ^ n : ℚ)

end

end A217363.P4333003786191805902

namespace A217363

/-- `A174687(n)/(n+1)*3^n` -/
def P4333003786191805902.Spec : Prop :=
  ∀ n, P4333003786191805902.a n = (A217363 (n + 1) : ℚ)

end A217363

/-! ## A217363.P4308975358776512115

`A052183(n)/(n+2)*3^n`
-/

namespace A217363.P4308975358776512115
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052183 n : ℚ) / (n + 2 : ℚ) * (3 ^ n : ℚ)

end

end A217363.P4308975358776512115

namespace A217363

/-- `A052183(n)/(n+2)*3^n` -/
def P4308975358776512115.Spec : Prop :=
  ∀ n, P4308975358776512115.a n = (A217363 (n + 1) : ℚ)

end A217363

/-! ## A217363.P12569205162332292535

`3^n*A047761(abs(1-2*n))`
-/

namespace A217363.P12569205162332292535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A047761 |1 - (2 * n : ℤ)|.toNat

end

end A217363.P12569205162332292535

namespace A217363

/-- `3^n*A047761(abs(1-2*n))` -/
def P12569205162332292535.Spec : Prop :=
  ∀ n, P12569205162332292535.a n = A217363 (n + 1)

end A217363

/-! ## A217363.P7241224626385446979

`3^n*ceil(A046646(n+1)/2)`
-/

namespace A217363.P7241224626385446979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * ⌈(A046646 (n + 1) : ℚ) / 2⌉

end

end A217363.P7241224626385446979

namespace A217363

/-- `3^n*ceil(A046646(n+1)/2)` -/
def P7241224626385446979.Spec : Prop :=
  ∀ n, P7241224626385446979.a n = A217363 (n + 1)

end A217363

/-! ## A217363.P12417790318731156256

`3^n*A243662(∑[n-1]+2)`
-/

namespace A217363.P12417790318731156256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A243662 (∑ j ∈ Finset.range (n + 1), f1 j + 2).toNat

end

end A217363.P12417790318731156256

namespace A217363

/-- `3^n*A243662(∑[n-1]+2)` -/
def P12417790318731156256.Spec : Prop :=
  ∀ n, P12417790318731156256.a n = A217363 (n + 1)

end A217363

/-! ## A217363.P10381413647417626970

`(n+1)/2*A000139(n)*3^n`
-/

namespace A217363.P10381413647417626970
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A000139 n : ℚ) * (3 ^ n : ℚ)

end

end A217363.P10381413647417626970

namespace A217363

/-- `(n+1)/2*A000139(n)*3^n` -/
def P10381413647417626970.Spec : Prop :=
  ∀ n, P10381413647417626970.a n = (A217363 (n + 1) : ℚ)

end A217363

/-!
# A217364: a(n) = 2^n*binomial(5*n, n)/(4*n+1).

The programs for A217364, the canonical program `A217364.P14074586151424103035` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217364 has offset 0).

The definition of A217364 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217364.P14074586151424103035

`2^n*C(5*n, n)/(4*n+1)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A217364

/-- `2^n*C(5*n, n)/(4*n+1)` -/
def P14074586151424103035.Spec : Prop :=
  ∀ n, P14074586151424103035.a n = (A217364 n : ℚ)

end A217364

/-! ## A217364.P11255909039031010798

`2^n*A002294(n)`
-/

namespace A217364.P11255909039031010798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A002294 n

end

end A217364.P11255909039031010798

namespace A217364

/-- `2^n*A002294(n)` -/
def P11255909039031010798.Spec : Prop :=
  ∀ n, P11255909039031010798.a n = A217364 n

end A217364

/-! ## A217364.P16822570951585357666

`A002294(n)*A065109(∑[n])`
-/

namespace A217364.P16822570951585357666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 n * A065109 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A217364.P16822570951585357666

namespace A217364

/-- `A002294(n)*A065109(∑[n])` -/
def P16822570951585357666.Spec : Prop :=
  ∀ n, P16822570951585357666.a n = A217364 n

end A217364

/-! ## A217364.P9156779481877770478

`A002294(n)*A102363(∑[n])`
-/

namespace A217364.P9156779481877770478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 n * A102363 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A217364.P9156779481877770478

namespace A217364

/-- `A002294(n)*A102363(∑[n])` -/
def P9156779481877770478.Spec : Prop :=
  ∀ n, P9156779481877770478.a n = A217364 n

end A217364

/-! ## A217364.P13830895885232372311

`A002294(n)*A011782(n+1)`
-/

namespace A217364.P13830895885232372311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 n * A011782 (n + 1)

end

end A217364.P13830895885232372311

namespace A217364

/-- `A002294(n)*A011782(n+1)` -/
def P13830895885232372311.Spec : Prop :=
  ∀ n, P13830895885232372311.a n = A217364 n

end A217364

/-! ## A217364.P7289768230196054893

`A002294(n)*A166444(n+2)`
-/

namespace A217364.P7289768230196054893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 n * A166444 (n + 2)

end

end A217364.P7289768230196054893

namespace A217364

/-- `A002294(n)*A166444(n+2)` -/
def P7289768230196054893.Spec : Prop :=
  ∀ n, P7289768230196054893.a n = A217364 n

end A217364

/-! ## A217364.P10328060256877355730

`A002294(n)*A130321(A000217(n))`
-/

namespace A217364.P10328060256877355730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 n * A130321 (A000217 n).toNat

end

end A217364.P10328060256877355730

namespace A217364

/-- `A002294(n)*A130321(A000217(n))` -/
def P10328060256877355730.Spec : Prop :=
  ∀ n, P10328060256877355730.a n = A217364 n

end A217364

/-! ## A217364.P2656390733883572215

`A002294(n)*A059268(A008586(∑[n]))`
-/

namespace A217364.P2656390733883572215
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 n * A059268 (A008586 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A217364.P2656390733883572215

namespace A217364

/-- `A002294(n)*A059268(A008586(∑[n]))` -/
def P2656390733883572215.Spec : Prop :=
  ∀ n, P2656390733883572215.a n = A217364 n

end A217364

/-! ## A217364.P15414075070670317742

`A002294(n)*A091320(A000217(n)+1)`
-/

namespace A217364.P15414075070670317742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002294 n * A091320 (A000217 n + 1).toNat

end

end A217364.P15414075070670317742

namespace A217364

/-- `A002294(n)*A091320(A000217(n)+1)` -/
def P15414075070670317742.Spec : Prop :=
  ∀ n, P15414075070670317742.a n = A217364 n

end A217364

/-!
# A217366: a(n) = ((n+6) / gcd(n+6,4)) * (n / gcd(n,4)).

The programs for A217366, the canonical program `A217366.P12122677536958344390` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217366 has offset 0).

The definition of A217366 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217366.P12122677536958344390

`8^(n%2-1)*n*(n+6)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A217366

/-- `8^(n%2-1)*n*(n+6)` -/
def P12122677536958344390.Spec : Prop :=
  ∀ n, P12122677536958344390.a n = (A217366 n : ℚ)

end A217366

/-! ## A217366.P9129420430167516166

`(n+6)/gcd(n+6, 4)*n/gcd(n, 4)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A217366.P9129420430167516166
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 6 : ℚ) / (Nat.gcd (n + 6) 4 : ℚ) * ((n : ℚ) / (Nat.gcd n 4 : ℚ))

end

end A217366.P9129420430167516166

namespace A217366

/-- `(n+6)/gcd(n+6, 4)*n/gcd(n, 4)` -/
def P9129420430167516166.Spec : Prop :=
  ∀ n, P9129420430167516166.a n = (A217366 n : ℚ)

end A217366

/-! ## A217366.P16308446169101294018

`(9-7*(-1)^n)/16*n*(n+6)`
-/

namespace A217366.P16308446169101294018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (9 - 7 * (-1) ^ n : ℚ) / 16 * (n : ℚ) * (n + 6 : ℚ)

end

end A217366.P16308446169101294018

namespace A217366

/-- `(9-7*(-1)^n)/16*n*(n+6)` -/
def P16308446169101294018.Spec : Prop :=
  ∀ n, P16308446169101294018.a n = (A217366 n : ℚ)

end A217366

/-! ## A217366.P15337073431214904952

`lcm(8, n*(n+6))/8`
-/

namespace A217366.P15337073431214904952
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 8 (n * (n + 6)) : ℚ) / 8

end

end A217366.P15337073431214904952

namespace A217366

/-- `lcm(8, n*(n+6))/8` -/
def P15337073431214904952.Spec : Prop :=
  ∀ n, P15337073431214904952.a n = (A217366 n : ℚ)

end A217366

/-! ## A217366.P6047800351885450100

`A028560(n)/A040019(n)`
-/

namespace A217366.P6047800351885450100
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028560 n : ℚ) / (A040019 n : ℚ)

end

end A217366.P6047800351885450100

namespace A217366

/-- `A028560(n)/A040019(n)` -/
def P6047800351885450100.Spec : Prop :=
  ∀ n, P6047800351885450100.a n = (A217366 n : ℚ)

end A217366

/-! ## A217366.P12333104301006568979

`A140681(n)/A040139(n)`
-/

namespace A217366.P12333104301006568979
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A140681 n : ℚ) / (A040139 n : ℚ)

end

end A217366.P12333104301006568979

namespace A217366

/-- `A140681(n)/A040139(n)` -/
def P12333104301006568979.Spec : Prop :=
  ∀ n, P12333104301006568979.a n = (A217366 n : ℚ)

end A217366

/-! ## A217366.P3209561963067211130

`A028560(n)/gcd(8, A005563(n))`
-/

namespace A217366.P3209561963067211130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028560 n : ℚ) / (Int.gcd 8 (A005563 n) : ℚ)

end

end A217366.P3209561963067211130

namespace A217366

/-- `A028560(n)/gcd(8, A005563(n))` -/
def P3209561963067211130.Spec : Prop :=
  ∀ n, P3209561963067211130.a n = (A217366 n : ℚ)

end A217366

/-! ## A217366.P13474575565517254469

`A064038(n+1)*A178242(n+1)/A181318(n+1)`
-/

namespace A217366.P13474575565517254469
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064038 (n + 1) * A178242 (n + 1) : ℚ) / (A181318 (n + 1) : ℚ)

end

end A217366.P13474575565517254469

namespace A217366

/-- `A064038(n+1)*A178242(n+1)/A181318(n+1)` -/
def P13474575565517254469.Spec : Prop :=
  ∀ n, P13474575565517254469.a n = (A217366 n : ℚ)

end A217366

/-! ## A217366.P9965919732996491555

`A198148(n+2)-A010689(n)`
-/

namespace A217366.P9965919732996491555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198148 (n + 2) - A010689 n

end

end A217366.P9965919732996491555

namespace A217366

/-- `A198148(n+2)-A010689(n)` -/
def P9965919732996491555.Spec : Prop :=
  ∀ n, P9965919732996491555.a n = A217366 n

end A217366

/-! ## A217366.P16688863962071149242

`A198148(n+2)-A021059(n+1)`
-/

namespace A217366.P16688863962071149242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198148 (n + 2) - A021059 (n + 1)

end

end A217366.P16688863962071149242

namespace A217366

/-- `A198148(n+2)-A021059(n+1)` -/
def P16688863962071149242.Spec : Prop :=
  ∀ n, P16688863962071149242.a n = A217366 n

end A217366

/-! ## A217366.P11208202176916726582

`gcd(n-A028563(n), A000096(A055999(n)))`
-/

namespace A217366.P11208202176916726582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n : ℤ) - A028563 n) (A000096 (A055999 n).toNat)

end

end A217366.P11208202176916726582

namespace A217366

/-- `gcd(n-A028563(n), A000096(A055999(n)))` -/
def P11208202176916726582.Spec : Prop :=
  ∀ n, (P11208202176916726582.a n : ℤ) = A217366 n

end A217366

/-!
# A217367: a(n) = ((n+7) / gcd(n+7,4)) * (n / gcd(n,4)).

The programs for A217367, the canonical program `A217367.P16782846006852178122` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A217367 has offset 0).

The definition of A217367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A217367.P16782846006852178122

`(n+7)/gcd(n+7, 4)*n/gcd(n, 4)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A217367

/-- `(n+7)/gcd(n+7, 4)*n/gcd(n, 4)` -/
def P16782846006852178122.Spec : Prop :=
  ∀ n, P16782846006852178122.a n = (A217367 n : ℚ)

end A217367

/-! ## A217367.P12016460562249399558

`n*(n+7)/(2*(1+floor(n/2))%2+2)`
-/

namespace A217367.P12016460562249399558
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (n + 7) : ℚ) / (2 * Int.tmod (1 + ⌊(n : ℚ) / 2⌋) 2 + 2 : ℚ)

end

end A217367.P12016460562249399558

namespace A217367

/-- `n*(n+7)/(2*(1+floor(n/2))%2+2)` -/
def P12016460562249399558.Spec : Prop :=
  ∀ n, P12016460562249399558.a n = (A217367 n : ℚ)

end A217367

/-! ## A217367.P16389431045599671826

`lcm(2, 3-∑[n+3])/2`
-/

namespace A217367.P16389431045599671826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (3 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)) : ℚ) / 2

end

end A217367.P16389431045599671826

namespace A217367

/-- `lcm(2, 3-∑[n+3])/2` -/
def P16389431045599671826.Spec : Prop :=
  ∀ n, P16389431045599671826.a n = (A217367 n : ℚ)

end A217367

/-! ## A217367.P1904456362007884772

`ceil(lcm(2, A055999(n))/2)`
-/

namespace A217367.P1904456362007884772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.lcm 2 (A055999 n) : ℚ) / 2⌉

end

end A217367.P1904456362007884772

namespace A217367

/-- `ceil(lcm(2, A055999(n))/2)` -/
def P1904456362007884772.Spec : Prop :=
  ∀ n, P1904456362007884772.a n = A217367 n

end A217367

/-! ## A217367.P15958345372789455279

`(∑[n+2]+n-2)/A000041(and(2, n-2))`
-/

namespace A217367.P15958345372789455279
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + ((n : ℤ) - 2) : ℚ) / (A000041 (Int.land 2 ((n : ℤ) - 2)).toNat : ℚ)

end

end A217367.P15958345372789455279

namespace A217367

/-- `(∑[n+2]+n-2)/A000041(and(2, n-2))` -/
def P15958345372789455279.Spec : Prop :=
  ∀ n, P15958345372789455279.a n = (A217367 n : ℚ)

end A217367

/-! ## A217367.P7119639927479757014

`A266491(n)+A160050(n+1)`
-/

namespace A217367.P7119639927479757014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266491 n + A160050 (n + 1)

end

end A217367.P7119639927479757014

namespace A217367

/-- `A266491(n)+A160050(n+1)` -/
def P7119639927479757014.Spec : Prop :=
  ∀ n, P7119639927479757014.a n = A217367 n

end A217367

/-! ## A217367.P16587221421177875386

`A055999(n)/(A133872(n)+1)`
-/

namespace A217367.P16587221421177875386
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055999 n : ℚ) / (A133872 n + 1 : ℚ)

end

end A217367.P16587221421177875386

namespace A217367

/-- `A055999(n)/(A133872(n)+1)` -/
def P16587221421177875386.Spec : Prop :=
  ∀ n, P16587221421177875386.a n = (A217367 n : ℚ)

end A217367

/-! ## A217367.P5454429379536559463

`gcd(A055999(n), A239568(n+2))`
-/

namespace A217367.P5454429379536559463
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055999 n) (A239568 (n + 2))

end

end A217367.P5454429379536559463

namespace A217367

/-- `gcd(A055999(n), A239568(n+2))` -/
def P5454429379536559463.Spec : Prop :=
  ∀ n, (P5454429379536559463.a n : ℤ) = A217367 n

end A217367

/-! ## A217367.P971206802734178378

`A055999(n)/gcd(2, A000096(n))`
-/

namespace A217367.P971206802734178378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055999 n : ℚ) / (Int.gcd 2 (A000096 n) : ℚ)

end

end A217367.P971206802734178378

namespace A217367

/-- `A055999(n)/gcd(2, A000096(n))` -/
def P971206802734178378.Spec : Prop :=
  ∀ n, P971206802734178378.a n = (A217367 n : ℚ)

end A217367

/-! ## A217367.P6911644892503658373

`A160050(n+1)+n*A130658(n)`
-/

namespace A217367.P6911644892503658373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160050 (n + 1) + (n : ℤ) * A130658 n

end

end A217367.P6911644892503658373

namespace A217367

/-- `A160050(n+1)+n*A130658(n)` -/
def P6911644892503658373.Spec : Prop :=
  ∀ n, P6911644892503658373.a n = A217367 n

end A217367

/-! ## A217367.P11464641293937326446

`A028557(n)/A014695(n+1)-A160050(n+1)`
-/

namespace A217367.P11464641293937326446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028557 n : ℚ) / (A014695 (n + 1) : ℚ) - (A160050 (n + 1) : ℚ)

end

end A217367.P11464641293937326446

namespace A217367

/-- `A028557(n)/A014695(n+1)-A160050(n+1)` -/
def P11464641293937326446.Spec : Prop :=
  ∀ n, P11464641293937326446.a n = (A217367 n : ℚ)

end A217367

/-! ## A217367.P17551278151545125247

`A217366(n+1)/A084351(n+1)*A109045(n)`
-/

namespace A217367.P17551278151545125247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217366 (n + 1) : ℚ) / (A084351 (n + 1) : ℚ) * (A109045 n : ℚ)

end

end A217367.P17551278151545125247

namespace A217367

/-- `A217366(n+1)/A084351(n+1)*A109045(n)` -/
def P17551278151545125247.Spec : Prop :=
  ∀ n, P17551278151545125247.a n = (A217367 n : ℚ)

end A217367

/-! ## A217367.P16473019399550168935

`A217366(n+1)/A109045(n+1)*A109045(n)`
-/

namespace A217367.P16473019399550168935
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217366 (n + 1) : ℚ) / (A109045 (n + 1) : ℚ) * (A109045 n : ℚ)

end

end A217367.P16473019399550168935

namespace A217367

/-- `A217366(n+1)/A109045(n+1)*A109045(n)` -/
def P16473019399550168935.Spec : Prop :=
  ∀ n, P16473019399550168935.a n = (A217367 n : ℚ)

end A217367

/-! ## A217367.P16422481199389869752

`A064038(n+1)/A181318(n+1)*A217366(n+1)`
-/

namespace A217367.P16422481199389869752
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064038 (n + 1) : ℚ) / (A181318 (n + 1) : ℚ) * (A217366 (n + 1) : ℚ)

end

end A217367.P16422481199389869752

namespace A217367

/-- `A064038(n+1)/A181318(n+1)*A217366(n+1)` -/
def P16422481199389869752.Spec : Prop :=
  ∀ n, P16422481199389869752.a n = (A217367 n : ℚ)

end A217367

/-! ## A217367.P11407103979456522585

`sqrt(A181318(n+7)*A181318(n))`
-/

namespace A217367.P11407103979456522585
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A181318 (n + 7) * A181318 n : ℝ)

end

end A217367.P11407103979456522585

namespace A217367

/-- `sqrt(A181318(n+7)*A181318(n))` -/
def P11407103979456522585.Spec : Prop :=
  ∀ n, P11407103979456522585.a n = (A217367 n : ℝ)

end A217367

/-! ## A217367.P10560883176469480881

`gcd(∑[n+3]-3, A000217(∑[n+3]-3))`
-/

namespace A217367.P10560883176469480881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 3) (A000217 (∑ j ∈ Finset.range (n + 1), f2 j - 3))

end

end A217367.P10560883176469480881

namespace A217367

/-- `gcd(∑[n+3]-3, A000217(∑[n+3]-3))` -/
def P10560883176469480881.Spec : Prop :=
  ∀ n, (P10560883176469480881.a n : ℤ) = A217367 n

end A217367

/-! ## A217367.P9003430963017251018

`A026741(∑[n+3]-3)`
-/

namespace A217367.P9003430963017251018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (∑ j ∈ Finset.range (n + 1), f1 j - 3)

end

end A217367.P9003430963017251018

namespace A217367

/-- `A026741(∑[n+3]-3)` -/
def P9003430963017251018.Spec : Prop :=
  ∀ n, P9003430963017251018.a n = A217367 n

end A217367

/-! ## A217367.P6242250170057257281

`A029578(A055999(n)+2)-1`
-/

namespace A217367.P6242250170057257281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A055999 n + 2).toNat - 1

end

end A217367.P6242250170057257281

namespace A217367

/-- `A029578(A055999(n)+2)-1` -/
def P6242250170057257281.Spec : Prop :=
  ∀ n, P6242250170057257281.a n = A217367 n

end A217367

/-! ## A217367.P18209707428735381157

`A029579(A055999(n)+2)-2`
-/

namespace A217367.P18209707428735381157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (A055999 n + 2).toNat - 2

end

end A217367.P18209707428735381157

namespace A217367

/-- `A029579(A055999(n)+2)-2` -/
def P18209707428735381157.Spec : Prop :=
  ∀ n, P18209707428735381157.a n = A217367 n

end A217367

/-! ## A217367.P10358387617432296426

`A109043(A055998(n)+n)/2`
-/

namespace A217367.P10358387617432296426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109043 (A055998 n + (n : ℤ)).toNat : ℚ) / 2

end

end A217367.P10358387617432296426

namespace A217367

/-- `A109043(A055998(n)+n)/2` -/
def P10358387617432296426.Spec : Prop :=
  ∀ n, P10358387617432296426.a n = (A217367 n : ℚ)

end A217367

/-!
# A217368: Smallest number having a power that in decimal has exactly n copies of all ten digits.

The programs for A217368, there is no canonical definition to state claims against.
-/

/-! ## A217368.P7400954104230756149

`A074205(∑[A047848(ceil(2^(n-1)))])`
-/

namespace A217368.P7400954104230756149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047848 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074205 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A217368.P7400954104230756149

/-!
# A217373: Numbers n the representation of which in base 3 ends in 2*k or 2*k+1 zeros, where k is odd.

The programs for A217373, there is no canonical definition to state claims against.
-/

/-! ## A217373.P8379847160095926350

`9*A382750(n+1)`
-/

namespace A217373.P8379847160095926350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * A382750 (n + 1)

end

end A217373.P8379847160095926350

/-! ## A217373.P11277419390856704649

`A008591(A382750(n+1))`
-/

namespace A217373.P11277419390856704649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008591 (A382750 (n + 1)).toNat

end

end A217373.P11277419390856704649

/-! ## A217373.P8002208542461512529

`record[A059897(A374010(n+1))]`
-/

namespace A217373.P8002208542461512529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (A374010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217373.P8002208542461512529

/-! ## A217373.P14415198316626421752

`record[A059897(A155212(n+5))]`
-/

namespace A217373.P14415198316626421752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (A155212 (n + 5)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217373.P14415198316626421752

/-! ## A217373.P9716735183297523978

`record[A059897(A167487(n+7)+2)]`
-/

namespace A217373.P9716735183297523978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (A167487 (n + 7) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217373.P9716735183297523978

/-! ## A217373.P10362768683861405816

`record[A059896(A145018(n+9)+5)]`
-/

namespace A217373.P10362768683861405816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059896 (A145018 (n + 9) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217373.P10362768683861405816

/-! ## A217373.P18239872579665124137

`record[A059896(A000124(n+9)-9)]`
-/

namespace A217373.P18239872579665124137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059896 (A000124 (n + 9) - 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217373.P18239872579665124137

/-! ## A217373.P18125751834957995107

`record[A059897(A000124(n+9)-9)]`
-/

namespace A217373.P18125751834957995107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059897 (A000124 (n + 9) - 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217373.P18125751834957995107

/-! ## A217373.P16222375819902988758

`record[A331590(A000124(n+9)-9)]`
-/

namespace A217373.P16222375819902988758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331590 (A000124 (n + 9) - 9).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217373.P16222375819902988758

/-! ## A217373.P12798260112664103737

`record[A059896(A133263(n+8)-(n+1))]`
-/

namespace A217373.P12798260112664103737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059896 (A133263 (n + 8) - (n + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217373.P12798260112664103737

/-!
# A217374: Number of trivially compound perfect squared rectangles of order n up to symmetries of the rectangle and its subrectangles.

The programs for A217374, there is no canonical definition to state claims against.
-/

/-! ## A217374.P10324537546504130003

`a(n-1)+2*A002839(n)+2*A217152(n)` with `a(0)=0`
-/

namespace A217374.P10324537546504130003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + 2 * A002839 n + 2 * A217152 n

end

end A217374.P10324537546504130003

/-! ## A217374.P3272277675710169653

`A110148(n+1)-(A217152(n+1)+A002839(n+1))`
-/

namespace A217374.P3272277675710169653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110148 (n + 1) - (A217152 (n + 1) + A002839 (n + 1))

end

end A217374.P3272277675710169653

/-! ## A217374.P13054360636029619356

`A110148(n+1)-(A219766(n+1)+A217152(n+1))`
-/

namespace A217374.P13054360636029619356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110148 (n + 1) - (A219766 (n + 1) + A217152 (n + 1))

end

end A217374.P13054360636029619356

/-! ## A217374.P4148463322117618436

`A233473(A011855(n+1))`
-/

namespace A217374.P4148463322117618436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233473 (A011855 (n + 1)).toNat

end

end A217374.P4148463322117618436

/-! ## A217374.P14749148456197361471

`A081134(n+1)*A084928(A374682(n))`
-/

namespace A217374.P14749148456197361471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081134 (n + 1) * A084928 (A374682 n).toNat

end

end A217374.P14749148456197361471

/-!
# A217375: Number of trivially compound perfect squared rectangles of order n up to symmetries of the rectangle.

The programs for A217375, there is no canonical definition to state claims against.
-/

/-! ## A217375.P1020702104503964086

`A217154(n+1)-(A217153(n+1)+A002839(n+1))`
-/

namespace A217375.P1020702104503964086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217154 (n + 1) - (A217153 (n + 1) + A002839 (n + 1))

end

end A217375.P1020702104503964086

/-! ## A217375.P8516841855231020157

`A217154(n+1)-(A219766(n+1)+A217153(n+1))`
-/

namespace A217375.P8516841855231020157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217154 (n + 1) - (A219766 (n + 1) + A217153 (n + 1))

end

end A217375.P8516841855231020157

/-! ## A217375.P936382081050125707

`A257846(floor(n/4)^(n%7*ceil(n/7)))`
-/

namespace A217375.P936382081050125707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257846 (SequenceMachineLib.roundAway ((⌊(n : ℚ) / 4⌋ : ℚ) ^ (((n % 7 : ℕ) : ℤ) * ⌈(n : ℚ) / 7⌉ : ℤ))).toNat

end

end A217375.P936382081050125707

/-! ## A217375.P2351766884629447956

`∑{d}[A330920(A306860(n)), #]`
-/

namespace A217375.P2351766884629447956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330920 (A306860 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A217375.P2351766884629447956

/-! ## A217375.P15869582100623220943

`A047523(ceil((n-3)/4)^A309882(n))`
-/

namespace A217375.P15869582100623220943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047523 (SequenceMachineLib.roundAway ((⌈((n : ℤ) - 3 : ℚ) / 4⌉ : ℚ) ^ (A309882 n : ℤ))).toNat

end

end A217375.P15869582100623220943

/-!
# A217376: Numbers n such that n, 2n-1 and 2n+1 all are prime or a prime power.

The programs for A217376, there is no canonical definition to state claims against.
-/

/-! ## A217376.P875727610924049542

`A140298(A353385(n))`
-/

namespace A217376.P875727610924049542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140298 (A353385 n).toNat

end

end A217376.P875727610924049542

/-! ## A217376.P6084886905743956136

`A140298(A015853(n+1))`
-/

namespace A217376.P6084886905743956136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140298 (A015853 (n + 1)).toNat

end

end A217376.P6084886905743956136

/-! ## A217376.P12562615011891253824

`A140298(A078931(n+1))`
-/

namespace A217376.P12562615011891253824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140298 (A078931 (n + 1)).toNat

end

end A217376.P12562615011891253824

/-! ## A217376.P2143231934665108806

`A140298(A102570(n+1))`
-/

namespace A217376.P2143231934665108806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140298 (A102570 (n + 1)).toNat

end

end A217376.P2143231934665108806

/-!
# A217377: a(n) is the smallest m>=0 such that ((5n+1)*6^m-1)/5 is prime; or -1 if no such value exists.

The programs for A217377, there is no canonical definition to state claims against.
-/

/-! ## A217377.P2081402905274228477

`A302048(A076739(n))+A007920(n+1)`
-/

namespace A217377.P2081402905274228477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302048 (A076739 n).toNat + A007920 (n + 1)

end

end A217377.P2081402905274228477

/-! ## A217377.P5287487958089375380

`A013632(n)-A022932(A000204(n+1))`
-/

namespace A217377.P5287487958089375380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n - A022932 (A000204 (n + 1)).toNat

end

end A217377.P5287487958089375380

/-! ## A217377.P8379531873524177234

`A013632(n)-A292438(A074698(n+1))`
-/

namespace A217377.P8379531873524177234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013632 n - A292438 (A074698 (n + 1)).toNat

end

end A217377.P8379531873524177234

/-! ## A217377.P14485914075531273595

`A151774(A024367(n+1))+A056898(n+1)`
-/

namespace A217377.P14485914075531273595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151774 (A024367 (n + 1)).toNat + A056898 (n + 1)

end

end A217377.P14485914075531273595

/-! ## A217377.P18415906562555568864

`A122840(A170803(n+1))+A056898(n+1)`
-/

namespace A217377.P18415906562555568864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122840 (A170803 (n + 1)).toNat + A056898 (n + 1)

end

end A217377.P18415906562555568864

/-!
# A217380: Numbers k such that 8^k - 7 is prime.

The programs for A217380, there is no canonical definition to state claims against.
-/

/-! ## A217380.P7905541600145005808

`A059609(A190213(n+1))/3`
-/

namespace A217380.P7905541600145005808
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A059609 (A190213 (n + 1)).toNat : ℚ) / 3

end

end A217380.P7905541600145005808

/-!
# A217381: Numbers k such that 8^k + 7 is prime.

The programs for A217381, there is no canonical definition to state claims against.
-/

/-! ## A217381.P8538829207148076343

`record[A003417(A217349(n+1)-1)]`
-/

namespace A217381.P8538829207148076343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003417 (A217349 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217381.P8538829207148076343

/-!
# A217382: Numbers k such that 8^k + 9 is prime.

The programs for A217382, there is no canonical definition to state claims against.
-/

/-! ## A217382.P2448225668998550551

`eq[3, A173854(3*n)]`
-/

namespace A217382.P2448225668998550551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173854 (3 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217382.P2448225668998550551

/-!
# A217384: Numbers k such that 9^k + 4 is prime.

The programs for A217384, there is no canonical definition to state claims against.
-/

/-! ## A217384.P8551812589832690346

`record[A097140(A058958(n+1))]`
-/

namespace A217384.P8551812589832690346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097140 (A058958 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217384.P8551812589832690346

/-! ## A217384.P1784292645477793863

`record[A142150(A058958(n+2))]`
-/

namespace A217384.P1784292645477793863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A058958 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217384.P1784292645477793863

/-! ## A217384.P875280492173664746

`eq[3, A381041(2*n)]`
-/

namespace A217384.P875280492173664746
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381041 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217384.P875280492173664746

/-! ## A217384.P12814452055983643070

`eq[3, A243095(A004277(n))]`
-/

namespace A217384.P12814452055983643070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243095 (A004277 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217384.P12814452055983643070

/-! ## A217384.P13144539080182715891

`eq[3, A243095(A028310(2*n))]`
-/

namespace A217384.P13144539080182715891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243095 (A028310 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A217384.P13144539080182715891

/-!
# A217385: Numbers k such that 9^k + 8 is prime.

The programs for A217385, there is no canonical definition to state claims against.
-/

/-! ## A217385.P18230351669056045452

`record[A273943(A217136(n+1))]`
-/

namespace A217385.P18230351669056045452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273943 (A217136 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A217385.P18230351669056045452

/-! ## A217385.P7142187526703500059

`A342495(A008965(n+1))+∑{d}[n+1, #-1]-n`
-/

namespace A217385.P7142187526703500059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342495 (A008965 (n + 1)).toNat + (∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - 1) - (n : ℤ))

end

end A217385.P7142187526703500059

/-! ## A217385.P16844054758848037888

`A342495(A008965(n+1))+A152770(n+1)`
-/

namespace A217385.P16844054758848037888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342495 (A008965 (n + 1)).toNat + A152770 (n + 1)

end

end A217385.P16844054758848037888

/-!
# A217386: Emirps (A006567) whose difference with the reversal is a perfect square.

The programs for A217386, there is no canonical definition to state claims against.
-/

/-! ## A217386.P5641322965031912650

`∩[A006567(n+1), A059798(n+1)]`
-/

namespace A217386.P5641322965031912650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217386.P5641322965031912650

/-! ## A217386.P15770814875562318463

`∩[A007500(n+1), A059798(n+1)]`
-/

namespace A217386.P15770814875562318463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007500 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059798 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A217386.P15770814875562318463

/-!
# A217388: Alternating sums of the ordered Bell numbers (number of preferential arrangements) A000670.

The programs for A217388, there is no canonical definition to state claims against.
-/

/-! ## A217388.P3309919088531488283

`A000670(n)-a(n-1)` with `a(0)=1`
-/

namespace A217388.P3309919088531488283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000670 n - a (n - 1)

end

end A217388.P3309919088531488283

/-! ## A217388.P1302983847417694742

`A122101(∑[n])-a(n-1)` with `a(0)=1`
-/

namespace A217388.P1302983847417694742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A217388.P1302983847417694742

/-! ## A217388.P221943015556382435

`A154921(∑[n])-a(n-1)` with `a(0)=1`
-/

namespace A217388.P221943015556382435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A154921 (∑ j ∈ Finset.range (n + 1), f1 j) - a (n - 1)

end

end A217388.P221943015556382435

/-! ## A217388.P9921092944888623374

`A052856(n)-(a(n-1)+1)` with `a(0)=1`
-/

namespace A217388.P9921092944888623374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052856 n - (a (n - 1) + 1)

end

end A217388.P9921092944888623374

/-! ## A217388.P1808900853153005200

`A052875(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A217388.P1808900853153005200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A052875 n + 1 - a (n - 1)

end

end A217388.P1808900853153005200

/-! ## A217388.P16803354707183716590

`A000629(n)/2-a(n-1)` with `a(0)=1`
-/

namespace A217388.P16803354707183716590
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A000629 n : ℚ) / 2 - a (n - 1)

end

end A217388.P16803354707183716590

/-! ## A217388.P2513330161164379791

`A076726(n)/2-a(n-1)` with `a(0)=1`
-/

namespace A217388.P2513330161164379791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A076726 n : ℚ) / 2 - a (n - 1)

end

end A217388.P2513330161164379791

/-! ## A217388.P5743545748673958438

`∑[A162509(n)/2]-a(n-1)` with `a(0)=1`
-/

namespace A217388.P5743545748673958438
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A162509 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A217388.P5743545748673958438

/-! ## A217388.P15043230308211868190

`A226513(A000096(n))-a(n-1)` with `a(0)=1`
-/

namespace A217388.P15043230308211868190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A226513 (A000096 n).toNat - a (n - 1)

end

end A217388.P15043230308211868190

/-! ## A217388.P10972188569032135923

`A350252(n)+A345194(n)-a(n-1)` with `a(0)=1`
-/

namespace A217388.P10972188569032135923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A350252 n + A345194 n - a (n - 1)

end

end A217388.P10972188569032135923

/-!
# A217389: Partial sums of the ordered Bell numbers (number of preferential arrangements) A000670.

The programs for A217389, there is no canonical definition to state claims against.
-/

/-! ## A217389.P15784893444165641731

`∑[A000670(n)]`
-/

namespace A217389.P15784893444165641731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217389.P15784893444165641731

/-! ## A217389.P10597146014902584892

`∑[A073146(∑[n])]`
-/

namespace A217389.P10597146014902584892
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073146 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217389.P10597146014902584892

/-! ## A217389.P13782462989704260265

`∑[A122101(∑[n])]`
-/

namespace A217389.P13782462989704260265
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217389.P13782462989704260265

/-! ## A217389.P2540761239060730725

`∑[A154921(∑[n])]`
-/

namespace A217389.P2540761239060730725
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217389.P2540761239060730725

/-! ## A217389.P1605649564813885774

`∑[A052875(n)+1]`
-/

namespace A217389.P1605649564813885774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052875 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217389.P1605649564813885774

/-! ## A217389.P15815169099492527231

`∑[A076726(n)/2]`
-/

namespace A217389.P15815169099492527231
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A076726 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217389.P15815169099492527231

/-! ## A217389.P2229849577371285312

`∑[A052856(n)]-n`
-/

namespace A217389.P2229849577371285312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052856 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A217389.P2229849577371285312

/-! ## A217389.P12967700489314956803

`∑[ceil(A000629(n)/2)]`
-/

namespace A217389.P12967700489314956803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000629 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217389.P12967700489314956803

/-! ## A217389.P10783832454458658016

`∑[A226513(∑[n]+n)]`
-/

namespace A217389.P10783832454458658016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226513 (∑ j ∈ Finset.range (n + 1), f2 j + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217389.P10783832454458658016

/-! ## A217389.P16698931705903460625

`∑[2*A032109(n)-1]`
-/

namespace A217389.P16698931705903460625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A032109 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217389.P16698931705903460625

/-!
# A217391: Partial sums of the squares of the ordered Bell numbers (number of preferential arrangements) A000670.

The programs for A217391, there is no canonical definition to state claims against.
-/

/-! ## A217391.P8859930948722196947

`∑[A122725(n)]`
-/

namespace A217391.P8859930948722196947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122725 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217391.P8859930948722196947

/-! ## A217391.P4205233231818289215

`∑[A000670(n)²]`
-/

namespace A217391.P4205233231818289215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000670 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217391.P4205233231818289215

/-! ## A217391.P12523163489652571315

`∑[A073146(∑[n])²]`
-/

namespace A217391.P12523163489652571315
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073146 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217391.P12523163489652571315

/-! ## A217391.P14478503744025118855

`∑[A122101(∑[n])²]`
-/

namespace A217391.P14478503744025118855
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122101 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217391.P14478503744025118855

/-! ## A217391.P462527412068835836

`∑[A154921(∑[n])²]`
-/

namespace A217391.P462527412068835836
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154921 (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A217391.P462527412068835836

/-!
# A217392: Alternating sums of the squares of the ordered Bell numbers (number of preferential arrangements) A000670.

The programs for A217392, there is no canonical definition to state claims against.
-/

/-! ## A217392.P12453309854671859869

`A122725(n)-a(n-1)` with `a(0)=1`
-/

namespace A217392.P12453309854671859869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122725 n - a (n - 1)

end

end A217392.P12453309854671859869

/-! ## A217392.P122000691505769116

`A000670(n)²-a(n-1)` with `a(0)=1`
-/

namespace A217392.P122000691505769116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000670 n ^ 2 - a (n - 1)

end

end A217392.P122000691505769116

/-! ## A217392.P10555368467171971699

`A122101(∑[n])²-a(n-1)` with `a(0)=1`
-/

namespace A217392.P10555368467171971699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A122101 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - a (n - 1)

end

end A217392.P10555368467171971699

/-! ## A217392.P3869813034455714372

`A154921(∑[n])²-a(n-1)` with `a(0)=1`
-/

namespace A217392.P3869813034455714372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A154921 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - a (n - 1)

end

end A217392.P3869813034455714372

/-! ## A217392.P10629608365952468383

`(A000629(n)/2)²-a(n-1)` with `a(0)=1`
-/

namespace A217392.P10629608365952468383
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((A000629 n : ℚ) / 2) ^ 2 - a (n - 1)

end

end A217392.P10629608365952468383

/-!
# A217393: Smallest k > 0 such that 1 + n^2 and 1 + (n+k)^2 have the same largest factor, or 0 if no such k exists.

The programs for A217393, there is no canonical definition to state claims against.
-/

/-! ## A217393.P3699558407900736154

`A173962(n+1)%A006530(∑[A173961(n+1)])`
-/

namespace A217393.P3699558407900736154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A173962 (n + 1)) (A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A217393.P3699558407900736154

/-! ## A217393.P1013103055945530340

`(n²*A002411(n))%A006530(∑[5*A005898(n)])`
-/

namespace A217393.P1013103055945530340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A005898 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) * A002411 n) (A006530 (∑ j ∈ Finset.range (n + 1), f1 j).toNat)

end

end A217393.P1013103055945530340

/-!
# A217394: Numbers starting with 2.

The programs for A217394, there is no canonical definition to state claims against.
-/

/-! ## A217394.P16494590925516628874

`A143473(A217401(n+1))`
-/

namespace A217394.P16494590925516628874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143473 (A217401 (n + 1)).toNat

end

end A217394.P16494590925516628874

/-!
# A217395: Numbers starting with 3.

The programs for A217395, there is no canonical definition to state claims against.
-/

/-! ## A217395.P9947764663346766092

`(A217397(n+1)+A217394(n+1))/2`
-/

namespace A217395.P9947764663346766092
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A217397 (n + 1) + A217394 (n + 1) : ℚ) / 2

end

end A217395.P9947764663346766092

/-!
# A217397: Numbers starting with 4.

The programs for A217397, there is no canonical definition to state claims against.
-/

/-! ## A217397.P11161433146451573377

`A082794(a(n-1)+1)` with `a(0)=4`
-/

namespace A217397.P11161433146451573377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A082794 (a (n - 1) + 1).toNat

end

end A217397.P11161433146451573377

/-!
# A217398: Numbers starting with 5.

The programs for A217398, there is no canonical definition to state claims against.
-/

/-! ## A217398.P17294492951725996039

`A131835(A131835(n+1)+n+1)/2`
-/

namespace A217398.P17294492951725996039
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131835 (A131835 (n + 1) + (n : ℤ) + 1).toNat : ℚ) / 2

end

end A217398.P17294492951725996039

/-!
# A217399: Numbers starting with 6.

The programs for A217399, there is no canonical definition to state claims against.
-/

/-! ## A217399.P706069196076795111

`2*A217397(n+1)-A217394(n+1)`
-/

namespace A217399.P706069196076795111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A217397 (n + 1) - A217394 (n + 1)

end

end A217399.P706069196076795111

