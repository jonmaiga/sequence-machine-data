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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B009.C000
import Seq.B010.C000
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
# A216021: a(n) = modlg(n^n, 2^n), where modlg is the function defined in A215894: modlg(a,b) = floor(a / b^floor(logb(a))), logb is the logarithm base b.

The programs for A216021, there is no canonical definition to state claims against.
-/

/-! ## A216021.P15404863403231301886

`floor(((n+1)/2^floor(log2(n+1)))^(n+1))`
-/

namespace A216021.P15404863403231301886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1 : ℚ) / (2 ^ Nat.log 2 (n + 1) : ℚ)) ^ (n + 1)⌋

end

end A216021.P15404863403231301886

/-!
# A216022: Largest number m such that the Collatz trajectory starting at n contains all numbers not greater than m.

The programs for A216022, there is no canonical definition to state claims against.
-/

/-! ## A216022.P6665577056925860455

`A216059(n+1)-1`
-/

namespace A216022.P6665577056925860455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216059 (n + 1) - 1

end

end A216022.P6665577056925860455

/-! ## A216022.P17915448065042732935

`A023342(n+1)%A216059(n+1)`
-/

namespace A216022.P17915448065042732935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023342 (n + 1)) (A216059 (n + 1))

end

end A216022.P17915448065042732935

/-! ## A216022.P9951063369095281979

`A027570(n+1)%A216059(n+1)`
-/

namespace A216022.P9951063369095281979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027570 (n + 1)) (A216059 (n + 1))

end

end A216022.P9951063369095281979

/-! ## A216022.P13375703526022762693

`A060230(n+1)%A216059(n+1)`
-/

namespace A216022.P13375703526022762693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060230 (n + 1)) (A216059 (n + 1))

end

end A216022.P13375703526022762693

/-! ## A216022.P1317137613257214968

`A060231(n+1)%A216059(n+1)`
-/

namespace A216022.P1317137613257214968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060231 (n + 1)) (A216059 (n + 1))

end

end A216022.P1317137613257214968

/-! ## A216022.P11372897926154208978

`A060232(n+1)%A216059(n+1)`
-/

namespace A216022.P11372897926154208978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A060232 (n + 1)) (A216059 (n + 1))

end

end A216022.P11372897926154208978

/-! ## A216022.P14122949265327760720

`A101767(n+1)%A216059(n+1)`
-/

namespace A216022.P14122949265327760720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101767 (n + 1)) (A216059 (n + 1))

end

end A216022.P14122949265327760720

/-! ## A216022.P1042748807425516263

`A107023(n+1)%A216059(n+1)`
-/

namespace A216022.P1042748807425516263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107023 (n + 1)) (A216059 (n + 1))

end

end A216022.P1042748807425516263

/-! ## A216022.P9743173503094317324

`A126334(n+1)%A216059(n+1)`
-/

namespace A216022.P9743173503094317324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126334 (n + 1)) (A216059 (n + 1))

end

end A216022.P9743173503094317324

/-! ## A216022.P6612040681337325383

`A126435(n+1)%A216059(n+1)`
-/

namespace A216022.P6612040681337325383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126435 (n + 1)) (A216059 (n + 1))

end

end A216022.P6612040681337325383

/-! ## A216022.P16373883362112947732

`A130737(n+1)%A216059(n+1)`
-/

namespace A216022.P16373883362112947732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A130737 (n + 1)) (A216059 (n + 1))

end

end A216022.P16373883362112947732

/-! ## A216022.P7497270322441018555

`A136079(n+1)%A216059(n+1)`
-/

namespace A216022.P7497270322441018555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136079 (n + 1)) (A216059 (n + 1))

end

end A216022.P7497270322441018555

/-! ## A216022.P13767546284901119630

`A140848(n+1)%A216059(n+1)`
-/

namespace A216022.P13767546284901119630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A140848 (n + 1)) (A216059 (n + 1))

end

end A216022.P13767546284901119630

/-! ## A216022.P15991994705738203678

`A141570(n+1)%A216059(n+1)`
-/

namespace A216022.P15991994705738203678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141570 (n + 1)) (A216059 (n + 1))

end

end A216022.P15991994705738203678

/-! ## A216022.P5981421773408654345

`A141898(n+1)%A216059(n+1)`
-/

namespace A216022.P5981421773408654345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A141898 (n + 1)) (A216059 (n + 1))

end

end A216022.P5981421773408654345

/-! ## A216022.P3378429138922879007

`A142900(n+1)%A216059(n+1)`
-/

namespace A216022.P3378429138922879007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A142900 (n + 1)) (A216059 (n + 1))

end

end A216022.P3378429138922879007

/-! ## A216022.P26066600407395450

`A127229(n+5)%A216059(n+1)`
-/

namespace A216022.P26066600407395450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A216059 (n + 1))

end

end A216022.P26066600407395450

/-! ## A216022.P13313320038635631749

`A248877(n+1)%A216059(n+1)`
-/

namespace A216022.P13313320038635631749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A248877 (n + 1)) (A216059 (n + 1))

end

end A216022.P13313320038635631749

/-! ## A216022.P4039851343175741567

`A101769(n+1)%A216059(n+1)`
-/

namespace A216022.P4039851343175741567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A101769 (n + 1)) (A216059 (n + 1))

end

end A216022.P4039851343175741567

/-! ## A216022.P2566672831150154848

`A057198(n+1)%A216059(n+1)`
-/

namespace A216022.P2566672831150154848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A057198 (n + 1)) (A216059 (n + 1))

end

end A216022.P2566672831150154848

/-!
# A216023: Fermat pseudoprimes to base 2 divisible by 5.

The programs for A216023, there is no canonical definition to state claims against.
-/

/-! ## A216023.P15211252036165505227

`A001567(eq[0, A001567(n+1)%5]+1)`
-/

namespace A216023.P15211252036165505227
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001567 (n + 1)) 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A216023.P15211252036165505227

/-! ## A216023.P13179229617863392539

`A001567(eq[5, gcd(5, A001567(n+1))]+1)`
-/

namespace A216023.P13179229617863392539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 5 (A001567 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A216023.P13179229617863392539

/-! ## A216023.P10964575294627895362

`∩[10*n+5, A080747(n+1)]`
-/

namespace A216023.P10964575294627895362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216023.P10964575294627895362

/-! ## A216023.P14151316795571691374

`∩[A001567(n+1), A016813(A016861(n))]`
-/

namespace A216023.P14151316795571691374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001567 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016813 (A016861 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216023.P14151316795571691374

/-!
# A216024: Number of horizontal, vertical and diagonal neighbor colorings of the odd squares of an n X n array with new integer colors introduced in row major order.

The programs for A216024, there is no canonical definition to state claims against.
-/

/-! ## A216024.P13046196701538053810

`A216031(∑[4*n]+1)`
-/

namespace A216024.P13046196701538053810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216031 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A216024.P13046196701538053810

/-!
# A216025: Number of horizontal, vertical and diagonal neighbor colorings of the odd squares of an nX2 array with new integer colors introduced in row major order.

The programs for A216025, there is no canonical definition to state claims against.
-/

/-! ## A216025.P1294016226514046051

`A216338(∑[n+1]+2)`
-/

namespace A216025.P1294016226514046051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216338 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A216025.P1294016226514046051

/-! ## A216025.P12778330093960374179

`A216338(A133263(n+1))%A043291(n+1)`
-/

namespace A216025.P12778330093960374179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A216338 (A133263 (n + 1)).toNat) (A043291 (n + 1))

end

end A216025.P12778330093960374179

/-! ## A216025.P4976022708346877552

`A216031(∑[n+1]+2)`
-/

namespace A216025.P4976022708346877552
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216031 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A216025.P4976022708346877552

/-! ## A216025.P6927269698600955723

`lcm(A124778(n), A216031(A000096(n)+3))`
-/

namespace A216025.P6927269698600955723
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A124778 n) (A216031 (A000096 n + 3).toNat)

end

end A216025.P6927269698600955723

/-! ## A216025.P8092828133057213277

`A043540(n+1)*A216031(A000096(n)+3)`
-/

namespace A216025.P8092828133057213277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043540 (n + 1) * A216031 (A000096 n + 3).toNat

end

end A216025.P8092828133057213277

/-!
# A216026: Number of horizontal, vertical and diagonal neighbor colorings of the odd squares of an nX3 array with new integer colors introduced in row major order.

The programs for A216026, there is no canonical definition to state claims against.
-/

/-! ## A216026.P17491815376403589550

`A261041(∑[A166444(n)%3])`
-/

namespace A216026.P17491815376403589550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166444 n) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261041 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216026.P17491815376403589550

/-! ## A216026.P12254901183346449904

`A261041(A065033(3*n)-1)`
-/

namespace A216026.P12254901183346449904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261041 (A065033 (3 * n) - 1).toNat

end

end A216026.P12254901183346449904

/-! ## A216026.P12155571406836565058

`A261041(A065033(n)-1+n)`
-/

namespace A216026.P12155571406836565058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261041 (A065033 n - 1 + (n : ℤ)).toNat

end

end A216026.P12155571406836565058

/-! ## A216026.P7380049123641721623

`A261041(n-(1-A065033(n)))`
-/

namespace A216026.P7380049123641721623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261041 ((n : ℤ) - (1 - A065033 n)).toNat

end

end A216026.P7380049123641721623

/-! ## A216026.P5879125286118623878

`A261041(A004526(A004273(n)+n))`
-/

namespace A216026.P5879125286118623878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261041 (A004526 (A004273 n + (n : ℤ)).toNat).toNat

end

end A216026.P5879125286118623878

/-!
# A216027: Number of horizontal, vertical and diagonal neighbor colorings of the odd squares of an nX4 array with new integer colors introduced in row major order.

The programs for A216027, there is no canonical definition to state claims against.
-/

/-! ## A216027.P2207941699018861419

`A216031(C(n+4, 2)+4)`
-/

namespace A216027.P2207941699018861419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216031 (Nat.choose (n + 4) 2 + 4)

end

end A216027.P2207941699018861419

/-! ## A216027.P9204253596583469120

`A216031(A374004(n+1))`
-/

namespace A216027.P9204253596583469120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216031 (A374004 (n + 1)).toNat

end

end A216027.P9204253596583469120

/-! ## A216027.P8017255756739697945

`A216031(A145018(n+4))`
-/

namespace A216027.P8017255756739697945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216031 (A145018 (n + 4)).toNat

end

end A216027.P8017255756739697945

/-! ## A216027.P6701954819923812479

`A216031(A141214(n)+7)`
-/

namespace A216027.P6701954819923812479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216031 (A141214 n + 7).toNat

end

end A216027.P6701954819923812479

/-! ## A216027.P6473785029216370805

`A216031(A052905(n)+9)`
-/

namespace A216027.P6473785029216370805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216031 (A052905 n + 9).toNat

end

end A216027.P6473785029216370805

/-!
# A216028: Number of horizontal, vertical and diagonal neighbor colorings of the odd squares of an nX5 array with new integer colors introduced in row major order.

The programs for A216028, there is no canonical definition to state claims against.
-/

/-! ## A216028.P9549014790142421748

`A216031(C(n+6, 2)-n)`
-/

namespace A216028.P9549014790142421748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216031 (Nat.choose (n + 6) 2 - n)

end

end A216028.P9549014790142421748

/-! ## A216028.P2004355080285706139

`A216031(A374005(n+1))`
-/

namespace A216028.P2004355080285706139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216031 (A374005 (n + 1)).toNat

end

end A216028.P2004355080285706139

/-! ## A216028.P11268916287638658062

`A216031(A155212(n)+13)`
-/

namespace A216028.P11268916287638658062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216031 (A155212 n + 13).toNat

end

end A216028.P11268916287638658062

/-! ## A216028.P18064190980516007011

`A216031(A056000(n)+15)`
-/

namespace A216028.P18064190980516007011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216031 (A056000 n + 15).toNat

end

end A216028.P18064190980516007011

/-! ## A216028.P11632172777323345935

`A216031(eq[7, A066657(n)])`
-/

namespace A216028.P11632172777323345935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216028.P11632172777323345935

/-!
# A216029: Number of horizontal, vertical and diagonal neighbor colorings of the odd squares of an nX6 array with new integer colors introduced in row major order.

The programs for A216029, there is no canonical definition to state claims against.
-/

/-! ## A216029.P74419805794374600

`A216031(A374007(n+1))`
-/

namespace A216029.P74419805794374600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216031 (A374007 (n + 1)).toNat

end

end A216029.P74419805794374600

/-! ## A216029.P17036763629310472942

`A216031(A168105(n)-n)`
-/

namespace A216029.P17036763629310472942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216031 (A168105 n - (n : ℤ)).toNat

end

end A216029.P17036763629310472942

/-! ## A216029.P13312146795090934167

`A216031(A000217(n+5)+6)`
-/

namespace A216029.P13312146795090934167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216031 (A000217 (n + 5) + 6).toNat

end

end A216029.P13312146795090934167

/-! ## A216029.P10474454893178064293

`A216031(eq[7, A123229(n+1)])`
-/

namespace A216029.P10474454893178064293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216031 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216029.P10474454893178064293

/-!
# A216030: Number of horizontal, vertical and diagonal neighbor colorings of the odd squares of an nX7 array with new integer colors introduced in row major order.

The programs for A216030, there is no canonical definition to state claims against.
-/

/-! ## A216030.P2266755391528408922

`A216031(A374008(n+1))`
-/

namespace A216030.P2266755391528408922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216031 (A374008 (n + 1)).toNat

end

end A216030.P2266755391528408922

/-!
# A216031: T(n,k) is the number of horizontal, vertical and diagonal neighbor colorings of the odd squares of an n X k array with new integer colors introduced in row major order.

The programs for A216031, there is no canonical definition to state claims against.
-/

/-! ## A216031.P7223934750509975048

`floor(A254574(A209215(n+1)+1)/log2(7))+1`
-/

namespace A216031.P7223934750509975048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A254574 (A209215 (n + 1) + 1).toNat : ℝ) / Real.logb 2 (7 : ℝ)⌋ + 1

end

end A216031.P7223934750509975048

/-! ## A216031.P5551212681268637484

`A033273(A029210(n)+A022171(n))`
-/

namespace A216031.P5551212681268637484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033273 (A029210 n + A022171 n).toNat

end

end A216031.P5551212681268637484

/-! ## A216031.P16382262832796421257

`A193582(A257616(n))`
-/

namespace A216031.P16382262832796421257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193582 (A257616 n).toNat

end

end A216031.P16382262832796421257

/-! ## A216031.P1125321389380148068

`A067390(A323860(n+1))`
-/

namespace A216031.P1125321389380148068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067390 (A323860 (n + 1)).toNat

end

end A216031.P1125321389380148068

/-! ## A216031.P3502949968662997315

`A093621(A304019(n+1))`
-/

namespace A216031.P3502949968662997315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093621 (A304019 (n + 1)).toNat

end

end A216031.P3502949968662997315

/-!
# A216032: Numbers k such that every prime factor of k^2 + 1 is congruent to 5 (mod 8).

The programs for A216032, there is no canonical definition to state claims against.
-/

/-! ## A216032.P8569441688062688573

`∑[A037445(A268602(n+1))]`
-/

namespace A216032.P8569441688062688573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A268602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216032.P8569441688062688573

/-! ## A216032.P4034705519316868894

`eq[A284252(A000009(n+1)), A284256(3*n+4)]`
-/

namespace A216032.P4034705519316868894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284252 (A000009 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284256 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216032.P4034705519316868894

/-!
# A216033: Numbers k such that every prime factor of k^2 + 1 is congruent to 1 (mod 8).

The programs for A216033, there is no canonical definition to state claims against.
-/

/-! ## A216033.P17774046346292009682

`eq[2, A330423((n+1)²+1)]+1`
-/

namespace A216033.P17774046346292009682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330423 ((n + 1) ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A216033.P17774046346292009682

/-! ## A216033.P12509165365786007409

`lt[0, A330174(A002522(n))]`
-/

namespace A216033.P12509165365786007409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330174 (A002522 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A216033.P12509165365786007409

/-! ## A216033.P12008227458190928309

`eq[2, A202036(A271624(n+1))]`
-/

namespace A216033.P12008227458190928309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202036 (A271624 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A216033.P12008227458190928309

/-!
# A216034: a(n) = 3^(-1+floor((n+1)/3))*A(n), where A(n) = 3*A(n-1) + A(n-2) - A(n-3)/3 with A(0)=A(1)=3, A(2)=11.

The programs for A216034, there is no canonical definition to state claims against.
-/

/-! ## A216034.P17097326287891955561

`A051724(A217336(n)/A080311(n))`
-/

namespace A216034.P17097326287891955561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (SequenceMachineLib.roundAway ((A217336 n : ℚ) / (A080311 n : ℚ))).toNat

end

end A216034.P17097326287891955561

/-! ## A216034.P12344068233277890496

`A004719(A217336(n)/A216319(n+1))`
-/

namespace A216034.P12344068233277890496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004719 (SequenceMachineLib.roundAway ((A217336 n : ℚ) / (A216319 (n + 1) : ℚ))).toNat

end

end A216034.P12344068233277890496

/-! ## A216034.P16304073899366659645

`A028310(A217336(n)/A216319(n+1))`
-/

namespace A216034.P16304073899366659645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (SequenceMachineLib.roundAway ((A217336 n : ℚ) / (A216319 (n + 1) : ℚ))).toNat

end

end A216034.P16304073899366659645

/-!
# A216040: Number of permutations sortable using two parallel stacks.

The programs for A216040, there is no canonical definition to state claims against.
-/

/-! ## A216040.P14229027030722858654

`A133944(A000522(n))+A005802(n)`
-/

namespace A216040.P14229027030722858654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133944 (A000522 n).toNat + A005802 n

end

end A216040.P14229027030722858654

/-! ## A216040.P5213635723008202909

`A167613(A058275(n))+A005802(n)`
-/

namespace A216040.P5213635723008202909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167613 (A058275 n).toNat + A005802 n

end

end A216040.P5213635723008202909

/-! ## A216040.P8306351134584834535

`A178798(A070875(n))+A005802(n)`
-/

namespace A216040.P8306351134584834535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 (A070875 n).toNat + A005802 n

end

end A216040.P8306351134584834535

/-! ## A216040.P8574993560359633471

`A004277(A005802(n))-A061552(n)`
-/

namespace A216040.P8574993560359633471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A005802 n).toNat - A061552 n

end

end A216040.P8574993560359633471

/-!
# A216041: Number of redundant function representations of x^x^...^x with n x's and parentheses inserted in all possible ways.

The programs for A216041, there is no canonical definition to state claims against.
-/

/-! ## A216041.P12936171458214385788

`A000108(n)-A000081(n+1)`
-/

namespace A216041.P12936171458214385788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A000081 (n + 1)

end

end A216041.P12936171458214385788

/-! ## A216041.P7694144528229058560

`A000108(n)-∑[A174145(n)]`
-/

namespace A216041.P7694144528229058560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174145 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216041.P7694144528229058560

/-! ## A216041.P17732958914545159363

`A120588(n+1)-A000081(n+1)`
-/

namespace A216041.P17732958914545159363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120588 (n + 1) - A000081 (n + 1)

end

end A216041.P17732958914545159363

/-! ## A216041.P8193436200017936415

`A000108(n)-A038001(2*n+1)`
-/

namespace A216041.P8193436200017936415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A038001 (2 * n + 1)

end

end A216041.P8193436200017936415

/-! ## A216041.P10419633511064920815

`A126120(2*n)-A000081(n+1)`
-/

namespace A216041.P10419633511064920815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126120 (2 * n) - A000081 (n + 1)

end

end A216041.P10419633511064920815

/-! ## A216041.P14464175384913503382

`A126324(2*n)-A000081(n+1)`
-/

namespace A216041.P14464175384913503382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126324 (2 * n) - A000081 (n + 1)

end

end A216041.P14464175384913503382

/-! ## A216041.P5678041439853423989

`A208355(2*n)-A000081(n+1)`
-/

namespace A216041.P5678041439853423989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208355 (2 * n) - A000081 (n + 1)

end

end A216041.P5678041439853423989

/-! ## A216041.P5937649777240035471

`A089408(2*n+1)-A000081(n+1)`
-/

namespace A216041.P5937649777240035471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089408 (2 * n + 1) - A000081 (n + 1)

end

end A216041.P5937649777240035471

/-! ## A216041.P8232032862808809146

`A097331(2*n+1)-A000081(n+1)`
-/

namespace A216041.P8232032862808809146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097331 (2 * n + 1) - A000081 (n + 1)

end

end A216041.P8232032862808809146

/-! ## A216041.P9838386819580600226

`A000108(n)-A339067(A000124(n))`
-/

namespace A216041.P9838386819580600226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A339067 (A000124 n).toNat

end

end A216041.P9838386819580600226

/-! ## A216041.P4130594516905045445

`A000108(n)-A000081(n)-Δ[A000081(n)]`
-/

namespace A216041.P4130594516905045445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - A000081 n - (f1 (n + 1) - f1 n)

end

end A216041.P4130594516905045445

/-! ## A216041.P9612879082172832896

`A055113(n+1)+A111160(n)-A000081(n+1)`
-/

namespace A216041.P9612879082172832896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055113 (n + 1) + (A111160 n - A000081 (n + 1))

end

end A216041.P9612879082172832896

/-! ## A216041.P16907894324958627217

`A000108(n)-(A222380(n+1)+A222379(n+1))`
-/

namespace A216041.P16907894324958627217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n - (A222380 (n + 1) + A222379 (n + 1))

end

end A216041.P16907894324958627217

/-! ## A216041.P17610113953068631641

`A155587(n+1)-(A155587(n)+A000081(n+1))`
-/

namespace A216041.P17610113953068631641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 (n + 1) - (A155587 n + A000081 (n + 1))

end

end A216041.P17610113953068631641

/-! ## A216041.P3847747430916076635

`A152761(n)-(A152762(n)+A000081(n+1))`
-/

namespace A216041.P3847747430916076635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152761 n - (A152762 n + A000081 (n + 1))

end

end A216041.P3847747430916076635

/-! ## A216041.P6928583796754384456

`A057977(2*n)-A000081(n+1)`
-/

namespace A216041.P6928583796754384456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 (2 * n) - A000081 (n + 1)

end

end A216041.P6928583796754384456

/-! ## A216041.P17027284656690228928

`A051945(n)/A016861(n)-A000081(n+1)`
-/

namespace A216041.P17027284656690228928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051945 n : ℚ) / (A016861 n : ℚ) - (A000081 (n + 1) : ℚ)

end

end A216041.P17027284656690228928

/-! ## A216041.P12358813078848645192

`A098614(n)/A000045(n+1)-A000081(n+1)`
-/

namespace A216041.P12358813078848645192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098614 n : ℚ) / (A000045 (n + 1) : ℚ) - (A000081 (n + 1) : ℚ)

end

end A216041.P12358813078848645192

/-!
# A216042: Numbers k such that Sum_{j=1..k-1} (2*j)!/4^j is an integer.

The programs for A216042, there is no canonical definition to state claims against.
-/

/-! ## A216042.P4132596490516073273

`filter[A125049(n+1), A167364(#)]`
-/

namespace A216042.P4132596490516073273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A167364 (f1 j).toNat = 1) n)

end

end A216042.P4132596490516073273

/-!
# A216043: Numbers k such that Sum_{j=1..k-1} (2j)!/3^j is an integer.

The programs for A216043, there is no canonical definition to state claims against.
-/

/-! ## A216043.P15767859511700824056

`Δ[A129605(∑[A060014(n)])]`
-/

namespace A216043.P15767859511700824056
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060014 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129605 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216043.P15767859511700824056

/-!
# A216044: Numbers k such that Sum_{j=1..k-1} (4j)!/16^j is an integer.

The programs for A216044, there is no canonical definition to state claims against.
-/

/-! ## A216044.P4908416048210086347

`A205558(A001834(n)*A326140(n+1))`
-/

namespace A216044.P4908416048210086347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205558 (A001834 n * A326140 (n + 1)).toNat

end

end A216044.P4908416048210086347

/-! ## A216044.P2131980611536346118

`or(A031874(n+1), A106677(A000024(n)))`
-/

namespace A216044.P2131980611536346118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A031874 (n + 1)) (A106677 (A000024 n).toNat)

end

end A216044.P2131980611536346118

/-!
# A216045: Numbers k such that Sum_{j=1..k-1} (4j)!/5^j is an integer.

The programs for A216045, there is no canonical definition to state claims against.
-/

/-! ## A216045.P2750438387062092327

`A089817(n)%A094381(2^n)`
-/

namespace A216045.P2750438387062092327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A089817 n) (A094381 (2 ^ n))

end

end A216045.P2750438387062092327

/-!
# A216046: Expansion of (chi(-x) / chi^3(-x^3))^2 in powers of x where chi() is a Ramanujan theta function.

The programs for A216046, there is no canonical definition to state claims against.
-/

/-! ## A216046.P3845489084959672290

`(-1)^n*A164614(n)`
-/

namespace A216046.P3845489084959672290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A164614 n

end

end A216046.P3845489084959672290

/-! ## A216046.P9579226709678347271

`A128111(2*n+1)`
-/

namespace A216046.P9579226709678347271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128111 (2 * n + 1)

end

end A216046.P9579226709678347271

/-! ## A216046.P1703947285222425245

`-A092848(2*n+1)`
-/

namespace A216046.P1703947285222425245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A092848 (2 * n + 1)

end

end A216046.P1703947285222425245

/-! ## A216046.P2043821978482145563

`A164614(n)/A033999(n)`
-/

namespace A216046.P2043821978482145563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164614 n : ℚ) / (A033999 n : ℚ)

end

end A216046.P2043821978482145563

/-! ## A216046.P13417691368965892674

`A000007(n+1)-A092848(2*n+1)`
-/

namespace A216046.P13417691368965892674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) - A092848 (2 * n + 1)

end

end A216046.P13417691368965892674

/-! ## A216046.P15734440083592370480

`1-(A092848(2*n+1)+A033999(2*n))`
-/

namespace A216046.P15734440083592370480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A092848 (2 * n + 1) + A033999 (2 * n))

end

end A216046.P15734440083592370480

/-! ## A216046.P15948477376891716364

`A033999(2*n+1)*A092848(2*n+1)`
-/

namespace A216046.P15948477376891716364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (2 * n + 1) * A092848 (2 * n + 1)

end

end A216046.P15948477376891716364

/-! ## A216046.P11434924523388171209

`A132972(2*n)-(A141094(2*n)+A092848(2*n+1))`
-/

namespace A216046.P11434924523388171209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132972 (2 * n) - (A141094 (2 * n) + A092848 (2 * n + 1))

end

end A216046.P11434924523388171209

/-! ## A216046.P11712963090807512530

`A092848(2*n+1)/A132972(2*n+1)*A141094(2*n+1)`
-/

namespace A216046.P11712963090807512530
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092848 (2 * n + 1) : ℚ) / (A132972 (2 * n + 1) : ℚ) * (A141094 (2 * n + 1) : ℚ)

end

end A216046.P11712963090807512530

/-! ## A216046.P4007938718201116873

`A182034(3*n+2)`
-/

namespace A216046.P4007938718201116873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182034 (3 * n + 2)

end

end A216046.P4007938718201116873

/-! ## A216046.P16054270549604604792

`A062244(4*n+3)`
-/

namespace A216046.P16054270549604604792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062244 (4 * n + 3)

end

end A216046.P16054270549604604792

/-! ## A216046.P6596433732018676820

`A164615(6*n+4)`
-/

namespace A216046.P6596433732018676820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164615 (6 * n + 4)

end

end A216046.P6596433732018676820

/-! ## A216046.P13586427471453118688

`A182035(4*n+2+A005843(n+1))`
-/

namespace A216046.P13586427471453118688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182035 ((4 * n + 2 : ℤ) + A005843 (n + 1)).toNat

end

end A216046.P13586427471453118688

/-! ## A216046.P4381300467221253918

`A128144(A017617(n))`
-/

namespace A216046.P4381300467221253918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128144 (A017617 n).toNat

end

end A216046.P4381300467221253918

/-!
# A216047: Consider the ordered Goldbach partitions of the even numbers m. Then a(n) is the least m which contains prime(n) such partitions composed of odd primes.

The programs for A216047, there is no canonical definition to state claims against.
-/

/-! ## A216047.P8231461923048911062

`2*A298990(A000040(n+1))`
-/

namespace A216047.P8231461923048911062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298990 (A000040 (n + 1)).toNat

end

end A216047.P8231461923048911062

/-! ## A216047.P7520973861845422521

`2*A298990(A008578(n+2))`
-/

namespace A216047.P7520973861845422521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298990 (A008578 (n + 2)).toNat

end

end A216047.P7520973861845422521

/-! ## A216047.P11731796979606985535

`2*A298990(record[A014963(n+2)])`
-/

namespace A216047.P11731796979606985535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298990 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A216047.P11731796979606985535

/-! ## A216047.P15833853259339002656

`2*A298990(p?[A073846(n+1)])`
-/

namespace A216047.P15833853259339002656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298990 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A216047.P15833853259339002656

/-! ## A216047.P8004139238793332256

`2*A298990(p?[A302569(n+1)])`
-/

namespace A216047.P8004139238793332256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302569 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298990 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A216047.P8004139238793332256

/-! ## A216047.P15462050179430635481

`2*A298990(A073846(2*(n+1)))`
-/

namespace A216047.P15462050179430635481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298990 (A073846 (2 * (n + 1))).toNat

end

end A216047.P15462050179430635481

/-! ## A216047.P13970891201540295460

`2*A298990(p?[A003963(2*n+1)])`
-/

namespace A216047.P13970891201540295460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298990 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A216047.P13970891201540295460

/-!
# A216048: Consider the unordered Goldbach partitions of the even numbers m. Then a(n) is the least m which contains prime(n) such partitions composed of odd primes.

The programs for A216048, there is no canonical definition to state claims against.
-/

/-! ## A216048.P5090584766429166515

`A001172(p?[comp[n²]])`
-/

namespace A216048.P5090584766429166515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A216048.P5090584766429166515

/-! ## A216048.P15525995045080261979

`A023036(p?[xor(1, n)+1])`
-/

namespace A216048.P15525995045080261979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023036 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A216048.P15525995045080261979

/-! ## A216048.P11167199512229987320

`A023036(p?[n%3+n])`
-/

namespace A216048.P11167199512229987320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023036 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A216048.P11167199512229987320

/-! ## A216048.P6792735406999890963

`A023036(p?[a(n-1)+2])` with `a(0)=2, a(1)=1`
-/

namespace A216048.P6792735406999890963
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023036 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A216048.P6792735406999890963

/-! ## A216048.P1232182018127967121

`A023036(∏{p}[p?[round(8*n/7)]², #])`
-/

namespace A216048.P1232182018127967121
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023036 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A216048.P1232182018127967121

/-! ## A216048.P14844174547357493912

`A001172(Δ[A007504(n)])`
-/

namespace A216048.P14844174547357493912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 (f1 (n + 1) - f1 n).toNat

end

end A216048.P14844174547357493912

/-! ## A216048.P13885176500315951607

`A023036(Δ[A007504(n)])`
-/

namespace A216048.P13885176500315951607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023036 (f1 (n + 1) - f1 n).toNat

end

end A216048.P13885176500315951607

/-! ## A216048.P17129631471940181099

`A001172(A000040(n+1))`
-/

namespace A216048.P17129631471940181099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 (A000040 (n + 1)).toNat

end

end A216048.P17129631471940181099

/-! ## A216048.P16940708255235725022

`A001172(A008578(n+2))`
-/

namespace A216048.P16940708255235725022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 (A008578 (n + 2)).toNat

end

end A216048.P16940708255235725022

/-! ## A216048.P9752201604560523823

`A001172(A182986(n+2))`
-/

namespace A216048.P9752201604560523823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 (A182986 (n + 2)).toNat

end

end A216048.P9752201604560523823

/-! ## A216048.P17575996703161397477

`A001172(A324050(n+2))`
-/

namespace A216048.P17575996703161397477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 (A324050 (n + 2)).toNat

end

end A216048.P17575996703161397477

/-! ## A216048.P17215320553350054758

`A001172(eq[1, A003415(n)])`
-/

namespace A216048.P17215320553350054758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216048.P17215320553350054758

/-! ## A216048.P15919163401813666670

`A001172(record[A006530(n+2)])`
-/

namespace A216048.P15919163401813666670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A216048.P15919163401813666670

/-! ## A216048.P9866933959286175884

`A001172(record[A014963(n+2)])`
-/

namespace A216048.P9866933959286175884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A216048.P9866933959286175884

/-! ## A216048.P10161369039230061586

`A001172(record[A020639(n+2)])`
-/

namespace A216048.P10161369039230061586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A216048.P10161369039230061586

/-! ## A216048.P12529127135271325850

`A023036(record[A006530(n+2)])`
-/

namespace A216048.P12529127135271325850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023036 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A216048.P12529127135271325850

/-! ## A216048.P69111840151147912

`A023036(record[A014963(n+2)])`
-/

namespace A216048.P69111840151147912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023036 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A216048.P69111840151147912

/-! ## A216048.P9320754737680194550

`A023036(record[A020639(n+2)])`
-/

namespace A216048.P9320754737680194550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023036 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A216048.P9320754737680194550

/-! ## A216048.P11811632756579577244

`A023036(A052147(n+1)-2)`
-/

namespace A216048.P11811632756579577244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023036 (A052147 (n + 1) - 2).toNat

end

end A216048.P11811632756579577244

/-!
# A216049: Consider the ordered Goldbach partitions of the even numbers m. Then a(n) is the least m which contains 2n-1 such partitions composed of odd primes.

The programs for A216049, there is no canonical definition to state claims against.
-/

/-! ## A216049.P9142594375690365778

`2*or(1, A126204(n))`
-/

namespace A216049.P9142594375690365778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 1 (A126204 n)

end

end A216049.P9142594375690365778

/-! ## A216049.P5266041052517196149

`or(2, A073611(2*n+1))`
-/

namespace A216049.P5266041052517196149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A073611 (2 * n + 1))

end

end A216049.P5266041052517196149

/-! ## A216049.P2022063097902104088

`(floor(acot(n))+2)*p?[A298990(n)]`
-/

namespace A216049.P2022063097902104088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298990 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊SequenceMachineLib.acot (n : ℝ)⌋ + 2) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216049.P2022063097902104088

/-! ## A216049.P450461072990249330

`2*or(1, A298990(2*n+1))`
-/

namespace A216049.P450461072990249330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * Int.lor 1 (A298990 (2 * n + 1))

end

end A216049.P450461072990249330

/-! ## A216049.P10565653986160687109

`A006255(A126204(n))`
-/

namespace A216049.P10565653986160687109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006255 (A126204 n).toNat

end

end A216049.P10565653986160687109

/-! ## A216049.P2066915403842929485

`A071888(p?[A126204(n)])`
-/

namespace A216049.P2066915403842929485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071888 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A216049.P2066915403842929485

/-! ## A216049.P5021771268184106567

`A087560(p?[A126204(n)])`
-/

namespace A216049.P5021771268184106567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087560 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A216049.P5021771268184106567

/-! ## A216049.P10898191844010242704

`A096014(p?[A126204(n)])`
-/

namespace A216049.P10898191844010242704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126204 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096014 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A216049.P10898191844010242704

/-! ## A216049.P5879629606553720123

`A003968(2*A126204(n))`
-/

namespace A216049.P5879629606553720123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003968 (2 * A126204 n).toNat

end

end A216049.P5879629606553720123

/-! ## A216049.P17430547929218894390

`A005843(or(1, A126204(n)))`
-/

namespace A216049.P17430547929218894390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (Int.lor 1 (A126204 n)).toNat

end

end A216049.P17430547929218894390

/-! ## A216049.P815295664569887384

`A109043(or(1, A126204(n)))`
-/

namespace A216049.P815295664569887384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 (Int.lor 1 (A126204 n)).toNat

end

end A216049.P815295664569887384

/-! ## A216049.P7329198813737510718

`A004275(or(1, A126204(n))+1)`
-/

namespace A216049.P7329198813737510718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (Int.lor 1 (A126204 n) + 1).toNat

end

end A216049.P7329198813737510718

/-! ## A216049.P16279603313990638453

`A005408(or(1, A126204(n)))-1`
-/

namespace A216049.P16279603313990638453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (Int.lor 1 (A126204 n)).toNat - 1

end

end A216049.P16279603313990638453

/-! ## A216049.P16177833406152006355

`lcm(2, A014963(or(1, A126204(n))))`
-/

namespace A216049.P16177833406152006355
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A014963 (Int.lor 1 (A126204 n)).toNat)

end

end A216049.P16177833406152006355

/-! ## A216049.P10321037834946815778

`or(2, A004275(or(1, A126204(n))))`
-/

namespace A216049.P10321037834946815778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A004275 (Int.lor 1 (A126204 n)).toNat)

end

end A216049.P10321037834946815778

/-! ## A216049.P11757885228712315016

`A126204(n)*A178815(n+1)`
-/

namespace A216049.P11757885228712315016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126204 n * A178815 (n + 1)

end

end A216049.P11757885228712315016

/-! ## A216049.P29081878876338325

`2*(A126204(n)+A000007(n))`
-/

namespace A216049.P29081878876338325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A126204 n + A000007 n)

end

end A216049.P29081878876338325

/-! ## A216049.P5045661744172437979

`A001221(a(n-1))*A126204(n)` with `a(0)=6`
-/

namespace A216049.P5045661744172437979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A001221 (a (n - 1)).toNat * A126204 n

end

end A216049.P5045661744172437979

/-! ## A216049.P13179072869247298762

`A020639(a(n-1))*A126204(n)` with `a(0)=6`
-/

namespace A216049.P13179072869247298762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A020639 (a (n - 1)).toNat * A126204 n

end

end A216049.P13179072869247298762

/-! ## A216049.P2666582366610389362

`A001222(a(A001222(n)))*A126204(n)` with `a(0)=6`
-/

namespace A216049.P2666582366610389362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  A001222 (a (A001222 n).toNat).toNat * A126204 n

end

end A216049.P2666582366610389362

/-!
# A216050: Consider the unordered Goldbach partitions of the even numbers m. Then a(n) is the least m which contains 2n-1 such partitions composed of odd primes.

The programs for A216050, there is no canonical definition to state claims against.
-/

/-! ## A216050.P6182368634571668166

`A001172(Δ[n²])`
-/

namespace A216050.P6182368634571668166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A216050.P6182368634571668166

/-! ## A216050.P7871644296736666628

`2*A258713(Δ[n²])`
-/

namespace A216050.P7871644296736666628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A258713 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A216050.P7871644296736666628

/-! ## A216050.P12530721276538165752

`lcm(2, A001172(comp[2*n]))`
-/

namespace A216050.P12530721276538165752
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A001172 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n))

end

end A216050.P12530721276538165752

/-! ## A216050.P10348718216612197741

`root(A001172(2*n+1), 2)²`
-/

namespace A216050.P10348718216612197741
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A001172 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A216050.P10348718216612197741

/-! ## A216050.P13591214088843269905

`A023036(Δ[n²])+floor(acot(n)²)`
-/

namespace A216050.P13591214088843269905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023036 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋

end

end A216050.P13591214088843269905

/-! ## A216050.P18021096543750323350

`A245092(A001172(comp[2*n]))`
-/

namespace A216050.P18021096543750323350
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245092 (A001172 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A216050.P18021096543750323350

/-! ## A216050.P14677992720757688965

`A004277(A258713(comp[2*n]))`
-/

namespace A216050.P14677992720757688965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A258713 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A216050.P14677992720757688965

/-! ## A216050.P17807582430353987703

`A005843(A258713(2*n+1))`
-/

namespace A216050.P17807582430353987703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A258713 (2 * n + 1)).toNat

end

end A216050.P17807582430353987703

/-! ## A216050.P2885280592926265109

`A014682(2*A001172(2*n+1))`
-/

namespace A216050.P2885280592926265109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A001172 (2 * n + 1)).toNat

end

end A216050.P2885280592926265109

/-! ## A216050.P17619358461059672985

`A023036(2*n+1)+A000038(n)`
-/

namespace A216050.P17619358461059672985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023036 (2 * n + 1) + A000038 n

end

end A216050.P17619358461059672985

/-! ## A216050.P8947364999782101942

`filter[A001172(2*n+1), A005171(#)]`
-/

namespace A216050.P8947364999782101942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A216050.P8947364999782101942

/-! ## A216050.P6264123266447870582

`filter[A001172(2*n+1), A014306(#)]`
-/

namespace A216050.P6264123266447870582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A014306 (f1 j).toNat = 1) n)

end

end A216050.P6264123266447870582

/-! ## A216050.P3421217404941090635

`filter[A001172(2*n+1), A043545(#)]`
-/

namespace A216050.P3421217404941090635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A043545 (f1 j).toNat = 1) n)

end

end A216050.P3421217404941090635

/-! ## A216050.P6436825908571976768

`filter[A001172(2*n+1), A059841(#)]`
-/

namespace A216050.P6436825908571976768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A216050.P6436825908571976768

/-! ## A216050.P9687287802867755811

`filter[A001172(2*n+1), A066247(#)]`
-/

namespace A216050.P9687287802867755811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A216050.P9687287802867755811

/-! ## A216050.P10824176161902441895

`filter[A001172(2*n+1), A072608(#)]`
-/

namespace A216050.P10824176161902441895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A072608 (f1 j).toNat = 1) n)

end

end A216050.P10824176161902441895

/-! ## A216050.P1382964829071554851

`filter[A001172(2*n+1), A091247(#)]`
-/

namespace A216050.P1382964829071554851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A091247 (f1 j).toNat = 1) n)

end

end A216050.P1382964829071554851

/-! ## A216050.P10453488651537582109

`filter[A001172(2*n+1), A093521(#)]`
-/

namespace A216050.P10453488651537582109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A093521 (f1 j).toNat = 1) n)

end

end A216050.P10453488651537582109

/-! ## A216050.P1178112354950661433

`filter[A001172(2*n+1), A095792(#)]`
-/

namespace A216050.P1178112354950661433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001172 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A095792 (f1 j).toNat = 1) n)

end

end A216050.P1178112354950661433

/-!
# A216051: Even numbers m that have an odd number of Goldbach partitions whose lesser and greater elements each sum to a prime.

The programs for A216051, there is no canonical definition to state claims against.
-/

/-! ## A216051.P5441416265708982400

`eq[(-1)^n, A003415(A350865(n))]`
-/

namespace A216051.P5441416265708982400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A350865 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216051.P5441416265708982400

/-! ## A216051.P10008021530548453758

`eq[A003415(A350865(n)), A010684(n)]`
-/

namespace A216051.P10008021530548453758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A350865 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216051.P10008021530548453758

/-! ## A216051.P15698389564806629940

`eq[A003415(A350865(n)), A033999(n)]`
-/

namespace A216051.P15698389564806629940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A350865 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216051.P15698389564806629940

/-! ## A216051.P18138040709291885169

`eq[A003415(A350865(n)), A084642(n)]`
-/

namespace A216051.P18138040709291885169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A350865 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216051.P18138040709291885169

/-! ## A216051.P2124239069046449481

`eq[A003415(A350865(n)), A152271(n)]`
-/

namespace A216051.P2124239069046449481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A350865 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A216051.P2124239069046449481

/-!
# A216053: a(n) is the position of the last two-tuple within the reverse lexicographic set of partitions of 2n and 2n+1, with a(1)-a(n) representing the positions of every 2-tuple partition of 2n and 2n+1.

The programs for A216053, there is no canonical definition to state claims against.
-/

/-! ## A216053.P14564482534305687531

`1+A000070(n)`
-/

namespace A216053.P14564482534305687531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000070 n

end

end A216053.P14564482534305687531

/-! ## A216053.P18134408264124587889

`∑[A000041(n)]+1`
-/

namespace A216053.P18134408264124587889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A216053.P18134408264124587889

/-! ## A216053.P3304111411943200048

`A058682(n)+2+n`
-/

namespace A216053.P3304111411943200048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058682 n + 2 + (n : ℤ)

end

end A216053.P3304111411943200048

/-! ## A216053.P5525961462284468283

`∑[∑[A002865(n)]]+1`
-/

namespace A216053.P5525961462284468283
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A216053.P5525961462284468283

/-! ## A216053.P908855949797582440

`∑[A000065(n)+1]+1`
-/

namespace A216053.P908855949797582440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A216053.P908855949797582440

/-! ## A216053.P2585736157270129808

`∑[A052810(n)-1]+2`
-/

namespace A216053.P2585736157270129808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052810 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A216053.P2585736157270129808

/-! ## A216053.P9316542624213833886

`∑[A133041(n)-n]+1`
-/

namespace A216053.P9316542624213833886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133041 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A216053.P9316542624213833886

/-! ## A216053.P13010121527111167043

`A084376(n)+a(n-2)` with `a(0)=2, a(1)=3`
-/

namespace A216053.P13010121527111167043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A084376 n + a (n - 2)

end

end A216053.P13010121527111167043

/-! ## A216053.P1421430757930131653

`a(n-1)+A000041(C(n+1, n)-1)` with `a(0)=2`
-/

namespace A216053.P1421430757930131653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A000041 (Nat.choose (n + 1) n - 1)

end

end A216053.P1421430757930131653

/-! ## A216053.P11799449924403749158

`a(n-1)+A000041(and(1, 2*n)+n)` with `a(0)=2`
-/

namespace A216053.P11799449924403749158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A000041 (Nat.land 1 (2 * n) + n)

end

end A216053.P11799449924403749158

/-! ## A216053.P9659688586903079342

`a(n-1)+A000041(floor((2*n+1)/2))` with `a(0)=2`
-/

namespace A216053.P9659688586903079342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + A000041 ⌊(2 * n + 1 : ℚ) / 2⌋.toNat

end

end A216053.P9659688586903079342

/-! ## A216053.P198638840845341083

`A058884(n)+A139582(n)+1`
-/

namespace A216053.P198638840845341083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058884 n + (A139582 n + 1)

end

end A216053.P198638840845341083

/-! ## A216053.P3463082647524794402

`A304620(n)+A306145(n)+1`
-/

namespace A216053.P3463082647524794402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304620 n + (A306145 n + 1)

end

end A216053.P3463082647524794402

/-! ## A216053.P252142463450865840

`∑[A295341(n)+A000726(n)]+1`
-/

namespace A216053.P252142463450865840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295341 n + A000726 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A216053.P252142463450865840

/-! ## A216053.P872017414996493339

`n-(A023443(n)-∑[A000041(n)])`
-/

namespace A216053.P872017414996493339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (A023443 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216053.P872017414996493339

/-! ## A216053.P16637939934805017119

`a(n-1)+A018783(n)+A000837(n)` with `a(0)=2`
-/

namespace A216053.P16637939934805017119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A018783 n + A000837 n)

end

end A216053.P16637939934805017119

/-! ## A216053.P10231030874055133800

`a(n-1)+A039900(n)+A003106(n)` with `a(0)=2`
-/

namespace A216053.P10231030874055133800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A039900 n + A003106 n)

end

end A216053.P10231030874055133800

/-! ## A216053.P3716073416541498794

`A093694(n)+1-A096541(n)`
-/

namespace A216053.P3716073416541498794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093694 n + (1 - A096541 n)

end

end A216053.P3716073416541498794

/-! ## A216053.P13300538841322476484

`A006128(n)+2-A198381(n)`
-/

namespace A216053.P13300538841322476484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006128 n + (2 - A198381 n)

end

end A216053.P13300538841322476484

/-! ## A216053.P12704017579689653513

`A000291(n)+1-A000097(n)`
-/

namespace A216053.P12704017579689653513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000291 n + (1 - A000097 n)

end

end A216053.P12704017579689653513

/-!
# A216054: Square array T, read by antidiagonals: T(n,k) = 0 if n-k >= 1 or if k-n >= 6, T(0,0) = T(0,1) = T(0,2) = T(0,3) = T(0,4) = T(0,5) = 1, T(n,k) = T(n-1,k) + T(n,k-1).

The programs for A216054, there is no canonical definition to state claims against.
-/

/-! ## A216054.P9143978486277336698

`A217257(n)-A025441(A119502(n))`
-/

namespace A216054.P9143978486277336698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217257 n - A025441 (A119502 n).toNat

end

end A216054.P9143978486277336698

/-! ## A216054.P604753037520781424

`C(A217257(n), A140643(A027907(n)))`
-/

namespace A216054.P604753037520781424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A217257 n).toNat (A140643 (A027907 n).toNat).toNat

end

end A216054.P604753037520781424

/-! ## A216054.P5211140653215868882

`A217257(A066182(n+1))%A173637(n+1)`
-/

namespace A216054.P5211140653215868882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A217257 (A066182 (n + 1)).toNat) (A173637 (n + 1))

end

end A216054.P5211140653215868882

/-! ## A216054.P821637822480981799

`A217257(A066182(n+1)%A206473(n+1))`
-/

namespace A216054.P821637822480981799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217257 (Int.tmod (A066182 (n + 1)) (A206473 (n + 1))).toNat

end

end A216054.P821637822480981799

/-! ## A216054.P15981880931575986931

`A217593(n)+A010815(A151741(2*(n+1)))`
-/

namespace A216054.P15981880931575986931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217593 n + A010815 (A151741 (2 * (n + 1))).toNat

end

end A216054.P15981880931575986931

/-!
# A216055: Numbers that are mean of four squares of distinct primes.

The programs for A216055, there is no canonical definition to state claims against.
-/

/-! ## A216055.P3853271767052830351

`A389640(n+1)/2`
-/

namespace A216055.P3853271767052830351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A389640 (n + 1) : ℚ) / 2

end

end A216055.P3853271767052830351

/-! ## A216055.P5553105966983395956

`A000265(A389640(n+1))`
-/

namespace A216055.P5553105966983395956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A389640 (n + 1)).toNat

end

end A216055.P5553105966983395956

/-! ## A216055.P5318769999044668080

`A025480(∩[A389640(n+1), A005843(n)])`
-/

namespace A216055.P5318769999044668080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389640 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A216055.P5318769999044668080

/-! ## A216055.P1950838353096706143

`A025480(∩[A389634(n+1), A389640(n+1)])`
-/

namespace A216055.P1950838353096706143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389640 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A216055.P1950838353096706143

/-! ## A216055.P7744640427643409219

`A025480(A389640(n+1)+A000007(2*(n+1)))`
-/

namespace A216055.P7744640427643409219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A389640 (n + 1) + A000007 (2 * (n + 1))).toNat

end

end A216055.P7744640427643409219

/-!
# A216057: a(n) = A045429(n) - A045356(n).

The programs for A216057, the canonical program `A216057.P3710212579143236931` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216057 has offset 1).

The definition of A216057 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A045356, A045429, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A216057.P3710212579143236931

`A045429(n+1)-A045356(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A216057

/-- `A045429(n+1)-A045356(n+1)` -/
def P3710212579143236931.Spec : Prop :=
  ∀ n, P3710212579143236931.a n = A216057 (n + 1)

theorem P3710212579143236931.correct : P3710212579143236931.Spec := by
  intro n
  simp only [A216057, Nat.add_sub_cancel]

end A216057

/-! ## A216057.P12347013358981658266

`A045429(n+1)-A000040(A244736(n+1))`
-/

namespace A216057.P12347013358981658266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1) - A000040 (A244736 (n + 1)).toNat

end

end A216057.P12347013358981658266

namespace A216057

/-- `A045429(n+1)-A000040(A244736(n+1))` -/
def P12347013358981658266.Spec : Prop :=
  ∀ n, P12347013358981658266.a n = A216057 (n + 1)

end A216057

/-! ## A216057.P1376410017284562770

`A000040(A244737(n+1))-A045356(n+1)`
-/

namespace A216057.P1376410017284562770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A244737 (n + 1)).toNat - A045356 (n + 1)

end

end A216057.P1376410017284562770

namespace A216057

/-- `A000040(A244737(n+1))-A045356(n+1)` -/
def P1376410017284562770.Spec : Prop :=
  ∀ n, P1376410017284562770.a n = A216057 (n + 1)

end A216057

/-! ## A216057.P1928946671375185299

`A000040(A244737(n+1))-A000040(A244736(n+1))`
-/

namespace A216057.P1928946671375185299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A244737 (n + 1)).toNat - A000040 (A244736 (n + 1)).toNat

end

end A216057.P1928946671375185299

namespace A216057

/-- `A000040(A244737(n+1))-A000040(A244736(n+1))` -/
def P1928946671375185299.Spec : Prop :=
  ∀ n, P1928946671375185299.a n = A216057 (n + 1)

end A216057

/-! ## A216057.P13721495436924199190

`p?[A130483(n)]-A045356(n+1)`
-/

namespace A216057.P13721495436924199190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130483 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A045356 (n + 1)

end

end A216057.P13721495436924199190

namespace A216057

/-- `p?[A130483(n)]-A045356(n+1)` -/
def P13721495436924199190.Spec : Prop :=
  ∀ n, P13721495436924199190.a n = A216057 (n + 1)

end A216057

/-! ## A216057.P10631949618017192872

`p?[A001068(A047486(n+1))]-A045356(n+1)`
-/

namespace A216057.P10631949618017192872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A047486 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - A045356 (n + 1)

end

end A216057.P10631949618017192872

namespace A216057

/-- `p?[A001068(A047486(n+1))]-A045356(n+1)` -/
def P10631949618017192872.Spec : Prop :=
  ∀ n, P10631949618017192872.a n = A216057 (n + 1)

end A216057

/-! ## A216057.P15353401145849934357

`A045429(n+1)-p?[A002518(n)]`
-/

namespace A216057.P15353401145849934357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045429 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216057.P15353401145849934357

namespace A216057

/-- `A045429(n+1)-p?[A002518(n)]` -/
def P15353401145849934357.Spec : Prop :=
  ∀ n, P15353401145849934357.a n = A216057 (n + 1)

end A216057

/-!
# A216059: Smallest number not in Collatz trajectory starting at n.

The programs for A216059, there is no canonical definition to state claims against.
-/

/-! ## A216059.P5701593782490090529

`A216022(n+1)+1`
-/

namespace A216059.P5701593782490090529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216022 (n + 1) + 1

end

end A216059.P5701593782490090529

/-!
# A216061: Primes p such that p^3 + p + 1 is prime.

The programs for A216061, there is no canonical definition to state claims against.
-/

/-! ## A216061.P3093171315437629388

`p?[A049407(n+1)]`
-/

namespace A216061.P3093171315437629388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216061.P3093171315437629388

/-! ## A216061.P4848961581452775446

`p?[floor(root(A095692(n+1), 3))]`
-/

namespace A216061.P4848961581452775446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095692 (n + 1) : ℝ) ^ (1 / (3 : ℝ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216061.P4848961581452775446

/-! ## A216061.P16411718666691886428

`∩[A000040(n+1), A049407(n+1)]`
-/

namespace A216061.P16411718666691886428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216061.P16411718666691886428

/-! ## A216061.P10277268029235776784

`∩[A040028(n+1), A049407(n+1)]`
-/

namespace A216061.P10277268029235776784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040028 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216061.P10277268029235776784

/-! ## A216061.P493541533744473210

`∩[A040036(n+1), A049407(n+1)]`
-/

namespace A216061.P493541533744473210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040036 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216061.P493541533744473210

/-! ## A216061.P12398834596821024664

`∩[A040044(n+1), A049407(n+1)]`
-/

namespace A216061.P12398834596821024664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040044 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216061.P12398834596821024664

/-! ## A216061.P4111269659589674255

`∩[A040046(n+1), A049407(n+1)]`
-/

namespace A216061.P4111269659589674255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040046 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216061.P4111269659589674255

/-! ## A216061.P11227159612566581998

`∩[A040049(n+1), A049407(n+1)]`
-/

namespace A216061.P11227159612566581998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040049 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216061.P11227159612566581998

/-! ## A216061.P3828996293507614923

`∩[A040054(n+1), A049407(n+1)]`
-/

namespace A216061.P3828996293507614923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040054 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216061.P3828996293507614923

/-! ## A216061.P10755057171448234157

`∩[A040060(n+1), A049407(n+1)]`
-/

namespace A216061.P10755057171448234157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040060 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216061.P10755057171448234157

/-! ## A216061.P3727875616467777186

`∩[A040062(n+1), A049407(n+1)]`
-/

namespace A216061.P3727875616467777186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216061.P3727875616467777186

/-! ## A216061.P7676514453938200239

`∩[A040065(n+1), A049407(n+1)]`
-/

namespace A216061.P7676514453938200239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040065 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216061.P7676514453938200239

/-! ## A216061.P3017178689923460669

`∩[A040078(n+1), A049407(n+1)]`
-/

namespace A216061.P3017178689923460669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040078 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216061.P3017178689923460669

/-! ## A216061.P2740229500344790034

`∩[A040083(n+1), A049407(n+1)]`
-/

namespace A216061.P2740229500344790034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040083 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216061.P2740229500344790034

/-! ## A216061.P9938499539273123608

`∩[A040085(n+1), A049407(n+1)]`
-/

namespace A216061.P9938499539273123608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040085 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216061.P9938499539273123608

/-! ## A216061.P16202860746686133728

`∩[A040087(n+1), A049407(n+1)]`
-/

namespace A216061.P16202860746686133728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040087 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216061.P16202860746686133728

/-! ## A216061.P14442723639728226856

`∩[A040089(n+1), A049407(n+1)]`
-/

namespace A216061.P14442723639728226856
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040089 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216061.P14442723639728226856

/-! ## A216061.P4588157352380041614

`∩[A040095(n+1), A049407(n+1)]`
-/

namespace A216061.P4588157352380041614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040095 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216061.P4588157352380041614

/-! ## A216061.P13563965454828177733

`∩[A045309(n+1), A049407(n+1)]`
-/

namespace A216061.P13563965454828177733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216061.P13563965454828177733

/-! ## A216061.P2385068966704914232

`∩[A049596(n+1), A049407(n+1)]`
-/

namespace A216061.P2385068966704914232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049407 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216061.P2385068966704914232

/-!
# A216062: Number of distinct values taken by 9th derivative of x^x^...^x (with n x's and parentheses inserted in all possible ways) at x=1.

The programs for A216062, there is no canonical definition to state claims against.
-/

/-! ## A216062.P1941113840684399183

`A216368(∑[A028904(n+1)])`
-/

namespace A216062.P1941113840684399183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028904 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216368 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216062.P1941113840684399183

/-! ## A216062.P6303585550333086035

`A216368(∑[n+1-A027197(n+1)])`
-/

namespace A216062.P6303585550333086035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A027197 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216368 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216062.P6303585550333086035

/-! ## A216062.P17400641215977150553

`A216368(A328865(n+1)+A000217(n))`
-/

namespace A216062.P17400641215977150553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216368 (A328865 (n + 1) + A000217 n).toNat

end

end A216062.P17400641215977150553

/-! ## A216062.P3764599272565160934

`or(val(A198683(n+1), 6), A145546(n+1))`
-/

namespace A216062.P3764599272565160934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (SequenceMachineLib.valuation (A198683 (n + 1)).toNat 6 : ℤ) (A145546 (n + 1))

end

end A216062.P3764599272565160934

/-! ## A216062.P14878360079629394375

`A000081(n+1)-A374089(A052542(n))`
-/

namespace A216062.P14878360079629394375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000081 (n + 1) - A374089 (A052542 n).toNat

end

end A216062.P14878360079629394375

/-!
# A216067: Prime numbers p such that p is odd and is congruent to 2 (mod 5) or 3 (mod 5), but the period of the irreducible polynomial x^2-x-1 in GF(p^2) is not 2*(p+1).

The programs for A216067, there is no canonical definition to state claims against.
-/

/-! ## A216067.P18205776210643411248

`∩[A003631(n+1), A328896(n+1)]`
-/

namespace A216067.P18205776210643411248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216067.P18205776210643411248

/-! ## A216067.P16232918688713341578

`∩[A042993(n+1), A328896(n+1)]`
-/

namespace A216067.P16232918688713341578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216067.P16232918688713341578

/-! ## A216067.P4693383845554313964

`∩[A069104(n+1), A328896(n+1)]`
-/

namespace A216067.P4693383845554313964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069104 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216067.P4693383845554313964

/-! ## A216067.P12641929391910008293

`∩[A097957(n+1), A328896(n+1)]`
-/

namespace A216067.P12641929391910008293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097957 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216067.P12641929391910008293

/-! ## A216067.P1272381427165903686

`∩[A140971(n+1), A328896(n+1)]`
-/

namespace A216067.P1272381427165903686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216067.P1272381427165903686

/-! ## A216067.P15770639889997988611

`∩[A023162(n+1), A328896(n+1)]`
-/

namespace A216067.P15770639889997988611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216067.P15770639889997988611

/-! ## A216067.P17209750555855230848

`∩[A063206(n+1), A328896(n+1)]`
-/

namespace A216067.P17209750555855230848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063206 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216067.P17209750555855230848

/-! ## A216067.P13607363753281180512

`∩[A063226(n+1), A328896(n+1)]`
-/

namespace A216067.P13607363753281180512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216067.P13607363753281180512

/-! ## A216067.P8238498117344500372

`∩[A328896(n+1), A379211(n+1)]`
-/

namespace A216067.P8238498117344500372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379211 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216067.P8238498117344500372

/-! ## A216067.P5749190798868906444

`∩[A328896(n+1), A298786(n)]`
-/

namespace A216067.P5749190798868906444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298786 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216067.P5749190798868906444

/-! ## A216067.P8505657326535938552

`∩[A063241(n+1), A328896(n+1)]`
-/

namespace A216067.P8505657326535938552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063241 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216067.P8505657326535938552

/-! ## A216067.P17933454115964647504

`∩[A047221(n+1), A328896(n+1)]`
-/

namespace A216067.P17933454115964647504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216067.P17933454115964647504

/-! ## A216067.P1579590350692286109

`∩[A260181(n+1), A328896(n+1)]`
-/

namespace A216067.P1579590350692286109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216067.P1579590350692286109

/-! ## A216067.P2866727009362386948

`∩[A326422(n+1), A328896(n+1)]`
-/

namespace A216067.P2866727009362386948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216067.P2866727009362386948

/-! ## A216067.P10658310209477352615

`∩[A047222(n+1), A328896(n+1)]`
-/

namespace A216067.P10658310209477352615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328896 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216067.P10658310209477352615

/-!
# A216068: The period after which the powers of n repeat on an 8-digit calculator.

The programs for A216068, there is no canonical definition to state claims against.
-/

/-! ## A216068.P294574301275177191

`A216070(n+2)-A216069(n+2)`
-/

namespace A216068.P294574301275177191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216070 (n + 2) - A216069 (n + 2)

end

end A216068.P294574301275177191

/-!
# A216069: The point at which the powers of n merge on an 8-digit calculator.

The programs for A216069, there is no canonical definition to state claims against.
-/

/-! ## A216069.P4975218103234677553

`A216070(n+2)-A216068(n+2)`
-/

namespace A216069.P4975218103234677553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216070 (n + 2) - A216068 (n + 2)

end

end A216069.P4975218103234677553

/-!
# A216070: The point to which the powers of n merge on an 8-digit calculator.

The programs for A216070, there is no canonical definition to state claims against.
-/

/-! ## A216070.P4537466245695389359

`A216069(n+2)+A216068(n+2)`
-/

namespace A216070.P4537466245695389359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216069 (n + 2) + A216068 (n + 2)

end

end A216070.P4537466245695389359

/-!
# A216072: Aliquot open end sequences which belong to distinct families.

The programs for A216072, there is no canonical definition to state claims against.
-/

/-! ## A216072.P9124049055638839472

`A131884(∪[A041939(n), A114765(n)])`
-/

namespace A216072.P9124049055638839472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A041939 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114765 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131884 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A216072.P9124049055638839472

/-!
# A216073: The list of the a(n)-values in the common solutions to k+1=b^2 and 6*k+1=a^2.

The programs for A216073, the canonical program `A216073.P7734071452460885848` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216073 has offset 1).

The definition of A216073 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216073.P7734071452460885848

`10*a(n-2)-a(n-4)` with `a(0)=1, a(1)=7, a(2)=17, a(3)=71`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A216073

/-- `10*a(n-2)-a(n-4)` -/
def P7734071452460885848.Spec : Prop :=
  ∀ n, P7734071452460885848.a n = A216073 (n + 1)

theorem P7734071452460885848.correct : P7734071452460885848.Spec := by
  intro n
  simp only [A216073, Nat.add_sub_cancel]

end A216073

/-! ## A216073.P13272608712099958618

`2*A077291(n)+1`
-/

namespace A216073.P13272608712099958618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A077291 n + 1

end

end A216073.P13272608712099958618

namespace A216073

/-- `2*A077291(n)+1` -/
def P13272608712099958618.Spec : Prop :=
  ∀ n, P13272608712099958618.a n = A216073 (n + 1)

end A216073

/-! ## A216073.P11765435791150363505

`2*A180483(n)-5`
-/

namespace A216073.P11765435791150363505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A180483 n - 5

end

end A216073.P11765435791150363505

namespace A216073

/-- `2*A180483(n)-5` -/
def P11765435791150363505.Spec : Prop :=
  ∀ n, P11765435791150363505.a n = A216073 (n + 1)

end A216073

/-! ## A216073.P5893434708254567676

`Δ[A010693(n)*A080872(n)]`
-/

namespace A216073.P5893434708254567676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010693 n * A080872 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216073.P5893434708254567676

namespace A216073

/-- `Δ[A010693(n)*A080872(n)]` -/
def P5893434708254567676.Spec : Prop :=
  ∀ n, P5893434708254567676.a n = A216073 (n + 1)

end A216073

/-! ## A216073.P18218692791730867813

`Δ[A080874(n)+A080873(n+1)]`
-/

namespace A216073.P18218692791730867813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080874 n + A080873 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A216073.P18218692791730867813

namespace A216073

/-- `Δ[A080874(n)+A080873(n+1)]` -/
def P18218692791730867813.Spec : Prop :=
  ∀ n, P18218692791730867813.a n = A216073 (n + 1)

end A216073

/-! ## A216073.P14339845885875399210

`or(2*A077291(n), char[A004442(n)])`
-/

namespace A216073.P14339845885875399210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * A077291 n) ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A216073.P14339845885875399210

namespace A216073

/-- `or(2*A077291(n), char[A004442(n)])` -/
def P14339845885875399210.Spec : Prop :=
  ∀ n, P14339845885875399210.a n = A216073 (n + 1)

end A216073

/-! ## A216073.P17185647754206723555

`A233450(n+2)+A129444(n+1)`
-/

namespace A216073.P17185647754206723555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233450 (n + 2) + A129444 (n + 1)

end

end A216073.P17185647754206723555

namespace A216073

/-- `A233450(n+2)+A129444(n+1)` -/
def P17185647754206723555.Spec : Prop :=
  ∀ n, P17185647754206723555.a n = A216073 (n + 1)

end A216073

/-! ## A216073.P14312907887439473394

`∑[2*A080806(n+1)]-A080872(n)`
-/

namespace A216073.P14312907887439473394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080806 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A080872 n

end

end A216073.P14312907887439473394

namespace A216073

/-- `∑[2*A080806(n+1)]-A080872(n)` -/
def P14312907887439473394.Spec : Prop :=
  ∀ n, P14312907887439473394.a n = A216073 (n + 1)

end A216073

/-! ## A216073.P17086364163600676746

`A004442(2*n)-(2*n-2*A077291(n))`
-/

namespace A216073.P17086364163600676746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * n) - ((2 * n : ℤ) - 2 * A077291 n)

end

end A216073.P17086364163600676746

namespace A216073

/-- `A004442(2*n)-(2*n-2*A077291(n))` -/
def P17086364163600676746.Spec : Prop :=
  ∀ n, P17086364163600676746.a n = A216073 (n + 1)

end A216073

/-! ## A216073.P2144216791516174678

`A080872(n+1)+A085376(n+1)-A080874(n)`
-/

namespace A216073.P2144216791516174678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080872 (n + 1) + (A085376 (n + 1) - A080874 n)

end

end A216073.P2144216791516174678

namespace A216073

/-- `A080872(n+1)+A085376(n+1)-A080874(n)` -/
def P2144216791516174678.Spec : Prop :=
  ∀ n, P2144216791516174678.a n = A216073 (n + 1)

end A216073

/-! ## A216073.P14499993302217145592

`A129445(n+4)%A129445(n+2)`
-/

namespace A216073.P14499993302217145592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A129445 (n + 4)) (A129445 (n + 2))

end

end A216073.P14499993302217145592

namespace A216073

/-- `A129445(n+4)%A129445(n+2)` -/
def P14499993302217145592.Spec : Prop :=
  ∀ n, P14499993302217145592.a n = A216073 (n + 1)

end A216073

/-! ## A216073.P308026105285408864

`gcd(A122652(n+1), A132596(n+1))-A080872(n)`
-/

namespace A216073.P308026105285408864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A122652 (n + 1)) (A132596 (n + 1)) : ℤ) - A080872 n

end

end A216073.P308026105285408864

namespace A216073

/-- `gcd(A122652(n+1), A132596(n+1))-A080872(n)` -/
def P308026105285408864.Spec : Prop :=
  ∀ n, P308026105285408864.a n = A216073 (n + 1)

end A216073

/-!
# A216074: Number of ways in which a four-player Old Maid match lasts for exactly n games until a player has been trolled exactly three times.

The programs for A216074, there is no canonical definition to state claims against.
-/

/-! ## A216074.P15344392964383254936

`32*A220017(n+3)`
-/

namespace A216074.P15344392964383254936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  32 * A220017 (n + 3)

end

end A216074.P15344392964383254936

/-!
# A216075: Numbers n such that 2*prime(n) - prime(n+1) is prime.

The programs for A216075, there is no canonical definition to state claims against.
-/

/-! ## A216075.P3526180424559333309

`A000720(A173970(n+1))`
-/

namespace A216075.P3526180424559333309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A173970 (n + 1)).toNat

end

end A216075.P3526180424559333309

/-! ## A216075.P436022418182576366

`A061395(p?[A173970(n+1)])`
-/

namespace A216075.P436022418182576366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A216075.P436022418182576366

/-! ## A216075.P14909190969932823177

`A061395(or(1, A173970(n+1)))`
-/

namespace A216075.P14909190969932823177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor 1 (A173970 (n + 1))).toNat

end

end A216075.P14909190969932823177

/-! ## A216075.P3688464401643206475

`∑{d}[A173970(n+1), A061395(#)]`
-/

namespace A216075.P3688464401643206475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173970 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061395 d

end

end A216075.P3688464401643206475

/-! ## A216075.P8547966863192473364

`A061395(A173970(n+1)%A017451(n))`
-/

namespace A216075.P8547966863192473364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.tmod (A173970 (n + 1)) (A017451 n)).toNat

end

end A216075.P8547966863192473364

/-! ## A216075.P9366767726248316171

`A061395(2*A173970(n+1))`
-/

namespace A216075.P9366767726248316171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A173970 (n + 1)).toNat

end

end A216075.P9366767726248316171

/-! ## A216075.P1691964114616562131

`eq[2, A293226(A062234(n+1))]+1`
-/

namespace A216075.P1691964114616562131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293226 (A062234 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A216075.P1691964114616562131

/-! ## A216075.P13714428930652738504

`A049084(or(1, A173970(n+1)))`
-/

namespace A216075.P13714428930652738504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (Int.lor 1 (A173970 (n + 1))).toNat

end

end A216075.P13714428930652738504

/-! ## A216075.P12856616747262569281

`A049084(A173970(n+1))%A257645(n)`
-/

namespace A216075.P12856616747262569281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049084 (A173970 (n + 1)).toNat) (A257645 n)

end

end A216075.P12856616747262569281

/-! ## A216075.P17519556698783808278

`A258851(A173970(n+1))%A031936(n+1)`
-/

namespace A216075.P17519556698783808278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A258851 (A173970 (n + 1)).toNat) (A031936 (n + 1))

end

end A216075.P17519556698783808278

/-! ## A216075.P1848109840931712685

`A258851(2*A173970(n+1)-A173970(n+1))`
-/

namespace A216075.P1848109840931712685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258851 (2 * A173970 (n + 1) - A173970 (n + 1)).toNat

end

end A216075.P1848109840931712685

/-!
# A216076: Number of ways in which each hand can be obtained in a game of 5-card poker, starting with the most probable category.

The programs for A216076, there is no canonical definition to state claims against.
-/

/-! ## A216076.P12744406886509688525

`A002847(10-A048379(n))`
-/

namespace A216076.P12744406886509688525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002847 (10 - A048379 n).toNat

end

end A216076.P12744406886509688525

/-! ## A216076.P10228036473041824547

`A002806(n+1)+and(A002879(n+1), A239906(n))`
-/

namespace A216076.P10228036473041824547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002806 (n + 1) + Int.land (A002879 (n + 1)) (A239906 n)

end

end A216076.P10228036473041824547

/-! ## A216076.P16222590257019912442

`A002806(A133245(n+2))`
-/

namespace A216076.P16222590257019912442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002806 (A133245 (n + 2)).toNat

end

end A216076.P16222590257019912442

/-! ## A216076.P6648229759582599022

`A002806(A273475(n+1)+1)`
-/

namespace A216076.P6648229759582599022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002806 (A273475 (n + 1) + 1).toNat

end

end A216076.P6648229759582599022

/-!
# A216077: Number of horizontal and antidiagonal neighbor colorings of the odd squares of an n X n array with new integer colors introduced in row major order.

The programs for A216077, there is no canonical definition to state claims against.
-/

/-! ## A216077.P15992856870225101302

`A216084((n+1)²+n²)`
-/

namespace A216077.P15992856870225101302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 ((n + 1) ^ 2 + n ^ 2)

end

end A216077.P15992856870225101302

/-!
# A216078: Number of horizontal and antidiagonal neighbor colorings of the odd squares of an n X 2 array with new integer colors introduced in row major order.

The programs for A216078, there is no canonical definition to state claims against.
-/

/-! ## A216078.P13682740725995338008

`A011972(floor(n²/2))`
-/

namespace A216078.P13682740725995338008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011972 ⌊(n ^ 2 : ℚ) / 2⌋.toNat

end

end A216078.P13682740725995338008

/-! ## A216078.P18151042814496465054

`A106436(∑[ceil(xor(1, 3*n)/3)+1])`
-/

namespace A216078.P18151042814496465054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.xor 1 (3 * n) : ℚ) / 3⌉ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106436 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216078.P18151042814496465054

/-! ## A216078.P2053891885895439988

`A011971(∑[2*n-a(n-1)]-2)` with `a(0)=2, a(1)=1`
-/

namespace A216078.P2053891885895439988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (2 * n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j - 2).toNat

end

end A216078.P2053891885895439988

/-! ## A216078.P13283832213416349233

`A011971(record[A151890(n)])`
-/

namespace A216078.P13283832213416349233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151890 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A216078.P13283832213416349233

/-! ## A216078.P6041913871991643265

`A011971(record[A245300(n)])`
-/

namespace A216078.P6041913871991643265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A216078.P6041913871991643265

/-! ## A216078.P1677642471771511207

`A123346(A007590(n+1))`
-/

namespace A216078.P1677642471771511207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123346 (A007590 (n + 1)).toNat

end

end A216078.P1677642471771511207

/-! ## A216078.P2758164662906789250

`A095149(A080476(n+2))`
-/

namespace A216078.P2758164662906789250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095149 (A080476 (n + 2)).toNat

end

end A216078.P2758164662906789250

/-! ## A216078.P15088698428809264085

`A182930(A087327(n+2))`
-/

namespace A216078.P15088698428809264085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182930 (A087327 (n + 2)).toNat

end

end A216078.P15088698428809264085

/-! ## A216078.P3601819856218391998

`A011971(A007590(n)+n)`
-/

namespace A216078.P3601819856218391998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A007590 n + (n : ℤ)).toNat

end

end A216078.P3601819856218391998

/-! ## A216078.P5384850214294802505

`A363453(n)+A000110(n)`
-/

namespace A216078.P5384850214294802505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363453 n + A000110 n

end

end A216078.P5384850214294802505

/-!
# A216079: Number of horizontal and antidiagonal neighbor colorings of the odd squares of an n X 3 array with new integer colors introduced in row major order.

The programs for A216079, there is no canonical definition to state claims against.
-/

/-! ## A216079.P7175120500988336742

`A188164(3*n)`
-/

namespace A216079.P7175120500988336742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188164 (3 * n)

end

end A216079.P7175120500988336742

/-! ## A216079.P7589693510805577970

`A000110(ceil(3*n/2))`
-/

namespace A216079.P7589693510805577970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000110 ⌈3 * ((n : ℚ) / 2)⌉.toNat

end

end A216079.P7589693510805577970

/-! ## A216079.P3243587886379780786

`A011971(∑[3*gcd(n, ∑[n])])`
-/

namespace A216079.P3243587886379780786
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * Nat.gcd n (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A216079.P3243587886379780786

/-! ## A216079.P2268652985238761643

`abs(A292935(floor((n+1)/2)+n))`
-/

namespace A216079.P2268652985238761643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292935 (⌊(n + 1 : ℚ) / 2⌋ + (n : ℤ)).toNat|

end

end A216079.P2268652985238761643

/-! ## A216079.P5003457088503940379

`A346426(∑[A165351(n)])`
-/

namespace A216079.P5003457088503940379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165351 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346426 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A216079.P5003457088503940379

/-! ## A216079.P9303339805443154584

`A011971(A117748(n+1))`
-/

namespace A216079.P9303339805443154584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011971 (A117748 (n + 1)).toNat

end

end A216079.P9303339805443154584

/-! ## A216079.P14055676196438270811

`A123081(A302393(n+1))`
-/

namespace A216079.P14055676196438270811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (A302393 (n + 1)).toNat

end

end A216079.P14055676196438270811

/-! ## A216079.P6518715399964154027

`A123081(A026393(n+2))`
-/

namespace A216079.P6518715399964154027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (A026393 (n + 2)).toNat

end

end A216079.P6518715399964154027

/-! ## A216079.P12509295718026312301

`A363550(A038179(n+2))`
-/

namespace A216079.P12509295718026312301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363550 (A038179 (n + 2)).toNat

end

end A216079.P12509295718026312301

/-! ## A216079.P9834193864054113397

`A123081(A213479(n)-n)`
-/

namespace A216079.P9834193864054113397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123081 (A213479 n - (n : ℤ)).toNat

end

end A216079.P9834193864054113397

/-!
# A216080: Number of horizontal and antidiagonal neighbor colorings of the odd squares of an nX4 array with new integer colors introduced in row major order.

The programs for A216080, there is no canonical definition to state claims against.
-/

/-! ## A216080.P3362921281969198701

`A216084(A141214(n+1))`
-/

namespace A216080.P3362921281969198701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (A141214 (n + 1)).toNat

end

end A216080.P3362921281969198701

/-! ## A216080.P9733754654108374325

`A216084(A155212(n)+5)`
-/

namespace A216080.P9733754654108374325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (A155212 n + 5).toNat

end

end A216080.P9733754654108374325

/-! ## A216080.P8741983891809457263

`A216084(eq[3, A193592(n)])`
-/

namespace A216080.P8741983891809457263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216080.P8741983891809457263

/-! ## A216080.P8641887653359019306

`A216084(eq[4, A209438(n)])`
-/

namespace A216080.P8641887653359019306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216080.P8641887653359019306

/-! ## A216080.P3402647604438497730

`A216084(A052905(n+1)+2)`
-/

namespace A216080.P3402647604438497730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (A052905 (n + 1) + 2).toNat

end

end A216080.P3402647604438497730

/-!
# A216081: Number of horizontal and antidiagonal neighbor colorings of the odd squares of an n X 5 array with new integer colors introduced in row major order.

The programs for A216081, there is no canonical definition to state claims against.
-/

/-! ## A216081.P9012618468955672471

`A216084(Δ[A264443(n)])`
-/

namespace A216081.P9012618468955672471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (f1 (n + 1) - f1 n).toNat

end

end A216081.P9012618468955672471

/-! ## A216081.P3347318489505994854

`A216084(eq[4, A193592(n)])`
-/

namespace A216081.P3347318489505994854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216081.P3347318489505994854

/-! ## A216081.P15153457869537875649

`A216084(Δ[A023545(n+1)])`
-/

namespace A216081.P15153457869537875649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (f1 (n + 1) - f1 n).toNat

end

end A216081.P15153457869537875649

/-! ## A216081.P1382634320832329023

`A216084(eq[5, A200370(n+1)])`
-/

namespace A216081.P1382634320832329023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216081.P1382634320832329023

/-! ## A216081.P5220218637343062659

`A216084(eq[8, A057728(n+1)])`
-/

namespace A216081.P5220218637343062659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216081.P5220218637343062659

/-!
# A216082: Number of horizontal and antidiagonal neighbor colorings of the odd squares of an nX6 array with new integer colors introduced in row major order.

The programs for A216082, there is no canonical definition to state claims against.
-/

/-! ## A216082.P8125229321073010222

`A215953(3*(n+1))`
-/

namespace A216082.P8125229321073010222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215953 (3 * (n + 1))

end

end A216082.P8125229321073010222

/-! ## A216082.P3484347410784480055

`A216084(A052905(n+3))`
-/

namespace A216082.P3484347410784480055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (A052905 (n + 3)).toNat

end

end A216082.P3484347410784480055

/-! ## A216082.P15055016947492427542

`A216084(A056119(n)+16)`
-/

namespace A216082.P15055016947492427542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (A056119 n + 16).toNat

end

end A216082.P15055016947492427542

/-! ## A216082.P16244414152901446304

`A216084(eq[5, A193592(n)])`
-/

namespace A216082.P16244414152901446304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216082.P16244414152901446304

/-! ## A216082.P3026010240316755672

`A216084(eq[6, A200370(n+1)])`
-/

namespace A216082.P3026010240316755672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216082.P3026010240316755672

/-!
# A216083: Number of horizontal and antidiagonal neighbor colorings of the odd squares of an nX7 array with new integer colors introduced in row major order.

The programs for A216083, there is no canonical definition to state claims against.
-/

/-! ## A216083.P2460912591000619725

`A216084(eq[6, A193592(n)])`
-/

namespace A216083.P2460912591000619725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216083.P2460912591000619725

/-!
# A216085: Number of horizontal and antidiagonal neighbor colorings of the odd squares of a 3Xn array with new integer colors introduced in row major order.

The programs for A216085, there is no canonical definition to state claims against.
-/

/-! ## A216085.P16397400358357288603

`A216084(∑[n+2]+4)`
-/

namespace A216085.P16397400358357288603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A216085.P16397400358357288603

/-! ## A216085.P17089368565887532177

`A216084(A167614(n+1))^ceil(sin(n)²)`
-/

namespace A216085.P17089368565887532177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216084 (A167614 (n + 1)).toNat : ℚ) ^ (⌈Real.sin (n : ℝ) ^ 2⌉ : ℤ)

end

end A216085.P17089368565887532177

/-! ## A216085.P16490027389509370571

`A216084(A167614(n+1))+A185245(n)`
-/

namespace A216085.P16490027389509370571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (A167614 (n + 1)).toNat + A185245 n

end

end A216085.P16490027389509370571

/-! ## A216085.P12491923366298336600

`A216084(A167614(n+1))^A178334(n)`
-/

namespace A216085.P12491923366298336600
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216084 (A167614 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A216085.P12491923366298336600

/-! ## A216085.P15889071609382338221

`lcm(A033999(n), A216084(A167614(n+1)))`
-/

namespace A216085.P15889071609382338221
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A216084 (A167614 (n + 1)).toNat)

end

end A216085.P15889071609382338221

/-!
# A216086: Number of horizontal and antidiagonal neighbor colorings of the odd squares of a 4Xn array with new integer colors introduced in row major order.

The programs for A216086, there is no canonical definition to state claims against.
-/

/-! ## A216086.P955792688796504170

`A216084(A141214(n)+7)`
-/

namespace A216086.P955792688796504170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (A141214 n + 7).toNat

end

end A216086.P955792688796504170

/-! ## A216086.P12811373395898067051

`A216084(A052905(n)+9)`
-/

namespace A216086.P12811373395898067051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (A052905 n + 9).toNat

end

end A216086.P12811373395898067051

/-! ## A216086.P14069677367520622769

`A216084(A055999(n)+10)`
-/

namespace A216086.P14069677367520622769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (A055999 n + 10).toNat

end

end A216086.P14069677367520622769

/-! ## A216086.P11387429995133465732

`A216084(A167614(n+2)+1)`
-/

namespace A216086.P11387429995133465732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (A167614 (n + 2) + 1).toNat

end

end A216086.P11387429995133465732

/-! ## A216086.P2507539846222272829

`A216084(eq[5, A131818(n+1)])`
-/

namespace A216086.P2507539846222272829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216086.P2507539846222272829

/-!
# A216087: Number of horizontal and antidiagonal neighbor colorings of the odd squares of a 5Xn array with new integer colors introduced in row major order.

The programs for A216087, there is no canonical definition to state claims against.
-/

/-! ## A216087.P14109162343505454629

`A216084(A155212(n)+13)`
-/

namespace A216087.P14109162343505454629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (A155212 n + 13).toNat

end

end A216087.P14109162343505454629

/-! ## A216087.P8817731924685267789

`A216084(A056000(n)+15)`
-/

namespace A216087.P8817731924685267789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (A056000 n + 15).toNat

end

end A216087.P8817731924685267789

/-! ## A216087.P17298626706380428410

`A216084(eq[7, A066657(n)])`
-/

namespace A216087.P17298626706380428410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216087.P17298626706380428410

/-! ## A216087.P14123581186983210496

`A216084(eq[6, A131818(n+1)])`
-/

namespace A216087.P14123581186983210496
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216087.P14123581186983210496

/-! ## A216087.P17249032039291748262

`record[A216084(A167614(n+1)+2)]`
-/

namespace A216087.P17249032039291748262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (A167614 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216087.P17249032039291748262

/-!
# A216088: Number of horizontal and antidiagonal neighbor colorings of the odd squares of a 6Xn array with new integer colors introduced in row major order.

The programs for A216088, there is no canonical definition to state claims against.
-/

/-! ## A216088.P12202939368584509554

`A216084(A000217(n+5)+6)`
-/

namespace A216088.P12202939368584509554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (A000217 (n + 5) + 6).toNat

end

end A216088.P12202939368584509554

/-! ## A216088.P11543996131210709498

`A216084(A046691(n+3)+10)`
-/

namespace A216088.P11543996131210709498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (A046691 (n + 3) + 10).toNat

end

end A216088.P11543996131210709498

/-! ## A216088.P5036424263854506756

`A216084(A056000(n+1)+16)`
-/

namespace A216088.P5036424263854506756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (A056000 (n + 1) + 16).toNat

end

end A216088.P5036424263854506756

/-! ## A216088.P5276821683108083590

`A216084(eq[5, A002262(n)]+1)`
-/

namespace A216088.P5276821683108083590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A216088.P5276821683108083590

/-! ## A216088.P14052794692789555061

`A216084(eq[7, A131818(n+1)])`
-/

namespace A216088.P14052794692789555061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216088.P14052794692789555061

/-!
# A216089: Number of horizontal and antidiagonal neighbor colorings of the odd squares of a 7Xn array with new integer colors introduced in row major order.

The programs for A216089, there is no canonical definition to state claims against.
-/

/-! ## A216089.P8906995987338383867

`A216084(eq[8, A131818(n+1)])`
-/

namespace A216089.P8906995987338383867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216084 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A216089.P8906995987338383867

/-!
# A216090: Numbers m such that k^(m-1) == k (mod m) for every k = 1, 2, ..., m-1.

The programs for A216090, the canonical program `A216090.P18080035191705207382` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216090 has offset 1).

The definition of A216090 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 688 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216090.P3052475663517703286

`record[gcd(2*(n+1), A002445(n))]`
-/

namespace A216090.P3052475663517703286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 * (n + 1) : ℤ) (A002445 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216090.P3052475663517703286

namespace A216090

/-- `record[gcd(2*(n+1), A002445(n))]` -/
def P3052475663517703286.Spec : Prop :=
  ∀ n, (P3052475663517703286.a n : ℤ) = A216090 (n + 1)

end A216090

/-! ## A216090.P12450568959300255728

`record[gcd(A002445(n), A103517(n))]`
-/

namespace A216090.P12450568959300255728
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002445 n) (A103517 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216090.P12450568959300255728

namespace A216090

/-- `record[gcd(A002445(n), A103517(n))]` -/
def P12450568959300255728.Spec : Prop :=
  ∀ n, (P12450568959300255728.a n : ℤ) = A216090 (n + 1)

end A216090

/-! ## A216090.P18080035191705207382

`record[gcd(n+2, A141056(n))]`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A216090

/-- `record[gcd(n+2, A141056(n))]` -/
def P18080035191705207382.Spec : Prop :=
  ∀ n, (P18080035191705207382.a n : ℤ) = A216090 (n + 1)

theorem P18080035191705207382.correct : P18080035191705207382.Spec := by
  intro n
  simp only [A216090, Nat.add_sub_cancel]

end A216090

/-! ## A216090.P1669320843953139654

`record[gcd(A014681(n+1), A176591(n))]`
-/

namespace A216090.P1669320843953139654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014681 (n + 1)) (A176591 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216090.P1669320843953139654

namespace A216090

/-- `record[gcd(A014681(n+1), A176591(n))]` -/
def P1669320843953139654.Spec : Prop :=
  ∀ n, (P1669320843953139654.a n : ℤ) = A216090 (n + 1)

end A216090

/-! ## A216090.P14022769050006134244

`record[gcd(A004277(n+2), A027642(n))]`
-/

namespace A216090.P14022769050006134244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004277 (n + 2)) (A027642 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216090.P14022769050006134244

namespace A216090

/-- `record[gcd(A004277(n+2), A027642(n))]` -/
def P14022769050006134244.Spec : Prop :=
  ∀ n, (P14022769050006134244.a n : ℤ) = A216090 (n + 1)

end A216090

/-! ## A216090.P7339991872610702404

`record[gcd((n+2)², A176289(n))]`
-/

namespace A216090.P7339991872610702404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 2) ^ 2 : ℤ) (A176289 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216090.P7339991872610702404

namespace A216090

/-- `record[gcd((n+2)², A176289(n))]` -/
def P7339991872610702404.Spec : Prop :=
  ∀ n, (P7339991872610702404.a n : ℤ) = A216090 (n + 1)

end A216090

/-! ## A216090.P3976543395613947393

`record[gcd(4*(n+1), A140814(n))]`
-/

namespace A216090.P3976543395613947393
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * (n + 1) : ℤ) (A140814 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216090.P3976543395613947393

namespace A216090

/-- `record[gcd(4*(n+1), A140814(n))]` -/
def P3976543395613947393.Spec : Prop :=
  ∀ n, (P3976543395613947393.a n : ℤ) = A216090 (n + 1)

end A216090

/-! ## A216090.P15790818704600938358

`record[gcd(A006955(n), A008574(n+1))]`
-/

namespace A216090.P15790818704600938358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A006955 n) (A008574 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216090.P15790818704600938358

namespace A216090

/-- `record[gcd(A006955(n), A008574(n+1))]` -/
def P15790818704600938358.Spec : Prop :=
  ∀ n, (P15790818704600938358.a n : ℤ) = A216090 (n + 1)

end A216090

/-! ## A216090.P14098721209164034057

`record[gcd(A164020(2*n+1), A164020(2*n))]`
-/

namespace A216090.P14098721209164034057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A164020 (2 * n + 1)) (A164020 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216090.P14098721209164034057

namespace A216090

/-- `record[gcd(A164020(2*n+1), A164020(2*n))]` -/
def P14098721209164034057.Spec : Prop :=
  ∀ n, (P14098721209164034057.a n : ℤ) = A216090 (n + 1)

end A216090

/-!
# A216091: Numbers n such that k == k^(q-1) mod q for k = 1, 2, ..., q-1, where q = n^2+1.

The programs for A216091, there is no canonical definition to state claims against.
-/

/-! ## A216091.P8690142962564900363

`∪[A002731(n+1), A244880(n)]`
-/

namespace A216091.P8690142962564900363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002731 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244880 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216091.P8690142962564900363

/-! ## A216091.P9889748436744853801

`∪[2*A027861(n+1)+1, A244880(n)]`
-/

namespace A216091.P9889748436744853801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A027861 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244880 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216091.P9889748436744853801

/-! ## A216091.P10464982047120244329

`∪[A005408(A027861(n+1)), A244880(n)]`
-/

namespace A216091.P10464982047120244329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A027861 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244880 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A216091.P10464982047120244329

/-!
# A216092: a(n) = 2^(2*5^(n-1)) mod 10^n.

The programs for A216092, there is no canonical definition to state claims against.
-/

/-! ## A216092.P14277598757601505629

`A007185(n+1)-1`
-/

namespace A216092.P14277598757601505629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007185 (n + 1) - 1

end

end A216092.P14277598757601505629

/-! ## A216092.P5138055871524002008

`xor(A033999(n)², A007185(n+1))`
-/

namespace A216092.P5138055871524002008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A033999 n ^ 2) (A007185 (n + 1))

end

end A216092.P5138055871524002008

/-! ## A216092.P893279830261576505

`∑[A011557(n)*A018247(n)]-1`
-/

namespace A216092.P893279830261576505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A018247 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A216092.P893279830261576505

/-! ## A216092.P1985695742128106481

`xor(A007318(∑[n]), A007185(n+1))`
-/

namespace A216092.P1985695742128106481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007318 (∑ j ∈ Finset.range (n + 1), f1 j)) (A007185 (n + 1))

end

end A216092.P1985695742128106481

/-! ## A216092.P17101747936752640146

`A198971(n)+A199685(n)-A016090(n+1)`
-/

namespace A216092.P17101747936752640146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198971 n + (A199685 n - A016090 (n + 1))

end

end A216092.P17101747936752640146

/-!
# A216093: a(n) = 10^n - (5^(2^n) mod 10^n).

The programs for A216093, there is no canonical definition to state claims against.
-/

/-! ## A216093.P15030168285152281554

`A016090(n+1)-1`
-/

namespace A216093.P15030168285152281554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016090 (n + 1) - 1

end

end A216093.P15030168285152281554

/-! ## A216093.P5846507450559776836

`10^(n+1)-A007185(n+1)`
-/

namespace A216093.P5846507450559776836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - A007185 (n + 1)

end

end A216093.P5846507450559776836

/-! ## A216093.P18432655895543934884

`∑[A011557(n)*A091663(n)]`
-/

namespace A216093.P18432655895543934884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A091663 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216093.P18432655895543934884

/-! ## A216093.P11743175292013693252

`∑[A011557(n)*A018248(n)]-1`
-/

namespace A216093.P11743175292013693252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 n * A018248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A216093.P11743175292013693252

/-! ## A216093.P16346223302368029009

`A002283(n+1)-A216092(n+1)`
-/

namespace A216093.P16346223302368029009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (n + 1) - A216092 (n + 1)

end

end A216093.P16346223302368029009

/-! ## A216093.P17942163555817522172

`A033999(A135659(n))+A016090(n+1)`
-/

namespace A216093.P17942163555817522172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A135659 n).toNat + A016090 (n + 1)

end

end A216093.P17942163555817522172

/-! ## A216093.P7182979935281508910

`A198971(n)+A199685(n)-A007185(n+1)`
-/

namespace A216093.P7182979935281508910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198971 n + (A199685 n - A007185 (n + 1))

end

end A216093.P7182979935281508910

/-! ## A216093.P9859195373357448529

`lcm(A000079(A214881(n+1)), A214883(n+1))-1`
-/

namespace A216093.P9859195373357448529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000079 (A214881 (n + 1)).toNat) (A214883 (n + 1)) : ℤ) - 1

end

end A216093.P9859195373357448529

/-! ## A216093.P12165486614543784174

`A224474(n+1)+A198971(n)-A224478(n+1)`
-/

namespace A216093.P12165486614543784174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224474 (n + 1) + (A198971 n - A224478 (n + 1))

end

end A216093.P12165486614543784174

/-! ## A216093.P8515454065257050124

`A224473(n+1)+A224474(n+1)-A007185(n+1)`
-/

namespace A216093.P8515454065257050124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224473 (n + 1) + (A224474 (n + 1) - A007185 (n + 1))

end

end A216093.P8515454065257050124

/-! ## A216093.P4047102071994444737

`A224475(n+1)+A224476(n+1)-A007185(n+1)`
-/

namespace A216093.P4047102071994444737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224475 (n + 1) + (A224476 (n + 1) - A007185 (n + 1))

end

end A216093.P4047102071994444737

/-!
# A216094: a(1) = 2; a(n+1) = a(n) + |A036263(n)| + 2.

The programs for A216094, there is no canonical definition to state claims against.
-/

/-! ## A216094.P10801889525840752688

`∑[abs(Δ[A075526(n)])+2]`
-/

namespace A216094.P10801889525840752688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n| + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216094.P10801889525840752688

/-! ## A216094.P5876462569821277074

`a(n-1)+abs(A036263(n))+2` with `a(0)=2`
-/

namespace A216094.P5876462569821277074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (|A036263 n| + 2)

end

end A216094.P5876462569821277074

/-! ## A216094.P10279286787907530099

`∑[abs(A036263(abs(1-n)+1))+2]`
-/

namespace A216094.P10279286787907530099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A036263 (|1 - (n : ℤ)| + 1).toNat)| + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216094.P10279286787907530099

/-! ## A216094.P3411084834311743458

`∑[A036262(A055998(n))]+2*n`
-/

namespace A216094.P3411084834311743458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (A055998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ)

end

end A216094.P3411084834311743458

/-! ## A216094.P5183809996756886758

`Δ[n²]+∑[A036262(A027379(n))]`
-/

namespace A216094.P5183809996756886758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (A027379 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A216094.P5183809996756886758

/-! ## A216094.P7433975515762204619

`A005843(n)+∑[A036262(A055998(n))]`
-/

namespace A216094.P7433975515762204619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036262 (A055998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A216094.P7433975515762204619

/-!
# A216095: a(n) = 2^n mod 10000.

The programs for A216095, the canonical program `A216095.P3929612690830080144` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216095 has offset 0).

The definition of A216095 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 132 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216095.P3929612690830080144

`A000079(n)%A078267(A115267(2*(n+2)))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A216095

/-- `A000079(n)%A078267(A115267(2*(n+2)))` -/
def P3929612690830080144.Spec : Prop :=
  ∀ n, P3929612690830080144.a n = A216095 n

theorem P3929612690830080144.correct : P3929612690830080144.Spec := by
  intro n
  simp only [A216095]

end A216095

/-!
# A216097: 3^n mod 10000.

The programs for A216097, the canonical program `A216097.P8129167302435571837` is in `Seq.B000.C029`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216097 has offset 0).

The definition of A216097 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216097.P8129167302435571837

`(3*a(n-1))%(10^(8/2))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C029`.
-/

namespace A216097

/-- `(3*a(n-1))%(10^(8/2))` -/
def P8129167302435571837.Spec : Prop :=
  ∀ n, P8129167302435571837.a n = A216097 n

theorem P8129167302435571837.correct : P8129167302435571837.Spec := by
  intro n
  simp only [A216097]

end A216097

/-!
# A216098: Primes that are equal to the floor of the geometric mean of the previous prime and the following prime.

The programs for A216098, the canonical program `A216098.P11989965352199446682` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216098 has offset 1).

The definition of A216098 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1209 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A216098.P11989965352199446682

`p?[A073273(n+1)]`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A216098

/-- `p?[A073273(n+1)]` -/
def P11989965352199446682.Spec : Prop :=
  ∀ n, P11989965352199446682.a n = A216098 (n + 1)

theorem P11989965352199446682.correct : P11989965352199446682.Spec := by
  intro n
  simp only [A216098, Nat.add_sub_cancel]

end A216098

/-! ## A216098.P12780367056032931357

`p?[floor(sqrt(A090076(n+1)))]`
-/

namespace A216098.P12780367056032931357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A090076 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216098.P12780367056032931357

namespace A216098

/-- `p?[floor(sqrt(A090076(n+1)))]` -/
def P12780367056032931357.Spec : Prop :=
  ∀ n, P12780367056032931357.a n = A216098 (n + 1)

end A216098

/-! ## A216098.P8218371121099212763

`p?[floor(sqrt(A087105(n+2)))]`
-/

namespace A216098.P8218371121099212763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A087105 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216098.P8218371121099212763

namespace A216098

/-- `p?[floor(sqrt(A087105(n+2)))]` -/
def P8218371121099212763.Spec : Prop :=
  ∀ n, P8218371121099212763.a n = A216098 (n + 1)

end A216098

/-! ## A216098.P13226583624090722157

`∩[A004139(n+1), A073273(n+1)]`
-/

namespace A216098.P13226583624090722157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216098.P13226583624090722157

namespace A216098

/-- `∩[A004139(n+1), A073273(n+1)]` -/
def P13226583624090722157.Spec : Prop :=
  ∀ n, (P13226583624090722157.a n : ℤ) = A216098 (n + 1)

end A216098

/-! ## A216098.P1076714754243043242

`∩[A045319(n+1), A073273(n+1)]`
-/

namespace A216098.P1076714754243043242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216098.P1076714754243043242

namespace A216098

/-- `∩[A045319(n+1), A073273(n+1)]` -/
def P1076714754243043242.Spec : Prop :=
  ∀ n, (P1076714754243043242.a n : ℤ) = A216098 (n + 1)

end A216098

/-! ## A216098.P17750406417406182692

`∩[A051635(n+1), A073273(n+1)]`
-/

namespace A216098.P17750406417406182692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216098.P17750406417406182692

namespace A216098

/-- `∩[A051635(n+1), A073273(n+1)]` -/
def P17750406417406182692.Spec : Prop :=
  ∀ n, (P17750406417406182692.a n : ℤ) = A216098 (n + 1)

end A216098

/-! ## A216098.P8243262027168713269

`∩[A065091(n+1), A073273(n+1)]`
-/

namespace A216098.P8243262027168713269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216098.P8243262027168713269

namespace A216098

/-- `∩[A065091(n+1), A073273(n+1)]` -/
def P8243262027168713269.Spec : Prop :=
  ∀ n, (P8243262027168713269.a n : ℤ) = A216098 (n + 1)

end A216098

/-! ## A216098.P13207457258502524396

`∩[A068828(n+1), A073273(n+1)]`
-/

namespace A216098.P13207457258502524396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216098.P13207457258502524396

namespace A216098

/-- `∩[A068828(n+1), A073273(n+1)]` -/
def P13207457258502524396.Spec : Prop :=
  ∀ n, (P13207457258502524396.a n : ℤ) = A216098 (n + 1)

end A216098

/-! ## A216098.P13169454837564088880

`∩[A073273(n+1), A106118(n+1)]`
-/

namespace A216098.P13169454837564088880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216098.P13169454837564088880

namespace A216098

/-- `∩[A073273(n+1), A106118(n+1)]` -/
def P13169454837564088880.Spec : Prop :=
  ∀ n, (P13169454837564088880.a n : ℤ) = A216098 (n + 1)

end A216098

/-! ## A216098.P17504275144788896973

`∩[A178943(n+1), A073273(n+1)]`
-/

namespace A216098.P17504275144788896973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178943 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216098.P17504275144788896973

namespace A216098

/-- `∩[A178943(n+1), A073273(n+1)]` -/
def P17504275144788896973.Spec : Prop :=
  ∀ n, (P17504275144788896973.a n : ℤ) = A216098 (n + 1)

end A216098

/-! ## A216098.P8700475103264831245

`p?[A065091(n+1)-A073274(n+1)]`
-/

namespace A216098.P8700475103264831245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A073274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216098.P8700475103264831245

namespace A216098

/-- `p?[A065091(n+1)-A073274(n+1)]` -/
def P8700475103264831245.Spec : Prop :=
  ∀ n, P8700475103264831245.a n = A216098 (n + 1)

end A216098

/-! ## A216098.P207195659807785703

`record[gcd(A073273(n+1), A073274(n+1))]`
-/

namespace A216098.P207195659807785703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A073273 (n + 1)) (A073274 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A216098.P207195659807785703

namespace A216098

/-- `record[gcd(A073273(n+1), A073274(n+1))]` -/
def P207195659807785703.Spec : Prop :=
  ∀ n, (P207195659807785703.a n : ℤ) = A216098 (n + 1)

end A216098

/-! ## A216098.P2139054436080926767

`p?[floor(sqrt(A176098(n+1)))]`
-/

namespace A216098.P2139054436080926767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A176098 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216098.P2139054436080926767

namespace A216098

/-- `p?[floor(sqrt(A176098(n+1)))]` -/
def P2139054436080926767.Spec : Prop :=
  ∀ n, P2139054436080926767.a n = A216098 (n + 1)

end A216098

/-! ## A216098.P1811731497106105162

`∩[A000040(n+1), A073273(n+1)]`
-/

namespace A216098.P1811731497106105162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216098.P1811731497106105162

namespace A216098

/-- `∩[A000040(n+1), A073273(n+1)]` -/
def P1811731497106105162.Spec : Prop :=
  ∀ n, (P1811731497106105162.a n : ℤ) = A216098 (n + 1)

end A216098

/-! ## A216098.P7656728852331074347

`∩[A006005(n+1), A073273(n+1)]`
-/

namespace A216098.P7656728852331074347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216098.P7656728852331074347

namespace A216098

/-- `∩[A006005(n+1), A073273(n+1)]` -/
def P7656728852331074347.Spec : Prop :=
  ∀ n, (P7656728852331074347.a n : ℤ) = A216098 (n + 1)

end A216098

/-! ## A216098.P1163447908544670035

`∩[A008578(n+1), A073273(n+1)]`
-/

namespace A216098.P1163447908544670035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216098.P1163447908544670035

namespace A216098

/-- `∩[A008578(n+1), A073273(n+1)]` -/
def P1163447908544670035.Spec : Prop :=
  ∀ n, (P1163447908544670035.a n : ℤ) = A216098 (n + 1)

end A216098

/-! ## A216098.P5544509263983377669

`∩[A073273(n+1), A116974(n+1)]`
-/

namespace A216098.P5544509263983377669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216098.P5544509263983377669

namespace A216098

/-- `∩[A073273(n+1), A116974(n+1)]` -/
def P5544509263983377669.Spec : Prop :=
  ∀ n, (P5544509263983377669.a n : ℤ) = A216098 (n + 1)

end A216098

/-! ## A216098.P6799288474960957013

`∩[A073273(n+1), A158611(n+1)]`
-/

namespace A216098.P6799288474960957013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A216098.P6799288474960957013

namespace A216098

/-- `∩[A073273(n+1), A158611(n+1)]` -/
def P6799288474960957013.Spec : Prop :=
  ∀ n, (P6799288474960957013.a n : ℤ) = A216098 (n + 1)

end A216098

/-! ## A216098.P11622267785738022550

`p?[A000040(n+2)-A073274(n+1)]`
-/

namespace A216098.P11622267785738022550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) - A073274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A216098.P11622267785738022550

namespace A216098

/-- `p?[A000040(n+2)-A073274(n+1)]` -/
def P11622267785738022550.Spec : Prop :=
  ∀ n, P11622267785738022550.a n = A216098 (n + 1)

end A216098

/-! ## A216098.P7006587616153419252

`filter[A073273(n+1), A010051(#)]`
-/

namespace A216098.P7006587616153419252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073273 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A216098.P7006587616153419252

namespace A216098

/-- `filter[A073273(n+1), A010051(#)]` -/
def P7006587616153419252.Spec : Prop :=
  ∀ n, P7006587616153419252.a n = A216098 (n + 1)

end A216098

/-!
# A216099: Period of powers of 3 mod 10^n.

The programs for A216099, the canonical program `A216099.P15034398000034203957` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A216099 has offset 1).

The definition of A216099 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A216099.P11437219582435509784

`10*a(n-1)` with `a(0)=4, a(1)=20, a(2)=100, a(3)=500`
-/

namespace A216099.P11437219582435509784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4, 20, 100, 500] fun n a =>
  10 * a (n - 1)

end

end A216099.P11437219582435509784

namespace A216099

/-- `10*a(n-1)` -/
def P11437219582435509784.Spec : Prop :=
  ∀ n, (P11437219582435509784.a n : ℤ) = A216099 (n + 1)

end A216099

/-! ## A216099.P15034398000034203957

`A216164(n+2)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A216099

/-- `A216164(n+2)` -/
def P15034398000034203957.Spec : Prop :=
  ∀ n, P15034398000034203957.a n = A216099 (n + 1)

theorem P15034398000034203957.correct : P15034398000034203957.Spec := by
  intro n
  simp only [A216099, Nat.add_sub_cancel]

end A216099

/-! ## A216099.P5572288144122467683

`lcm(8, 10^n)/2`
-/

namespace A216099.P5572288144122467683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 8 (10 ^ n) : ℚ) / 2

end

end A216099.P5572288144122467683

namespace A216099

/-- `lcm(8, 10^n)/2` -/
def P5572288144122467683.Spec : Prop :=
  ∀ n, P5572288144122467683.a n = (A216099 (n + 1) : ℚ)

end A216099

/-! ## A216099.P1867375192328715153

`lcm(ceil(2^(n-1)), Δ[5^n])`
-/

namespace A216099.P1867375192328715153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A216099.P1867375192328715153

namespace A216099

/-- `lcm(ceil(2^(n-1)), Δ[5^n])` -/
def P1867375192328715153.Spec : Prop :=
  ∀ n, (P1867375192328715153.a n : ℤ) = A216099 (n + 1)

end A216099

